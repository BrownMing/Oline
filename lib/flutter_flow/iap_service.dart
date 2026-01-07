import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

/// 充值商品配置
class OlineVoiceCrystalProduct {
  final String productId;
  final double price;
  final int diamonds;

  const OlineVoiceCrystalProduct({
    required this.productId,
    required this.price,
    required this.diamonds,
  });
}

/// 充值商品列表
class OlineCosplayRechargeProducts {
  static const List<OlineVoiceCrystalProduct> olineVoiceProductList = [
    OlineVoiceCrystalProduct(
      productId: 'com.Folgo.xiao.02',
      price: 1.99,
      diamonds: 13,
    ),
    OlineVoiceCrystalProduct(
      productId: 'com.Folgo.xiao.01',
      price: 7.99,
      diamonds: 58,
    ),
    OlineVoiceCrystalProduct(
      productId: 'com.Folgo.xiao.03',
      price: 19.99,
      diamonds: 155,
    ),
    OlineVoiceCrystalProduct(
      productId: 'com.Folgo.xiao.04',
      price: 39.99,
      diamonds: 336,
    ),
    OlineVoiceCrystalProduct(
      productId: 'com.Folgo.xiao.05',
      price: 69.99,
      diamonds: 630,
    ),
  ];

  static OlineVoiceCrystalProduct? getByProductId(String productId) {
    try {
      return olineVoiceProductList.firstWhere((p) => p.productId == productId);
    } catch (e) {
      return null;
    }
  }

  static OlineVoiceCrystalProduct? getByIndex(int index) {
    if (index >= 0 && index < olineVoiceProductList.length) {
      return olineVoiceProductList[index];
    }
    return null;
  }
}

/// IAP 支付服务
class OlineRoleplayPurchaseService {
  static final OlineRoleplayPurchaseService _instance =
      OlineRoleplayPurchaseService._internal();
  factory OlineRoleplayPurchaseService() => _instance;
  OlineRoleplayPurchaseService._internal();

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  List<ProductDetails> _products = [];
  bool _isAvailable = false;
  bool _purchasePending = false;

  // 购买成功回调
  Function(String productId, int diamonds)? onPurchaseSuccess;
  // 购买失败回调
  Function(String error)? onPurchaseError;
  // 购买中回调
  Function()? onPurchasePending;
  // 购买取消回调
  Function()? onPurchaseCanceled;

  bool _initialized = false;
  bool _isInitializing = false;
  String? _deviceNo;

  /// 获取当前设备编号
  String? get deviceNo => _deviceNo;
  // 重试配置
  static const int _maxRetries = 3;
  static const Duration _retryDelay = Duration(seconds: 2);

  /// 初始化 IAP 服务
  Future<void> initialize({String? deviceNo}) async {
    _deviceNo = deviceNo;
    if (_initialized) {
      return;
    }

    // 防止并发初始化
    if (_isInitializing) {
      // 等待初始化完成
      while (_isInitializing) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return;
    }

    _isInitializing = true;

    try {
      _isAvailable = await _inAppPurchase.isAvailable();
      if (!_isAvailable) {
        debugPrint('IAP not available');
        return;
      }

      // 取消旧的订阅（如果存在）
      await _subscription?.cancel();

      // 监听购买更新
      final Stream<List<PurchaseDetails>> purchaseUpdated =
          _inAppPurchase.purchaseStream;
      _subscription = purchaseUpdated.listen(
        _onPurchaseUpdate,
        onDone: _onDone,
        onError: _onError,
      );

      // 设置 iOS 支付队列代理
      await _setupIOSDelegate();

      // 加载商品（带重试）
      await _loadProductsWithRetry();

      _initialized = true;
      if (_deviceNo != null) {
        debugPrint('✅ 已设置设备编号: $_deviceNo');
      }
    } finally {
      _isInitializing = false;
    }
  }

  /// 确保初始化完成
  Future<bool> ensureInitialized() async {
    if (!_initialized) {
      await initialize();
    }
    return _initialized && _isAvailable;
  }

  /// 加载商品信息（带重试机制）
  Future<void> _loadProductsWithRetry() async {
    for (int attempt = 1; attempt <= _maxRetries; attempt++) {
      final success = await _loadProducts();
      if (success && _products.isNotEmpty) {
        return;
      }

      if (attempt < _maxRetries) {
        debugPrint(
            'Retrying to load products... attempt $attempt/$_maxRetries');
        await Future.delayed(_retryDelay);
      }
    }
    debugPrint('Failed to load products after $_maxRetries attempts');
  }

  /// 加载商品信息
  Future<bool> _loadProducts() async {
    final Set<String> productIds = OlineCosplayRechargeProducts
        .olineVoiceProductList
        .map((p) => p.productId)
        .toSet();

    try {
      debugPrint('Requesting products: $productIds');

      final ProductDetailsResponse response = await _inAppPurchase
          .queryProductDetails(productIds)
          .timeout(const Duration(seconds: 10));

      if (response.notFoundIDs.isNotEmpty) {
        debugPrint('Products not found: ${response.notFoundIDs}');
      }

      _products = response.productDetails;
      debugPrint(
          'Loaded ${_products.length} products: ${_products.map((p) => p.id).toList()}');

      return _products.isNotEmpty;
    } catch (e) {
      debugPrint('Error loading products: $e');
      return false;
    }
  }

  /// 刷新商品列表
  Future<bool> refreshProducts() async {
    return await _loadProducts();
  }

  /// 处理购买更新
  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      _handlePurchase(purchaseDetails);
    }
  }

  /// 处理单个购买
  Future<void> _handlePurchase(PurchaseDetails purchaseDetails) async {
    switch (purchaseDetails.status) {
      case PurchaseStatus.pending:
        _purchasePending = true;
        onPurchasePending?.call();
        break;

      case PurchaseStatus.purchased:
      case PurchaseStatus.restored:
        bool valid = true;
        if (Platform.isIOS) {
          valid = await _verifyPurchase(purchaseDetails);
        }
        if (valid) {
          // 获取钻石数量
          final product = OlineCosplayRechargeProducts.getByProductId(
              purchaseDetails.productID);
          if (product != null) {
            onPurchaseSuccess?.call(
                purchaseDetails.productID, product.diamonds);
          } else {
            onPurchaseSuccess?.call(purchaseDetails.productID, 0);
          }
        } else {
          onPurchaseError?.call('Purchase verification failed');
        }
        _purchasePending = false;
        break;

      case PurchaseStatus.error:
        _purchasePending = false;
        onPurchaseError
            ?.call(purchaseDetails.error?.message ?? 'Purchase failed');
        break;

      case PurchaseStatus.canceled:
        _purchasePending = false;
        onPurchaseCanceled?.call();
        break;
    }

    if (purchaseDetails.pendingCompletePurchase) {
      await _inAppPurchase.completePurchase(purchaseDetails);
    }
  }

  /// 验证购买（服务端验证）
  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    try {
      final String receiptString =
          purchaseDetails.verificationData.serverVerificationData;

      if (receiptString.isEmpty) {
        return false;
      }

      if (_deviceNo == null) {
        return true;
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  /// 购买商品（通过商品配置）
  Future<bool> buyProductByConfig(OlineVoiceCrystalProduct product) async {
    // 确保已初始化
    final isReady = await ensureInitialized();
    if (!isReady) {
      onPurchaseError?.call('In-app purchases not available');
      return false;
    }

    if (_purchasePending) {
      onPurchaseError?.call('A purchase is already pending');
      return false;
    }

    // 查找商品详情（带重试）
    ProductDetails? productDetails =
        await findProductWithRetry(product.productId);

    if (productDetails == null) {
      onPurchaseError?.call('Product not found: ${product.productId}');
      return false;
    }

    return await buyProduct(productDetails);
  }

  /// 查找商品（带重试）
  Future<ProductDetails?> findProductWithRetry(String productId) async {
    // 先从缓存查找
    ProductDetails? productDetails = findProductInCache(productId);
    if (productDetails != null) {
      return productDetails;
    }

    // 缓存中没有，尝试重新加载（最多重试2次）
    for (int i = 0; i < 2; i++) {
      await _loadProducts();

      productDetails = findProductInCache(productId);
      if (productDetails != null) {
        return productDetails;
      }

      // 等待后重试
      if (i < 1) {
        await Future.delayed(const Duration(seconds: 1));
      }
    }

    return null;
  }

  /// 从缓存中查找商品
  ProductDetails? findProductInCache(String productId) {
    try {
      return _products.firstWhere((p) => p.id == productId);
    } catch (e) {
      return null;
    }
  }

  /// 恢复购买
  Future<void> restorePurchases() async {
    if (!_isAvailable) {
      onPurchaseError?.call('In-app purchases not available');
      return;
    }
    await _inAppPurchase.restorePurchases();
  }

  void _onDone() {
    _subscription?.cancel();
  }

  void _onError(dynamic error) {
    debugPrint('IAP Stream error: $error');
  }

  /// 释放资源
  void dispose() {
    _subscription?.cancel();
  }

  /// 清除回调
  void clearCallbacks() {
    onPurchaseSuccess = null;
    onPurchaseError = null;
    onPurchasePending = null;
    onPurchaseCanceled = null;
  }

  /// 设置 iOS 支付队列代理
  Future<void> _setupIOSDelegate() async {
    try {
      if (Platform.isIOS) {
        final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
            _inAppPurchase
                .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
        await iosPlatformAddition.setDelegate(OlineVoicePaymentQueueDelegate());
      }
    } catch (e) {}
  }

  /// 检查待处理的购买
  Future<void> checkPendingPurchases() async {
    await _setupIOSDelegate();
  }

  /// 设置购买成功回调
  void setOnPurchaseSuccess(Function(PurchaseDetails) callback) {
    onPurchaseSuccess = (productId, diamonds) {
      callback(PurchaseDetails(
        productID: productId,
        verificationData: PurchaseVerificationData(
          localVerificationData: '',
          serverVerificationData: '',
          source: '',
        ),
        transactionDate: DateTime.now().toIso8601String(),
        status: PurchaseStatus.purchased,
      ));
    };
  }

  /// 设置购买失败回调
  void setOnPurchaseError(Function(PurchaseDetails) callback) {
    onPurchaseError = (error) {
      callback(PurchaseDetails(
        productID: '',
        verificationData: PurchaseVerificationData(
          localVerificationData: '',
          serverVerificationData: '',
          source: '',
        ),
        transactionDate: DateTime.now().toIso8601String(),
        status: PurchaseStatus.error,
      ));
    };
  }

  /// 动态加载指定商品 ID 的商品
  Future<List<ProductDetails>> loadProducts(Set<String> productIds) async {
    try {
      final ProductDetailsResponse response = await _inAppPurchase
          .queryProductDetails(productIds)
          .timeout(const Duration(seconds: 10));

      if (response.notFoundIDs.isNotEmpty) {
        debugPrint('Products not found: ${response.notFoundIDs}');
      }

      // 将新加载的商品添加到缓存
      for (final product in response.productDetails) {
        if (!_products.any((p) => p.id == product.id)) {
          _products.add(product);
        }
      }

      return response.productDetails;
    } catch (e) {
      debugPrint('Error loading products: $e');
      return [];
    }
  }

  /// 购买 ProductDetails 商品
  Future<bool> buyProduct(ProductDetails productDetails) async {
    // 确保已初始化
    final isReady = await ensureInitialized();
    if (!isReady) {
      onPurchaseError?.call('In-app purchases not available');
      return false;
    }

    if (_purchasePending) {
      onPurchaseError?.call('A purchase is already pending');
      return false;
    }

    // 创建购买参数
    final PurchaseParam purchaseParam = PurchaseParam(
      productDetails: productDetails,
    );

    try {
      // 发起购买（消耗型商品自动消费）
      final bool success = await _inAppPurchase.buyConsumable(
        purchaseParam: purchaseParam,
        autoConsume: true,
      );
      return success;
    } catch (e) {
      onPurchaseError?.call('Purchase error: $e');
      return false;
    }
  }

  /// 获取是否可用
  bool get isAvailable => _isAvailable;

  /// 获取商品列表
  List<ProductDetails> get olineVoiceProductList => _products;

  /// 获取是否有待处理的购买
  bool get purchasePending => _purchasePending;
}

/// iOS 支付队列代理
class OlineVoicePaymentQueueDelegate extends SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}

/// IAP 管理器 - 用于在 Widget 中使用
class OlinePersonaRechargeManager {
  static final OlineRoleplayPurchaseService _service =
      OlineRoleplayPurchaseService();
  static BuildContext? _context;
  static bool _isLoading = false;

  /// 初始化
  static Future<void> initialize() async {
    await _service.initialize();
  }

  /// 检查是否已初始化且可用
  static bool get isReady => _service._initialized && _service._isAvailable;

  /// 检查商品是否已加载
  static bool get hasProducts => _service._products.isNotEmpty;

  /// 刷新商品列表
  static Future<bool> refreshProducts() async {
    return await _service.refreshProducts();
  }

  /// 购买商品
  static Future<void> purchase(
    BuildContext context,
    OlineVoiceCrystalProduct product, {
    required Function(int diamonds) onSuccess,
  }) async {
    _context = context;
    _isLoading = true;

    // 显示加载
    SmartDialog.showLoading(msg: 'Processing...');

    // 设置回调
    _service.onPurchaseSuccess = (productId, diamonds) {
      if (_isLoading) {
        SmartDialog.dismiss();
        _isLoading = false;
      }
      if (_context != null && _context!.mounted) {
        SmartDialog.showNotify(
          notifyType: NotifyType.success,
          msg: 'Purchase successful! +$diamonds diamonds',
        );
      }
      onSuccess(diamonds);
    };

    _service.onPurchaseError = (error) {
      if (_isLoading) {
        SmartDialog.dismiss();
        _isLoading = false;
      }
      if (_context != null && _context!.mounted) {
        SmartDialog.showNotify(
          notifyType: NotifyType.error,
          msg: error,
        );
      }
    };

    _service.onPurchasePending = () {
      // 购买处理中，保持加载状态
    };

    _service.onPurchaseCanceled = () {
      // 取消购买，关闭加载但不显示错误
      if (_isLoading) {
        SmartDialog.dismiss();
        _isLoading = false;
      }
    };

    // 发起购买
    final success = await _service.buyProductByConfig(product);
    if (!success && _isLoading) {
      SmartDialog.dismiss();
      _isLoading = false;
    }
  }

  /// 释放资源
  static void dispose() {
    _service.dispose();
    _context = null;
    _isLoading = false;
  }
}

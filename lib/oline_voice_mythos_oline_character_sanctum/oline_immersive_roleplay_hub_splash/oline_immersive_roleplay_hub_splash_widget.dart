import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'oline_immersive_roleplay_hub_splash_model.dart';
export 'oline_immersive_roleplay_hub_splash_model.dart';

class OlineImmersiveRoleplayHubSplashWidget extends StatefulWidget {
  const OlineImmersiveRoleplayHubSplashWidget({super.key});

  static String routeName = 'OlineImmersiveRoleplayHub_splash';
  static String routePath = '/olineImmersiveRoleplayHubSplash';

  @override
  State<OlineImmersiveRoleplayHubSplashWidget> createState() =>
      _OlineImmersiveRoleplayHubSplashWidgetState();
}

class _OlineImmersiveRoleplayHubSplashWidgetState
    extends State<OlineImmersiveRoleplayHubSplashWidget>
    with SingleTickerProviderStateMixin {
  late OlineImmersiveRoleplayHubSplashModel _model;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineImmersiveRoleplayHubSplashModel());

    // 初始化动画控制器
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // 淡入动画
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // 缩放动画
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutBack,
      ),
    );

    // 启动动画
    _animationController.forward();

    SchedulerBinding.instance.addPostFrameCallback((_) async {
      SmartDialog.showLoading(msg: 'Loading...');

      await Future.delayed(
        Duration(
          milliseconds: 3000,
        ),
      );

      SmartDialog.dismiss();

      context.pushNamed(
        OlineCharacterFlowStartLoginWidget.routeName,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.rightToLeft,
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Image.asset(
                      'assets/images/dfhgudifghOIUD_dfihgdufigHO.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

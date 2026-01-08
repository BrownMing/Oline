import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'oline_voice_roleplay_continuum_empty_model.dart';
export 'oline_voice_roleplay_continuum_empty_model.dart';

class OlineVoiceRoleplayContinuumEmptyWidget extends StatefulWidget {
  const OlineVoiceRoleplayContinuumEmptyWidget({super.key});

  @override
  State<OlineVoiceRoleplayContinuumEmptyWidget> createState() =>
      _OlineVoiceRoleplayContinuumEmptyWidgetState();
}

class _OlineVoiceRoleplayContinuumEmptyWidgetState
    extends State<OlineVoiceRoleplayContinuumEmptyWidget>
    with SingleTickerProviderStateMixin {
  late OlineVoiceRoleplayContinuumEmptyModel _model;
  late AnimationController _animationController;
  late Animation<double> _floatAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineVoiceRoleplayContinuumEmptyModel());

    // 初始化动画控制器
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // 上下浮动动画
    _floatAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // 透明度动画
    _opacityAnimation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // 循环播放动画
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -_floatAnimation.value),
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: child,
          ),
        );
      },
      child: Container(
        width: 152.0,
        height: 168.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/gyfughudifhgiu_xcviydufgodfg.png',
            ).image,
          ),
        ),
      ),
    );
  }
}

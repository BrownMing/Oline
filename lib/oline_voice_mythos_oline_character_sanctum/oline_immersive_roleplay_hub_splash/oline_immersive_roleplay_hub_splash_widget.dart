import '/flutter_flow/flutter_flow_util.dart';
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
    extends State<OlineImmersiveRoleplayHubSplashWidget> {
  late OlineImmersiveRoleplayHubSplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineImmersiveRoleplayHubSplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 2000,
        ),
      );

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
            Image.asset(
              'assets/images/dfhgudifghOIUD_dfihgdufigHO.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'oline_avatar_voice_continuity_terms_service_model.dart';
export 'oline_avatar_voice_continuity_terms_service_model.dart';

class OlineAvatarVoiceContinuityTermsServiceWidget extends StatefulWidget {
  const OlineAvatarVoiceContinuityTermsServiceWidget({
    super.key,
    required this.olineCharacterLoreNetworkUrl,
  });

  final String? olineCharacterLoreNetworkUrl;

  static String routeName = 'OlineAvatarVoiceContinuity_terms_service';
  static String routePath = '/olineAvatarVoiceContinuityTermsService';

  @override
  State<OlineAvatarVoiceContinuityTermsServiceWidget> createState() =>
      _OlineAvatarVoiceContinuityTermsServiceWidgetState();
}

class _OlineAvatarVoiceContinuityTermsServiceWidgetState
    extends State<OlineAvatarVoiceContinuityTermsServiceWidget> {
  late OlineAvatarVoiceContinuityTermsServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => OlineAvatarVoiceContinuityTermsServiceModel());
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 50.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              width: 34.0,
                              height: 34.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/rdhgudiof_dfigdfhguiOHDFIUG.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

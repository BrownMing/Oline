import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
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
  InAppWebViewController? olineCosplayStoryNetwork;

  final GlobalKey olineRoleplayMythicDomain = GlobalKey();

  InAppWebViewSettings olinePersonaExpressionRealm = InAppWebViewSettings(
    iframeAllowFullscreen: true,
    useShouldOverrideUrlLoading: true,
    allowsInlineMediaPlayback: true,
    transparentBackground: true,
    iframeAllow: "camera; microphone",
    mediaPlaybackRequiresUserGesture: false,
    javaScriptEnabled: true,
    domStorageEnabled: true,
    mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
  );

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
                        child: InAppWebView(
                          key: olineRoleplayMythicDomain,
                          initialUrlRequest: URLRequest(
                              url:
                                  WebUri(widget.olineCharacterLoreNetworkUrl!)),
                          initialSettings: olinePersonaExpressionRealm,
                          onWebViewCreated: (controller) {
                            olineCosplayStoryNetwork = controller;
                            controller.addJavaScriptHandler(
                              handlerName: '',
                              callback: (args) {},
                            );
                          },
                          onLoadStart: (controller, url) {},
                          onLoadStop: (controller, url) async {},
                          onPermissionRequest:
                              (controller, olineCharacterFableVerse) async {
                            return PermissionResponse(
                                resources: olineCharacterFableVerse.resources,
                                action: PermissionResponseAction.GRANT);
                          },
                          onProgressChanged: (controller, chartedMosaic) {},
                          shouldOverrideUrlLoading: (controller,
                              olineVoiceRoleplayConstellation) async {
                            var olineCosplayPersonaFramework =
                                olineVoiceRoleplayConstellation.request.url!;
                            if (![
                              "http",
                              "https",
                              "file",
                              "chrome",
                              "data",
                              "javascript",
                              "about"
                            ].contains(olineCosplayPersonaFramework.scheme)) {
                              if (await canLaunchUrl(
                                  olineCosplayPersonaFramework)) {
                                await launchUrl(
                                  olineCosplayPersonaFramework,
                                );
                                return NavigationActionPolicy.CANCEL;
                              }
                            }
                            return NavigationActionPolicy.ALLOW;
                          },
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

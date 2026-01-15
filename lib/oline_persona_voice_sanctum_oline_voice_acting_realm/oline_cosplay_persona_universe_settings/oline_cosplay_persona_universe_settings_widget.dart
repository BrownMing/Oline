import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_fictional_voice_lounge_delete_account/oline_fictional_voice_lounge_delete_account_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'oline_cosplay_persona_universe_settings_model.dart';
export 'oline_cosplay_persona_universe_settings_model.dart';

class OlineCosplayPersonaUniverseSettingsWidget extends StatefulWidget {
  const OlineCosplayPersonaUniverseSettingsWidget({super.key});

  static String routeName = 'OlineCosplayPersonaUniverse_settings';
  static String routePath = '/olineCosplayPersonaUniverseSettings';

  @override
  State<OlineCosplayPersonaUniverseSettingsWidget> createState() =>
      _OlineCosplayPersonaUniverseSettingsWidgetState();
}

class _OlineCosplayPersonaUniverseSettingsWidgetState
    extends State<OlineCosplayPersonaUniverseSettingsWidget> {
  late OlineCosplayPersonaUniverseSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineCosplayPersonaUniverseSettingsModel());
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
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/uighuofDGHUOIF_dfgjdufjgidopg.png',
                  ).image,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 50.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Text(
                          'Setting',
                          style: OlineRoleplayDialogueTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontStyle:
                                      OlineRoleplayDialogueTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                                color: Colors.black,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle:
                                    OlineRoleplayDialogueTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                              ),
                        ),
                        Container(
                          width: 34.0,
                          height: 34.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 34.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                OlineAvatarVoiceContinuityTermsServiceWidget
                                    .routeName,
                                queryParameters: {
                                  'olineCharacterLoreNetworkUrl':
                                      serializeParam(
                                    OlineCosplayPersonaFramework
                                        .OlineRoleplayDomainPrivacy,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                  ),
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Privacy Policy',
                                  style: OlineRoleplayDialogueTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF270D2B),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/huiodhfuoigdg_dfigydhfugio.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                OlineAvatarVoiceContinuityTermsServiceWidget
                                    .routeName,
                                queryParameters: {
                                  'olineCharacterLoreNetworkUrl':
                                      serializeParam(
                                    OlineCosplayPersonaFramework
                                        .OlineCosplaySphereUser,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                  ),
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'User Agreement',
                                  style: OlineRoleplayDialogueTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF270D2B),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/huiodhfuoigdg_dfigydhfugio.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                OlineCharacterEchoVerseBlockedListWidget
                                    .routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                  ),
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Blocked List',
                                  style: OlineRoleplayDialogueTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF270D2B),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/huiodhfuoigdg_dfigydhfugio.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showDialog(
                          barrierColor: Color(0x99000000),
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(dialogContext).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child:
                                    OlineFictionalVoiceLoungeDeleteAccountWidget(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 351.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(
                              'assets/images/_12@3x.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 34.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          OlinePersonaConstellationLoginWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.topToBottom,
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: 351.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFF8469E), Color(0xFFE74DFF)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(-1.0, 0.34),
                            end: AlignmentDirectional(1.0, -0.34),
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Logout',
                            style: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                  ),
                                  color: OlineRoleplayDialogueTheme.of(context)
                                      .info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:
                                      OlineRoleplayDialogueTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

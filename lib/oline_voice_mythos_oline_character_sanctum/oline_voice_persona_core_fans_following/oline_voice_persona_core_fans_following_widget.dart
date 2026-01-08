import '../../oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_roleplay_continuum_empty/oline_voice_roleplay_continuum_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_voice_persona_core_fans_following_model.dart';
export 'oline_voice_persona_core_fans_following_model.dart';

class OlineVoicePersonaCoreFansFollowingWidget extends StatefulWidget {
  const OlineVoicePersonaCoreFansFollowingWidget({
    super.key,
    required this.olineCosplayVoiceContinuum,
  });

  final String? olineCosplayVoiceContinuum;

  static String routeName = 'OlineVoicePersonaCore_fans_following';
  static String routePath = '/olineVoicePersonaCoreFansFollowing';

  @override
  State<OlineVoicePersonaCoreFansFollowingWidget> createState() =>
      _OlineVoicePersonaCoreFansFollowingWidgetState();
}

class _OlineVoicePersonaCoreFansFollowingWidgetState
    extends State<OlineVoicePersonaCoreFansFollowingWidget> {
  late OlineVoicePersonaCoreFansFollowingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineVoicePersonaCoreFansFollowingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
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
                          '${widget.olineCosplayVoiceContinuum}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
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
                          EdgeInsetsDirectional.fromSTEB(12.0, 25.0, 12.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final olineImmersivePersonaRealm =
                              widget.olineCosplayVoiceContinuum == 'Fans'
                                  ? FFAppState()
                                          .olineImmersiveVoiceUsers
                                          .elementAtOrNull(FFAppState()
                                              .olinePersonaUniverseLoginToken)
                                          ?.olineRoleplayLoungeUserFans
                                          .toList() ??
                                      []
                                  : FFAppState()
                                          .olineImmersiveVoiceUsers
                                          .elementAtOrNull(FFAppState()
                                              .olinePersonaUniverseLoginToken)
                                          ?.olineRoleplayLoungeUserFollowings
                                          .toList() ??
                                      [];
                          if (olineImmersivePersonaRealm.isEmpty) {
                            return Center(
                                child:
                                    const OlineVoiceRoleplayContinuumEmptyWidget());
                          }
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: olineImmersivePersonaRealm.length,
                            separatorBuilder: (_, __) => SizedBox(height: 24.0),
                            itemBuilder:
                                (context, olineImmersivePersonaRealmIndex) {
                              final olineImmersivePersonaRealmItem =
                                  olineImmersivePersonaRealm[
                                      olineImmersivePersonaRealmIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          FFAppState()
                                              .olineImmersiveVoiceUsers
                                              .elementAtOrNull(
                                                  olineImmersivePersonaRealmItem)!
                                              .olineRoleplayLoungeUserAvator,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(olineImmersivePersonaRealmItem)?.olineRoleplayLoungeUserName}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF270D2B),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (!FFAppState()
                                          .olineImmersiveVoiceUsers
                                          .elementAtOrNull(FFAppState()
                                              .olinePersonaUniverseLoginToken)!
                                          .olineRoleplayLoungeUserFollowings
                                          .contains(
                                              olineImmersivePersonaRealmItem)) {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState()
                                                .updateOlineImmersiveVoiceUsersAtIndex(
                                              FFAppState()
                                                  .olinePersonaUniverseLoginToken,
                                              (e) => e
                                                ..updateOlineRoleplayLoungeUserFollowings(
                                                  (e) => e.add(
                                                      olineImmersivePersonaRealmItem),
                                                ),
                                            );
                                            FFAppState().update(() {});
                                          },
                                          child: Container(
                                            width: 76.0,
                                            height: 32.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/dfghuidfugioDSFG_vcbjihHDUFHGIOUDSG.png',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState()
                                                .updateOlineImmersiveVoiceUsersAtIndex(
                                              FFAppState()
                                                  .olinePersonaUniverseLoginToken,
                                              (e) => e
                                                ..updateOlineRoleplayLoungeUserFollowings(
                                                  (e) => e.remove(
                                                      olineImmersivePersonaRealmItem),
                                                ),
                                            );
                                            FFAppState().update(() {});
                                          },
                                          child: Container(
                                            width: 76.0,
                                            height: 32.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/fdhfugoidFG_cyudsifhgudioshfgu.png',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
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

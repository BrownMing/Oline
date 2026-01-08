import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_roleplay_continuum_empty/oline_voice_roleplay_continuum_empty_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_avatar_continuum_chat_messages_model.dart';
export 'oline_avatar_continuum_chat_messages_model.dart';

class OlineAvatarContinuumChatMessagesWidget extends StatefulWidget {
  const OlineAvatarContinuumChatMessagesWidget({super.key});

  static String routeName = 'OlineAvatarContinuum_chat_messages';
  static String routePath = '/olineAvatarContinuumChatMessages';

  @override
  State<OlineAvatarContinuumChatMessagesWidget> createState() =>
      _OlineAvatarContinuumChatMessagesWidgetState();
}

class _OlineAvatarContinuumChatMessagesWidgetState
    extends State<OlineAvatarContinuumChatMessagesWidget> {
  late OlineAvatarContinuumChatMessagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineAvatarContinuumChatMessagesModel());
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
            Image.asset(
              'assets/images/uighuofDGHUOIF_dfgjdufjgidopg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Message',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(53.0, 24.0, 47.0, 0.0),
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
                          context.pushNamed(
                            OlineVoicePersonaCoreFansFollowingWidget.routeName,
                            queryParameters: {
                              'olineCosplayVoiceContinuum': serializeParam(
                                'Following',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 56.0,
                              height: 56.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/ruyigfdyhguidfog_givdhfguyhdfigu.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Following',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFACA4B0),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
                            OlineVoicePersonaCoreFansFollowingWidget.routeName,
                            queryParameters: {
                              'olineCosplayVoiceContinuum': serializeParam(
                                'Fans',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 56.0,
                              height: 56.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/iuydshughdiufyG_cuhibhduifghuiodf.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Fans',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFACA4B0),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
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
              
                          FFAppState().olineSystemMsgBadgeVisible = false;
                          FFAppState().update(() {});

                          context.pushNamed(
                            OlinePersonaDrivenVoiceSpaceNotificationsWidget
                                .routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 56.0,
                              height: 56.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/byfdghgdhfgio_dfiyguhdfuigOdsfgdf.png',
                                  ).image,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  if (FFAppState()
                                          .olineCharacterLoreSphereSystemMsg
                                          .isNotEmpty &&
                                      FFAppState().olineSystemMsgBadgeVisible)
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Container(
                                        width: 20.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF84D57),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '${FFAppState().olineCharacterLoreSphereSystemMsg.length.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Notifiication',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFACA4B0),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 0.0, 0.0),
                  child: Text(
                    'Recently',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                          color: Color(0xFF270D2B),
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final olinePersonaEchoCosmos = FFAppState()
                            .olineCosplayAudioChats
                            .where((e) =>
                                (e.olineVoicePersonaRoleplayChatSendUser ==
                                    FFAppState()
                                        .olinePersonaUniverseLoginToken) &&
                                !FFAppState()
                                    .olineImmersiveVoiceUsers
                                    .elementAtOrNull(FFAppState()
                                        .olinePersonaUniverseLoginToken)!
                                    .olineRoleplayLoungeUserBlocklist
                                    .contains(e
                                        .olineVoicePersonaRoleplayChatReceiveUser))
                            .toList()
                            .sortedList(
                                keyOf: (e) =>
                                    e.olineVoicePersonaRoleplayChatLastTime!,
                                desc: true)
                            .toList();
                        if (olinePersonaEchoCosmos.isEmpty) {
                          return Center(
                            child: OlineVoiceRoleplayContinuumEmptyWidget(),
                          );
                        }

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: olinePersonaEchoCosmos.length,
                          separatorBuilder: (_, __) => SizedBox(height: 24.0),
                          itemBuilder: (context, olinePersonaEchoCosmosIndex) {
                            final olinePersonaEchoCosmosItem =
                                olinePersonaEchoCosmos[
                                    olinePersonaEchoCosmosIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  OlineRoleplayVoiceTheatreMessagesWidget
                                      .routeName,
                                  queryParameters: {
                                    'olineImmersiveVoicePersonaChat':
                                        serializeParam(
                                      olinePersonaEchoCosmosItem
                                          .olineVoicePersonaRoleplayChatId,
                                      ParamType.int,
                                    ),
                                    'olineRoleplayInteractionFieldUser':
                                        serializeParam(
                                      olinePersonaEchoCosmosItem
                                          .olineVoicePersonaRoleplayChatReceiveUser,
                                      ParamType.int,
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
                                              olinePersonaEchoCosmosItem
                                                  .olineVoicePersonaRoleplayChatReceiveUser)!
                                          .olineRoleplayLoungeUserAvator,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(olinePersonaEchoCosmosItem.olineVoicePersonaRoleplayChatReceiveUser)?.olineRoleplayLoungeUserName}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF270D2B),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            '${olinePersonaEchoCosmosItem.olineVoicePersonaRoleplayChatLastMessage}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFFACA4B0),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        dateTimeFormat(
                                            "M/d H:mm",
                                            olinePersonaEchoCosmosItem
                                                .olineVoicePersonaRoleplayChatLastTime!),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFACA4B0),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      if ((olinePersonaEchoCosmosItem
                                                  .olineVoicePersonaRoleplayChatReceiveUser ==
                                              FFAppState()
                                                  .olinePersonaUniverseLoginToken) &&
                                          (olinePersonaEchoCosmosItem
                                                  .olineVoicePersonaRoleplayChatUnread >
                                              0))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          child: Container(
                                            width: 20.0,
                                            height: 16.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF84D57),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                '${olinePersonaEchoCosmosItem.olineVoicePersonaRoleplayChatUnread.toString()}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      fontSize: 10.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ].divide(SizedBox(height: 7.0)),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
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

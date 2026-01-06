import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/oline_voice_mythos_oline_character_sanctum/oline_voice_fable_create_voiceroom/oline_voice_fable_create_voiceroom_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_roleplay_matrix_voice_rooms_model.dart';
export 'oline_roleplay_matrix_voice_rooms_model.dart';

class OlineRoleplayMatrixVoiceRoomsWidget extends StatefulWidget {
  const OlineRoleplayMatrixVoiceRoomsWidget({super.key});

  static String routeName = 'OlineRoleplayMatrix_voice_rooms';
  static String routePath = '/olineRoleplayMatrixVoiceRooms';

  @override
  State<OlineRoleplayMatrixVoiceRoomsWidget> createState() =>
      _OlineRoleplayMatrixVoiceRoomsWidgetState();
}

class _OlineRoleplayMatrixVoiceRoomsWidgetState
    extends State<OlineRoleplayMatrixVoiceRoomsWidget> {
  late OlineRoleplayMatrixVoiceRoomsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineRoleplayMatrixVoiceRoomsModel());
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
                          Text(
                            'Voice Room',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF270D2B),
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: Color(0x9A000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: OlineVoiceFableCreateVoiceroomWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          width: 104.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/gihgfdughoidUFG_dfigudhufghoI.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 22.0, 12.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final olinePersonaVoiceConstellation = FFAppState()
                            .olineVoiceRoleFieldChatRooms
                            .where((e) => !FFAppState()
                                .olineImmersiveVoiceUsers
                                .elementAtOrNull(FFAppState()
                                    .olinePersonaUniverseLoginToken)!
                                .olineRoleplayLoungeUserBlocklist
                                .contains(
                                    e.olineVoiceMaskRealmChatRoomCreateId))
                            .toList();

                        return ListView.separated(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            80.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: olinePersonaVoiceConstellation.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.0),
                          itemBuilder:
                              (context, olinePersonaVoiceConstellationIndex) {
                            final olinePersonaVoiceConstellationItem =
                                olinePersonaVoiceConstellation[
                                    olinePersonaVoiceConstellationIndex];
                            return Container(
                              width: double.infinity,
                              height: 146.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFE7D6FF),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Image.asset(
                                      'assets/images/egouhdugfuiosd_biudfghuidofhG.png',
                                      width: double.infinity,
                                      height: 95.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0.0, -2.7),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 110.0,
                                          height: 130.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.network(
                                                olinePersonaVoiceConstellationItem
                                                    .olineVoiceMaskRealmChatRoomShow,
                                              ).image,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 4.0, 0.0, 0.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (olinePersonaVoiceConstellationItem
                                                            .olineVoiceMaskRealmChatRoomHot ==
                                                        true) {
                                                      return Container(
                                                        width: 48.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: Image.asset(
                                                              'assets/images/riuuidfhguisdhoFG_cviudufhgiudsofhg.png',
                                                            ).image,
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      return ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                            sigmaX: 8.0,
                                                            sigmaY: 8.0,
                                                          ),
                                                          child: Container(
                                                            width: 49.0,
                                                            height: 20.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x40000000),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 12.0,
                                                                  height: 12.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/uyirthdfuigoid_bivydhugfihdofuigHOD.png',
                                                                      ).image,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '${olinePersonaVoiceConstellationItem.olineVoiceMaskRealmChatRoomNumber.toString()}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .roboto(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 21.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Text(
                                                  '${olinePersonaVoiceConstellationItem.olineVoiceMaskRealmChatRoomName}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF270D2B),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Builder(
                                                    builder: (context) {
                                                      final olineCharacterExpressionVerse =
                                                          olinePersonaVoiceConstellationItem
                                                              .olineVoiceMaskRealmChatRoomJoinUsers
                                                              .toList();

                                                      return Stack(
                                                        children: List.generate(
                                                            olineCharacterExpressionVerse
                                                                .length,
                                                            (olineCharacterExpressionVerseIndex) {
                                                          final olineCharacterExpressionVerseItem =
                                                              olineCharacterExpressionVerse[
                                                                  olineCharacterExpressionVerseIndex];
                                                          return Padding(
                                                            padding: EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    valueOrDefault<
                                                                        double>(
                                                                      olineCharacterExpressionVerseItem *
                                                                          20,
                                                                      0.0,
                                                                    ),
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                            child: Container(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .network(
                                                                    FFAppState()
                                                                        .olineImmersiveVoiceUsers
                                                                        .elementAtOrNull(
                                                                            olineCharacterExpressionVerseItem)!
                                                                        .olineRoleplayLoungeUserAvator,
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        OlineCosplayCollectiveChatRoomWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'olineVoiceFictionContinuumChatid':
                                                              serializeParam(
                                                            olinePersonaVoiceConstellationItem
                                                                .olineVoiceMaskRealmChatRoomId,
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 76.0,
                                                      height: 30.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.asset(
                                                            'assets/images/oorhuisdhfoiuGOSDFG_difghudifhgio.png',
                                                          ).image,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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

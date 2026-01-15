import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_role_interaction_report_black/oline_voice_role_interaction_report_black_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_cosplay_echo_network_find_pages_model.dart';
export 'oline_cosplay_echo_network_find_pages_model.dart';

class OlineCosplayEchoNetworkFindPagesWidget extends StatefulWidget {
  const OlineCosplayEchoNetworkFindPagesWidget({super.key});

  static String routeName = 'OlineCosplayEchoNetwork_find_pages';
  static String routePath = '/olineCosplayEchoNetworkFindPages';

  @override
  State<OlineCosplayEchoNetworkFindPagesWidget> createState() =>
      _OlineCosplayEchoNetworkFindPagesWidgetState();
}

class _OlineCosplayEchoNetworkFindPagesWidgetState
    extends State<OlineCosplayEchoNetworkFindPagesWidget> {
  late OlineCosplayEchoNetworkFindPagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineCosplayEchoNetworkFindPagesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<OlineImmersiveRoleplayEngine>();

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
                        'Find',
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
                              fontStyle: OlineRoleplayDialogueTheme.of(context)
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
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      OlineCosplayVoiceSessionPostImageWidget.routeName,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                        ),
                      },
                    );
                  },
                  child: Image.asset(
                    'assets/images/sfydufghoiduf_idfghdugdoygi.png',
                    width: 351.0,
                    height: 114.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final olineCharacterImmersionNetwork =
                            OlineImmersiveRoleplayEngine()
                                .olinePersonaChannelPosts
                                .where((e) => !OlineImmersiveRoleplayEngine()
                                    .olineImmersiveVoiceUsers
                                    .elementAtOrNull(
                                        OlineImmersiveRoleplayEngine()
                                            .olinePersonaUniverseLoginToken)!
                                    .olineRoleplayLoungeUserBlocklist
                                    .contains(
                                        e.olineFictionVoiceHallPostCreateId))
                                .toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                olineCharacterImmersionNetwork.length,
                                (olineCharacterImmersionNetworkIndex) {
                              final olineCharacterImmersionNetworkItem =
                                  olineCharacterImmersionNetwork[
                                      olineCharacterImmersionNetworkIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (olineCharacterImmersionNetworkItem
                                              .olineFictionVoiceHallPostCreateId !=
                                          OlineImmersiveRoleplayEngine()
                                              .olinePersonaUniverseLoginToken) {
                                        context.pushNamed(
                                          OlineRoleplayDialogueZoneOtherinfoWidget
                                              .routeName,
                                          queryParameters: {
                                            'olineCosplayPerformanceUserid':
                                                serializeParam(
                                              olineCharacterImmersionNetworkItem
                                                  .olineFictionVoiceHallPostCreateId,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        OlineImmersiveRoleplayEngine()
                                            .olineImmersiveVoiceUsers
                                            .elementAtOrNull(
                                                olineCharacterImmersionNetworkItem
                                                    .olineFictionVoiceHallPostCreateId)!
                                            .olineRoleplayLoungeUserAvator,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(olineCharacterImmersionNetworkItem.olineFictionVoiceHallPostCreateId)?.olineRoleplayLoungeUserName}',
                                            style: OlineRoleplayDialogueTheme
                                                    .of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        OlineRoleplayDialogueTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF270D2B),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      OlineRoleplayDialogueTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            dateTimeFormat(
                                                "relative",
                                                olineCharacterImmersionNetworkItem
                                                    .olineFictionVoiceHallPostCreateTime!),
                                            style:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            OlineRoleplayDialogueTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            OlineRoleplayDialogueTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFFACA4B0),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          OlineRoleplayDialogueTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          OlineRoleplayDialogueTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 14.0, 0.0, 0.0),
                                            child: Text(
                                              olineCharacterImmersionNetworkItem
                                                  .olineFictionVoiceHallPostDescribe,
                                              style: OlineRoleplayDialogueTheme
                                                      .of(context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          OlineRoleplayDialogueTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          OlineRoleplayDialogueTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF270D2B),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        OlineRoleplayDialogueTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        OlineRoleplayDialogueTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
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
                                                      OlineCharacterImmersionHallFindDetailsWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'olineFictionalPersonaDomainPost':
                                                            serializeParam(
                                                          olineCharacterImmersionNetworkItem
                                                              .olineFictionVoiceHallPostId,
                                                          ParamType.int,
                                                        ),
                                                        'olineRoleplayEchoSanctumUserid':
                                                            serializeParam(
                                                          olineCharacterImmersionNetworkItem
                                                              .olineFictionVoiceHallPostCreateId,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
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
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.asset(
                                                      olineCharacterImmersionNetworkItem
                                                          .olineFictionVoiceHallPostShow
                                                          .firstOrNull!,
                                                      width: 299.0,
                                                      height: 299.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 11.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model
                                                          .olinePersonaVoiceChronicleLikeModels
                                                          .getModel(
                                                        olineCharacterImmersionNetworkItem
                                                            .olineFictionVoiceHallPostId
                                                            .toString(),
                                                        olineCharacterImmersionNetworkIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      updateOnChange: true,
                                                      child:
                                                          OlinePersonaVoiceChronicleLikeWidget(
                                                        key: Key(
                                                          'Key4m9_${olineCharacterImmersionNetworkItem.olineFictionVoiceHallPostId.toString()}',
                                                        ),
                                                        parameter1:
                                                            olineCharacterImmersionNetworkItem
                                                                .olineFictionVoiceHallPostId,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  6.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${olineCharacterImmersionNetworkItem.olineFictionVoiceHallPostLikeUsers.length.toString()}',
                                                        style:
                                                            OlineRoleplayDialogueTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: OlineRoleplayDialogueTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFACA4B0),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: OlineRoleplayDialogueTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 24.0,
                                                        height: 24.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: Image.asset(
                                                              'assets/images/ryuihdugdfuiog_bhuidfhguiodf.png',
                                                            ).image,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${olineCharacterImmersionNetworkItem.olineFictionVoiceHallPostComments.length.toString()}',
                                                          style:
                                                              OlineRoleplayDialogueTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: OlineRoleplayDialogueTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFFACA4B0),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: OlineRoleplayDialogueTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                if (olineCharacterImmersionNetworkItem
                                                        .olineFictionVoiceHallPostCreateId !=
                                                    OlineImmersiveRoleplayEngine()
                                                        .olinePersonaUniverseLoginToken)
                                                  Flexible(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            barrierColor: Color(
                                                                0x9A000000),
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      OlineVoiceRoleInteractionReportBlackWidget(
                                                                    olineAvatarNarrativeConstellation:
                                                                        olineCharacterImmersionNetworkItem
                                                                            .olineFictionVoiceHallPostCreateId,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                        child: Container(
                                                          width: 24.0,
                                                          height: 24.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/erhsudhfouishfod_sdhfsuidfHOSIUDF.png',
                                                              ).image,
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
                                  ),
                                ],
                              );
                            }).divide(SizedBox(height: 28.0)),
                          ),
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

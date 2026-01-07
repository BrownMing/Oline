import '/backend/schema/structs/index.dart';
import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_role_interaction_report_black/oline_voice_role_interaction_report_black_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_roleplay_dialogue_zone_otherinfo_model.dart';
export 'oline_roleplay_dialogue_zone_otherinfo_model.dart';

class OlineRoleplayDialogueZoneOtherinfoWidget extends StatefulWidget {
  const OlineRoleplayDialogueZoneOtherinfoWidget({
    super.key,
    required this.olineCosplayPerformanceUserid,
  });

  final int? olineCosplayPerformanceUserid;

  static String routeName = 'OlineRoleplayDialogueZone_otherinfo';
  static String routePath = '/olineRoleplayDialogueZoneOtherinfo';

  @override
  State<OlineRoleplayDialogueZoneOtherinfoWidget> createState() =>
      _OlineRoleplayDialogueZoneOtherinfoWidgetState();
}

class _OlineRoleplayDialogueZoneOtherinfoWidgetState
    extends State<OlineRoleplayDialogueZoneOtherinfoWidget> {
  late OlineRoleplayDialogueZoneOtherinfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineRoleplayDialogueZoneOtherinfoModel());
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
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/dfhguihdfoiGHODI_dfgdhufgihdogf.png',
                  width: double.infinity,
                  height: 215.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 186.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/hduighfdofiufg_cvbdfydhfguihodfhGO.png',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.15),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            FFAppState()
                                .olineImmersiveVoiceUsers
                                .elementAtOrNull(
                                    widget.olineCosplayPerformanceUserid!)!
                                .olineRoleplayLoungeUserAvator,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (!FFAppState()
                                      .olineImmersiveVoiceUsers
                                      .elementAtOrNull(FFAppState()
                                          .olinePersonaUniverseLoginToken)!
                                      .olineRoleplayLoungeUserFollowings
                                      .contains(widget
                                          .olineCosplayPerformanceUserid)) {
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        HapticFeedback.heavyImpact();
                                        FFAppState()
                                            .updateOlineImmersiveVoiceUsersAtIndex(
                                          widget.olineCosplayPerformanceUserid!,
                                          (e) => e
                                            ..updateOlineRoleplayLoungeUserFans(
                                              (e) => e.add(FFAppState()
                                                  .olinePersonaUniverseLoginToken),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                        FFAppState()
                                            .updateOlineImmersiveVoiceUsersAtIndex(
                                          FFAppState()
                                              .olinePersonaUniverseLoginToken,
                                          (e) => e
                                            ..updateOlineRoleplayLoungeUserFollowings(
                                              (e) => e.add(widget
                                                  .olineCosplayPerformanceUserid!),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear,
                                        width: 96.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/ryuifoygydfguio_fudhfughdfoiuGHU.png',
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
                                        HapticFeedback.heavyImpact();
                                        FFAppState()
                                            .updateOlineImmersiveVoiceUsersAtIndex(
                                          widget.olineCosplayPerformanceUserid!,
                                          (e) => e
                                            ..updateOlineRoleplayLoungeUserFans(
                                              (e) => e.remove(FFAppState()
                                                  .olinePersonaUniverseLoginToken),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                        FFAppState()
                                            .updateOlineImmersiveVoiceUsersAtIndex(
                                          FFAppState()
                                              .olinePersonaUniverseLoginToken,
                                          (e) => e
                                            ..updateOlineRoleplayLoungeUserFollowings(
                                              (e) => e.remove(widget
                                                  .olineCosplayPerformanceUserid),
                                            ),
                                        );
                                        FFAppState().update(() {});
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear,
                                        width: 96.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/ergyuiodhfuigoduifg_cgvbydhfguihofg.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final currentUserId = FFAppState()
                                      .olinePersonaUniverseLoginToken;
                                  final otherUserId =
                                      widget.olineCosplayPerformanceUserid!;

                                  final existingChat = FFAppState()
                                      .olineCosplayAudioChats
                                      .where((chat) =>
                                          (chat.olineVoicePersonaRoleplayChatSendUser ==
                                                  currentUserId &&
                                              chat.olineVoicePersonaRoleplayChatReceiveUser ==
                                                  otherUserId) ||
                                          (chat.olineVoicePersonaRoleplayChatSendUser ==
                                                  otherUserId &&
                                              chat.olineVoicePersonaRoleplayChatReceiveUser ==
                                                  currentUserId))
                                      .toList();

                                  int chatId;

                                  if (existingChat.isNotEmpty) {
                                    chatId = existingChat
                                        .first.olineVoicePersonaRoleplayChatId;
                                  } else {
                                    chatId = FFAppState()
                                        .olineCosplayAudioChats
                                        .length;
                                    FFAppState().addToOlineCosplayAudioChats(
                                      OlineVoicePersonaRoleplayChatStruct(
                                        olineVoicePersonaRoleplayChatId: chatId,
                                        olineVoicePersonaRoleplayChatSendUser:
                                            currentUserId,
                                        olineVoicePersonaRoleplayChatReceiveUser:
                                            otherUserId,
                                        olineVoicePersonaRoleplayChatLastMessage:
                                            'Null',
                                        olineVoicePersonaRoleplayChatLastTime:
                                            getCurrentTimestamp,
                                        olineVoicePersonaRoleplayChatUnread: 0,
                                      ),
                                    );
                                    FFAppState().update(() {});
                                  }

                                  context.pushNamed(
                                    OlineRoleplayVoiceTheatreMessagesWidget
                                        .routeName,
                                    queryParameters: {
                                      'olineImmersiveVoicePersonaChat':
                                          serializeParam(
                                        chatId,
                                        ParamType.int,
                                      ),
                                      'olineRoleplayInteractionFieldUser':
                                          serializeParam(
                                        otherUserId,
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
                                child: Container(
                                  width: 60.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/oerhuidfoighSDG_dfiughduifhgoiDF.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(widget.olineCosplayPerformanceUserid!)?.olineRoleplayLoungeUserName}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF270D2B),
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 0.0, 0.0),
                          child: Text(
                            '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(widget.olineCosplayPerformanceUserid!)?.olineRoleplayLoungeUserDescribe}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFACA4B0),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Posts',
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 24.0, 12.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final olinePersonaActingSphere = FFAppState()
                                    .olinePersonaChannelPosts
                                    .where((e) =>
                                        widget.olineCosplayPerformanceUserid ==
                                        e.olineFictionVoiceHallPostCreateId)
                                    .toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: olinePersonaActingSphere.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 24.0),
                                  itemBuilder:
                                      (context, olinePersonaActingSphereIndex) {
                                    final olinePersonaActingSphereItem =
                                        olinePersonaActingSphere[
                                            olinePersonaActingSphereIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          OlineCharacterImmersionHallFindDetailsWidget
                                              .routeName,
                                          queryParameters: {
                                            'olineFictionalPersonaDomainPost':
                                                serializeParam(
                                              olinePersonaActingSphereItem
                                                  .olineFictionVoiceHallPostId,
                                              ParamType.int,
                                            ),
                                            'olineRoleplayEchoSanctumUserid':
                                                serializeParam(
                                              widget
                                                  .olineCosplayPerformanceUserid,
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
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  .elementAtOrNull(widget
                                                      .olineCosplayPerformanceUserid!)!
                                                  .olineRoleplayLoungeUserAvator,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(widget.olineCosplayPerformanceUserid!)?.olineRoleplayLoungeUserName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
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
                                                  Text(
                                                    dateTimeFormat(
                                                        "relative",
                                                        olinePersonaActingSphereItem
                                                            .olineFictionVoiceHallPostCreateTime!),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
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
                                                              Color(0xFFACA4B0),
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 14.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      olinePersonaActingSphereItem
                                                          .olineFictionVoiceHallPostDescribe,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF270D2B),
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          child: Image.asset(
                                                            olinePersonaActingSphereItem
                                                                .olineFictionVoiceHallPostShow
                                                                .firstOrNull!,
                                                            width: 144.0,
                                                            height: 144.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 11.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            wrapWithModel(
                                                              model: _model
                                                                  .olinePersonaVoiceChronicleLikeModels
                                                                  .getModel(
                                                                olinePersonaActingSphereItem
                                                                    .olineFictionVoiceHallPostId
                                                                    .toString(),
                                                                olinePersonaActingSphereIndex,
                                                              ),
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              updateOnChange:
                                                                  true,
                                                              child:
                                                                  OlinePersonaVoiceChronicleLikeWidget(
                                                                key: Key(
                                                                  'Keyqq4_${olinePersonaActingSphereItem.olineFictionVoiceHallPostId.toString()}',
                                                                ),
                                                                parameter1:
                                                                    olinePersonaActingSphereItem
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
                                                                '${olinePersonaActingSphereItem.olineFictionVoiceHallPostLikeUsers.length.toString()}',
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
                                                                      color: Color(
                                                                          0xFFACA4B0),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 24.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .asset(
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
                                                                  '${olinePersonaActingSphereItem.olineFictionVoiceHallPostComments.length.toString()}',
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
                                                                        color: Color(
                                                                            0xFFACA4B0),
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
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  barrierColor:
                                                                      Color(
                                                                          0x9A000000),
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            OlineVoiceRoleInteractionReportBlackWidget(
                                                                          olineAvatarNarrativeConstellation:
                                                                              widget.olineCosplayPerformanceUserid!,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {
                                                                      if (value ==
                                                                          true) {
                                                                        Future.delayed(Duration(
                                                                            milliseconds:
                                                                                1800));
                                                                        Navigator.pop(
                                                                            context);
                                                                      }
                                                                    }));
                                                              },
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
                                                                        .asset(
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
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 50.0, 12.0, 0.0),
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
                            'assets/images/gohdifdioug_difghdufhgod.png',
                          ).image,
                        ),
                      ),
                    ),
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
                              child: OlineVoiceRoleInteractionReportBlackWidget(
                                olineAvatarNarrativeConstellation:
                                    widget.olineCosplayPerformanceUserid!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {
                            if (value == true) {
                              Future.delayed(Duration(milliseconds: 1800));
                              Navigator.pop(context);
                            }
                          }));
                    },
                    child: Container(
                      width: 34.0,
                      height: 34.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/rhduifhgioudfg_dfiguhdfhgiuodfhg.png',
                          ).image,
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

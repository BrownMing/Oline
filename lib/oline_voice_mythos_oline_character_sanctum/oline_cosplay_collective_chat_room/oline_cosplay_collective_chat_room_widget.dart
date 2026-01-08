import 'package:oline/backend/schema/structs/oline_roleplay_nexus_comment_struct.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_role_interaction_report_black/oline_voice_role_interaction_report_black_widget.dart';
import '/oline_voice_mythos_oline_character_sanctum/oline_roleplay_network_gift_sent/oline_roleplay_network_gift_sent_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_cosplay_collective_chat_room_model.dart';
export 'oline_cosplay_collective_chat_room_model.dart';

class OlineCosplayCollectiveChatRoomWidget extends StatefulWidget {
  const OlineCosplayCollectiveChatRoomWidget({
    super.key,
    required this.olineVoiceFictionContinuumChatid,
  });

  final int? olineVoiceFictionContinuumChatid;

  static String routeName = 'OlineCosplayCollective_ChatRoom';
  static String routePath = '/olineCosplayCollectiveChatRoom';

  @override
  State<OlineCosplayCollectiveChatRoomWidget> createState() =>
      _OlineCosplayCollectiveChatRoomWidgetState();
}

class _OlineCosplayCollectiveChatRoomWidgetState
    extends State<OlineCosplayCollectiveChatRoomWidget> {
  late OlineCosplayCollectiveChatRoomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineCosplayCollectiveChatRoomModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
            Image.asset(
              'assets/images/tugyidfygiufgihoDG_difghduifghOIDUG.png',
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
                      EdgeInsetsDirectional.fromSTEB(12.0, 52.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 8.0,
                            sigmaY: 8.0,
                          ),
                          child: Container(
                            width: 132.0,
                            height: 34.0,
                            decoration: BoxDecoration(
                              color: Color(0x40000000),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 26.0,
                                    height: 26.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      FFAppState()
                                          .olineVoiceRoleFieldChatRooms
                                          .elementAtOrNull(widget
                                              .olineVoiceFictionContinuumChatid!)!
                                          .olineVoiceMaskRealmChatRoomShow,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${FFAppState().olineVoiceRoleFieldChatRooms.elementAtOrNull(widget.olineVoiceFictionContinuumChatid!)?.olineVoiceMaskRealmChatRoomName}'
                                            .maybeHandleOverflow(
                                                maxChars: 8,
                                                replacement: '...'),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Text(
                                        'ID: ${FFAppState().olineVoiceRoleFieldChatRooms.elementAtOrNull(widget.olineVoiceFictionContinuumChatid!)?.olineVoiceMaskRealmChatRoomCreateTime?.millisecondsSinceEpoch}',
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
                                              color: Color(0xCCFFFFFF),
                                              fontSize: 8.0,
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
                                    ].divide(SizedBox(height: 1.0)),
                                  ),
                                ),
                              ].divide(SizedBox(width: 6.0)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: Color(0x99000000),
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child:
                                          OlineVoiceRoleInteractionReportBlackWidget(
                                        olineAvatarNarrativeConstellation: FFAppState()
                                            .olineVoiceRoleFieldChatRooms
                                            .elementAtOrNull(widget
                                                .olineVoiceFictionContinuumChatid!)!
                                            .olineVoiceMaskRealmChatRoomCreateId,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {
                                    if (value == true) {
                                      Future.delayed(
                                          Duration(milliseconds: 1800));
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
                                    'assets/images/iuyerihdfuighdoF_bvyudufhguidhfuioG.png',
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
                              context.safePop();
                            },
                            child: Container(
                              width: 34.0,
                              height: 34.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/erihuidhfgouidfg_cvsdfhgudisOFHG.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 8.0,
                        sigmaY: 8.0,
                      ),
                      child: Container(
                        width: 49.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Color(0x40000000),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 12.0,
                              height: 12.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/uyirthdfuigoid_bivydhugfihdofuigHOD.png',
                                  ).image,
                                ),
                              ),
                            ),
                            Text(
                              '${FFAppState().olineVoiceRoleFieldChatRooms.elementAtOrNull(widget.olineVoiceFictionContinuumChatid!)?.olineVoiceMaskRealmChatRoomNumber.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 76.0,
                            height: 76.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/urhuidfhgoidufg_dfibgdfuighdiuofg.png',
                                ).image,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.asset(
                                      FFAppState()
                                          .olineImmersiveVoiceUsers
                                          .elementAtOrNull(FFAppState()
                                              .olineVoiceRoleFieldChatRooms
                                              .elementAtOrNull(widget
                                                  .olineVoiceFictionContinuumChatid!)!
                                              .olineVoiceMaskRealmChatRoomCreateId)!
                                          .olineRoleplayLoungeUserAvator,
                                      width: 60.0,
                                      height: 60.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(FFAppState().olineVoiceRoleFieldChatRooms.elementAtOrNull(widget.olineVoiceFictionContinuumChatid!)!.olineVoiceMaskRealmChatRoomCreateId)?.olineRoleplayLoungeUserName}',
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
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 12.0,
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
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 29.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final joinUsers = FFAppState()
                              .olineVoiceRoleFieldChatRooms
                              .elementAtOrNull(
                                  widget.olineVoiceFictionContinuumChatid!)
                              ?.olineVoiceMaskRealmChatRoomJoinUsers
                              .toList() ??
                          [];

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 39.0,
                          mainAxisSpacing: 24.0,
                          childAspectRatio: 0.55,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          final hasUser = index < joinUsers.length;
                          final userId = hasUser ? joinUsers[index] : null;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (hasUser && userId != null)
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    FFAppState()
                                        .olineImmersiveVoiceUsers
                                        .elementAtOrNull(userId)!
                                        .olineRoleplayLoungeUserAvator,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              else
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/uridghfduioghsi_sdfuyigudsif.png'))),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Text(
                                  hasUser && userId != null
                                      ? '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(userId)?.olineRoleplayLoungeUserName}'
                                      : 'Add',
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
                                        color: hasUser
                                            ? FlutterFlowTheme.of(context).info
                                            : Color(0x80FFFFFF),
                                        fontSize: 12.0,
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
                            ].divide(SizedBox(height: 6.0)),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 94.0, 0.0, 0.0),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 319.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x41000000),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        '\"Summon your character and step into the chat! Let\'s roleplay with respect and keep this world fun and welcoming for every cosplayer.\"',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.roboto(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFFFFCD25),
                              fontSize: 12.0,
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
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final olineCosplayNarrativeRealm = FFAppState()
                                .olineVoiceRoleFieldChatRooms
                                .elementAtOrNull(
                                    widget.olineVoiceFictionContinuumChatid!)
                                ?.olineVoiceMaskRealmChatRoomComments
                                .toList() ??
                            [];

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: olineCosplayNarrativeRealm.length,
                          separatorBuilder: (_, __) => SizedBox(height: 8.0),
                          itemBuilder:
                              (context, olineCosplayNarrativeRealmIndex) {
                            final olineCosplayNarrativeRealmItem =
                                olineCosplayNarrativeRealm[
                                    olineCosplayNarrativeRealmIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 8.0,
                                            sigmaY: 8.0,
                                          ),
                                          child: Container(
                                            constraints: BoxConstraints(
                                              maxWidth: 250.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0x40000000),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(olineCosplayNarrativeRealmItem.olineRoleplayNexusCommentCreateId)?.olineRoleplayLoungeUserName}: ',
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
                                                                    0x7FFFFFFF),
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
                                                    TextSpan(
                                                      text: olineCosplayNarrativeRealmItem
                                                          .olineRoleplayNexusCommentContent,
                                                      style: TextStyle(),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
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
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (olineCosplayNarrativeRealmItem
                                    .olineRoleplayNexusCommentAudio.isNotEmpty)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 8.0,
                                            sigmaY: 8.0,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x40000000),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Text(
                                                      '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(olineCosplayNarrativeRealmItem.olineRoleplayNexusCommentCreateId)?.olineRoleplayLoungeUserName}: ',
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
                                                                    0x80FFFFFF),
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
                                                  Container(
                                                    width: 46.0,
                                                    height: 15.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/uiohdsuifhgOID_hgudifhgDUIOFGU.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '${olineCosplayNarrativeRealmItem.olineRoleplayNexusCommentAudioTime}',
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                              ].divide(SizedBox(height: 8.0)),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 34.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // 切换录音/文字模式按钮
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: GestureDetector(
                          onTap: () async {
                            safeSetState(() {
                              _model.isRecordingMode = false;
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/syfhuifhgudifhogi_duyfhguohdufi.png',
                                ).image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // 文字输入或录音按钮
                      Expanded(
                        child: _model.isRecordingMode
                            ? GestureDetector(
                                onLongPressStart: (_) async {
                                  await _model.startRecording();
                                  safeSetState(() {});
                                },
                                onLongPressEnd: (_) async {
                                  final result = await _model.stopRecording();
                                  safeSetState(() {});

                                  if (result != null &&
                                      result['path'] != null &&
                                      (result['path'] as String).isNotEmpty) {
                                    final path = result['path'] as String;
                                    final duration = result['duration'] as int;
                                    final minutes = duration ~/ 60;
                                    final seconds = duration % 60;
                                    final durationStr =
                                        '$minutes:${seconds.toString().padLeft(2, '0')}';

                                    FFAppState()
                                        .updateOlineVoiceRoleFieldChatRoomsAtIndex(
                                      widget.olineVoiceFictionContinuumChatid!,
                                      (e) => e
                                        ..updateOlineVoiceMaskRealmChatRoomComments(
                                          (comments) => comments.add(
                                            OlineRoleplayNexusCommentStruct(
                                              olineRoleplayNexusCommentContent:
                                                  '[Voice Message]',
                                              olineRoleplayNexusCommentCreateId:
                                                  FFAppState()
                                                      .olinePersonaUniverseLoginToken,
                                              olineRoleplayNexusCommentDate:
                                                  getCurrentTimestamp,
                                              olineRoleplayNexusCommentAudio:
                                                  path,
                                              olineRoleplayNexusCommentAudioTime:
                                                  durationStr,
                                            ),
                                          ),
                                        ),
                                    );
                                    FFAppState().update(() {});
                                  }
                                },
                                onLongPressCancel: () async {
                                  await _model.cancelRecording();
                                  safeSetState(() {});
                                },
                                child: Container(
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFC8FF7A),
                                        Color(0xFF5EFF45)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, -1.0),
                                      end: AlignmentDirectional(0.0, 1.0),
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (_model.isRecording)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: Icon(
                                              Icons.mic,
                                              color: Colors.red,
                                              size: 20.0,
                                            ),
                                          ),
                                        Text(
                                          _model.isRecording
                                              ? 'Recording...'
                                              : 'Hold to speak',
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
                                                color: Colors.black,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 8.0,
                                    sigmaY: 8.0,
                                  ),
                                  child: Container(
                                    width: 100.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x40000000),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        enabled: true,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
                                        onFieldSubmitted: (_) async {
                                          if (_model.textController.text !=
                                              '') {
                                            FFAppState()
                                                .updateOlineVoiceRoleFieldChatRoomsAtIndex(
                                              widget!
                                                  .olineVoiceFictionContinuumChatid!,
                                              (e) => e
                                                ..updateOlineVoiceMaskRealmChatRoomComments(
                                                  (e) => e.add(
                                                      OlineRoleplayNexusCommentStruct(
                                                    olineRoleplayNexusCommentContent:
                                                        _model.textController
                                                            .text,
                                                    olineRoleplayNexusCommentCreateId:
                                                        FFAppState()
                                                            .olinePersonaUniverseLoginToken,
                                                    olineRoleplayNexusCommentDate:
                                                        getCurrentTimestamp,
                                                  )),
                                                ),
                                            );
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.textController?.clear();
                                            });
                                          }
                                        },
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          hintText: 'Chat with everyone...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0x80FFFFFF),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                        ),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context).info,
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      // 麦克风按钮（文字模式下显示）
                      if (!_model.isRecordingMode)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: GestureDetector(
                            onTap: () async {
                              safeSetState(() {
                                _model.isRecordingMode = true;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/ryudsfhghuidfOG_fdhgduiogguidhfio.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      // 礼物按钮
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final result =
                                await showModalBottomSheet<GiftSentResult>(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x99000000),
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: OlineRoleplayNetworkGiftSentWidget(),
                                  ),
                                );
                              },
                            );

                            // 如果收到礼物发送结果，显示飘屏动画
                            if (result != null) {
                              safeSetState(() {
                                _model.giftResult = result;
                                _model.showGiftAnimation = true;
                              });

                              // 3秒后隐藏飘屏
                              Future.delayed(Duration(seconds: 3), () {
                                if (mounted) {
                                  safeSetState(() {
                                    _model.showGiftAnimation = false;
                                  });
                                }
                              });
                            }
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/irthgufhgodig_dfighuydhguiodS.png',
                                ).image,
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
            // 礼物飘屏动画
            if (_model.showGiftAnimation && _model.giftResult != null)
              _buildGiftAnimation(context),
          ],
        ),
      ),
    );
  }

  // 构建礼物飘屏动画
  Widget _buildGiftAnimation(BuildContext context) {
    final result = _model.giftResult!;
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.2),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(-100 * (1 - value), 0),
              child: Opacity(
                opacity: value.clamp(0.0, 1.0),
                child: child,
              ),
            );
          },
          child: Container(
            width: 220.0,
            height: 48.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/yuierghuyidhofugiod_ioudofhgudiHGIUO.png',
                ).image,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
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
                      result.senderAvatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          result.senderName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Text(
                          'Sent',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0x80FFFFFF),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                    child: Image.asset(
                      result.giftShow,
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'X1',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFFFFC300),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w900,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

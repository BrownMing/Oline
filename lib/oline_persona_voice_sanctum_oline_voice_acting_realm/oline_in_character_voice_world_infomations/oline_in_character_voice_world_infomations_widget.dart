import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_roleplay_continuum_empty/oline_voice_roleplay_continuum_empty_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_in_character_voice_world_infomations_model.dart';
export 'oline_in_character_voice_world_infomations_model.dart';

class OlineInCharacterVoiceWorldInfomationsWidget extends StatefulWidget {
  const OlineInCharacterVoiceWorldInfomationsWidget({super.key});

  static String routeName = 'OlineInCharacterVoiceWorld_infomations';
  static String routePath = '/olineInCharacterVoiceWorldInfomations';

  @override
  State<OlineInCharacterVoiceWorldInfomationsWidget> createState() =>
      _OlineInCharacterVoiceWorldInfomationsWidgetState();
}

class _OlineInCharacterVoiceWorldInfomationsWidgetState
    extends State<OlineInCharacterVoiceWorldInfomationsWidget> {
  late OlineInCharacterVoiceWorldInfomationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => OlineInCharacterVoiceWorldInfomationsModel());
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
                            OlineImmersiveRoleplayEngine()
                                .olineImmersiveVoiceUsers
                                .elementAtOrNull(OlineImmersiveRoleplayEngine()
                                    .olinePersonaUniverseLoginToken)!
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
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    OlineCosplayPersonaStageEditProfileWidget
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
                                child: Container(
                                  width: 96.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFE74DFF),
                                        Color(0xFFF8469E)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(1.0, 0.0),
                                      end: AlignmentDirectional(-1.0, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Edit',
                                      style: OlineRoleplayDialogueTheme.of(
                                              context)
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
                                            color:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .info,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
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
                            '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(OlineImmersiveRoleplayEngine().olinePersonaUniverseLoginToken)?.olineRoleplayLoungeUserName}',
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
                                  color: Color(0xFF270D2B),
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle:
                                      OlineRoleplayDialogueTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 8.0, 0.0, 0.0),
                          child: Text(
                            '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(OlineImmersiveRoleplayEngine().olinePersonaUniverseLoginToken)?.olineRoleplayLoungeUserDescribe}',
                            style: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                  ),
                                  color: Color(0xFFACA4B0),
                                  letterSpacing: 0.0,
                                  fontWeight:
                                      OlineRoleplayDialogueTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                  fontStyle:
                                      OlineRoleplayDialogueTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              // Posts 标签
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    _model.selectedTabIndex = 0;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                  width: 94.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        _model.selectedTabIndex == 0
                                            ? 'assets/images/rhdufghoidfoughu_dfighdufgh.png'
                                            : 'assets/images/eruhdfuiogsdfg_dfhudfgiodfg.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              // Likes 标签
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    _model.selectedTabIndex = 1;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                  width: 90.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        _model.selectedTabIndex == 1
                                            ? 'assets/images/rdhfuighodg_dfoguidfhgioud.png'
                                            : 'assets/images/rguyishdfuidofg_dfuiyghdufhgio.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                              // My Room 标签
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    _model.selectedTabIndex = 2;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                  width: 120.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        _model.selectedTabIndex == 2
                                            ? 'assets/images/rgudihfgoudfg_dsfgudiofjgio.png'
                                            : 'assets/images/sdhuidfhgoidf_vuisdufhguidfgo.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 24.0, 12.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                // Posts 标签 - 我发布的帖子
                                if (_model.selectedTabIndex == 0) {
                                  final olineRoleplayDialogueRealm =
                                      OlineImmersiveRoleplayEngine()
                                          .olinePersonaChannelPosts
                                          .where((e) =>
                                              e.olineFictionVoiceHallPostCreateId ==
                                              OlineImmersiveRoleplayEngine()
                                                  .olinePersonaUniverseLoginToken)
                                          .toList();
                                  if (olineRoleplayDialogueRealm.isEmpty) {
                                    return Center(
                                      child:
                                          OlineVoiceRoleplayContinuumEmptyWidget(),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        olineRoleplayDialogueRealm.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 24.0),
                                    itemBuilder: (context,
                                        olineRoleplayDialogueRealmIndex) {
                                      final olineRoleplayDialogueRealmItem =
                                          olineRoleplayDialogueRealm[
                                              olineRoleplayDialogueRealmIndex];
                                      return _buildPostItem(
                                          context,
                                          olineRoleplayDialogueRealmItem,
                                          olineRoleplayDialogueRealmIndex);
                                    },
                                  );
                                }

                                // Likes 标签 - 我喜欢的帖子
                                if (_model.selectedTabIndex == 1) {
                                  final likedPosts = OlineImmersiveRoleplayEngine()
                                      .olinePersonaChannelPosts
                                      .where((e) => e
                                          .olineFictionVoiceHallPostLikeUsers
                                          .contains(OlineImmersiveRoleplayEngine()
                                              .olinePersonaUniverseLoginToken))
                                      .toList();
                                  if (likedPosts.isEmpty) {
                                    return Center(
                                      child:
                                          OlineVoiceRoleplayContinuumEmptyWidget(),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: likedPosts.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 24.0),
                                    itemBuilder: (context, index) {
                                      final postItem = likedPosts[index];
                                      return _buildPostItem(
                                          context, postItem, index);
                                    },
                                  );
                                }

                                // My Room 标签 - 我创建的语音聊天室
                                if (_model.selectedTabIndex == 2) {
                                  final myRooms = OlineImmersiveRoleplayEngine()
                                      .olineVoiceRoleFieldChatRooms
                                      .where((e) =>
                                          e.olineVoiceMaskRealmChatRoomCreateId ==
                                          OlineImmersiveRoleplayEngine()
                                              .olinePersonaUniverseLoginToken)
                                      .toList();
                                  if (myRooms.isEmpty) {
                                    return Center(
                                      child:
                                          OlineVoiceRoleplayContinuumEmptyWidget(),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: myRooms.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 16.0),
                                    itemBuilder: (context, index) {
                                      final roomItem = myRooms[index];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            OlineCosplayCollectiveChatRoomWidget
                                                .routeName,
                                            queryParameters: {
                                              'olineVoiceActingRealmChatRoomId':
                                                  serializeParam(
                                                roomItem
                                                    .olineVoiceMaskRealmChatRoomId,
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
                                        child: Container(
                                          width: double.infinity,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFCF7FF),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(16.0),
                                                  bottomLeft:
                                                      Radius.circular(16.0),
                                                ),
                                                child: Image.asset(
                                                  roomItem
                                                      .olineVoiceMaskRealmChatRoomShow,
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0,
                                                          12.0, 12.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        roomItem
                                                            .olineVoiceMaskRealmChatRoomName,
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
                                                                  ),
                                                                  color: Color(
                                                                      0xFF270D2B),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                      SizedBox(height: 4.0),
                                                      Text(
                                                        roomItem
                                                            .olineVoiceMaskRealmChatRoomCreateType,
                                                        style:
                                                            OlineRoleplayDialogueTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(),
                                                                  color: Color(
                                                                      0xFFACA4B0),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      SizedBox(height: 8.0),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons.people,
                                                            color: Color(
                                                                0xFFACA4B0),
                                                            size: 16.0,
                                                          ),
                                                          SizedBox(width: 4.0),
                                                          Text(
                                                            '${roomItem.olineVoiceMaskRealmChatRoomJoinUsers.length + 1}',
                                                            style: OlineRoleplayDialogueTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(),
                                                                  color: Color(
                                                                      0xFFACA4B0),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }

                                return SizedBox();
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
                      context.pushNamed(
                        OlineCosplayPersonaUniverseSettingsWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                    child: Container(
                      width: 34.0,
                      height: 34.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/dughudisfhgdufiog_dfiohudihsduiofghdis.png',
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

  Widget _buildPostItem(BuildContext context, dynamic postItem, int index) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          OlineCharacterImmersionHallFindDetailsWidget.routeName,
          queryParameters: {
            'olineFictionalPersonaDomainPost': serializeParam(
              postItem.olineFictionVoiceHallPostId,
              ParamType.int,
            ),
            'olineRoleplayEchoSanctumUserid': serializeParam(
              postItem.olineFictionVoiceHallPostCreateId,
              ParamType.int,
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              OlineImmersiveRoleplayEngine()
                  .olineImmersiveVoiceUsers
                  .elementAtOrNull(postItem.olineFictionVoiceHallPostCreateId)!
                  .olineRoleplayLoungeUserAvator,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(postItem.olineFictionVoiceHallPostCreateId)?.olineRoleplayLoungeUserName}',
                    style: OlineRoleplayDialogueTheme.of(context)
                        .bodyMedium
                        .override(
                          font: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                          ),
                          color: Color(0xFF270D2B),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    dateTimeFormat("relative",
                        postItem.olineFictionVoiceHallPostCreateTime!),
                    style: OlineRoleplayDialogueTheme.of(context)
                        .bodyMedium
                        .override(
                          font: GoogleFonts.roboto(),
                          color: Color(0xFFACA4B0),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                    child: Text(
                      postItem.olineFictionVoiceHallPostDescribe,
                      style: OlineRoleplayDialogueTheme.of(context)
                          .bodyMedium
                          .override(
                            font: GoogleFonts.roboto(),
                            color: Color(0xFF270D2B),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            postItem.olineFictionVoiceHallPostShow.isNotEmpty
                                ? postItem.olineFictionVoiceHallPostShow.first
                                : '',
                            width: 144.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.olinePersonaVoiceChronicleLikeModels
                                  .getModel(
                                postItem.olineFictionVoiceHallPostId.toString(),
                                index,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: OlinePersonaVoiceChronicleLikeWidget(
                                key: Key(
                                  'Keye7o_${postItem.olineFictionVoiceHallPostId.toString()}',
                                ),
                                parameter1:
                                    postItem.olineFictionVoiceHallPostId,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '${postItem.olineFictionVoiceHallPostLikeUsers.length.toString()}',
                                style: OlineRoleplayDialogueTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                      ),
                                      color: Color(0xFFACA4B0),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/ryuihdugdfuiog_bhuidfhguiodf.png',
                                    ).image,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '${postItem.olineFictionVoiceHallPostComments.length.toString()}',
                                  style: OlineRoleplayDialogueTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                        ),
                                        color: Color(0xFFACA4B0),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
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
  }
}

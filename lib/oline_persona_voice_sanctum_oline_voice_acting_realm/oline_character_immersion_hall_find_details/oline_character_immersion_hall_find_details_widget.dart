import '/backend/schema/structs/index.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/oline_persona_voice_sanctum_oline_voice_acting_realm/oline_voice_role_interaction_report_black/oline_voice_role_interaction_report_black_widget.dart';
import '/index.dart';
import 'dart:math' as math;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_character_immersion_hall_find_details_model.dart';
export 'oline_character_immersion_hall_find_details_model.dart';

class OlineCharacterImmersionHallFindDetailsWidget extends StatefulWidget {
  const OlineCharacterImmersionHallFindDetailsWidget({
    super.key,
    required this.olineFictionalPersonaDomainPost,
    required this.olineRoleplayEchoSanctumUserid,
  });

  final int? olineFictionalPersonaDomainPost;
  final int? olineRoleplayEchoSanctumUserid;

  static String routeName = 'OlineCharacterImmersionHall_find_details';
  static String routePath = '/olineCharacterImmersionHallFindDetails';

  @override
  State<OlineCharacterImmersionHallFindDetailsWidget> createState() =>
      _OlineCharacterImmersionHallFindDetailsWidgetState();
}

class _OlineCharacterImmersionHallFindDetailsWidgetState
    extends State<OlineCharacterImmersionHallFindDetailsWidget> {
  late OlineCharacterImmersionHallFindDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => OlineCharacterImmersionHallFindDetailsModel());

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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 8.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.olineRoleplayEchoSanctumUserid !=
                                      OlineImmersiveRoleplayEngine()
                                          .olinePersonaUniverseLoginToken) {
                                    context.pushNamed(
                                      OlineRoleplayDialogueZoneOtherinfoWidget
                                          .routeName,
                                      queryParameters: {
                                        'olineCosplayPerformanceUserid':
                                            serializeParam(
                                          widget.olineRoleplayEchoSanctumUserid,
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
                                  }
                                },
                                child: Container(
                                  width: 34.0,
                                  height: 34.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    OlineImmersiveRoleplayEngine()
                                        .olineImmersiveVoiceUsers
                                        .elementAtOrNull(widget
                                            .olineRoleplayEchoSanctumUserid!)!
                                        .olineRoleplayLoungeUserAvator,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(widget.olineRoleplayEchoSanctumUserid!)?.olineRoleplayLoungeUserName}',
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
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                  ),
                            ),
                          ],
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
                                  barrierColor: Color(0x98000000),
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
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child:
                                            OlineVoiceRoleInteractionReportBlackWidget(
                                          olineAvatarNarrativeConstellation: widget
                                              .olineRoleplayEchoSanctumUserid!,
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
                                      'assets/images/rytgudfghdiuofG_dfyugiHUDIFHGOD.png',
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
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Flex(
                          direction: Axis.vertical,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 500.0,
                              child: Builder(
                                builder: (context) {
                                  final olineCosplayNarrativeHall =
                                      OlineImmersiveRoleplayEngine()
                                              .olinePersonaChannelPosts
                                              .elementAtOrNull(widget
                                                  .olineFictionalPersonaDomainPost!)
                                              ?.olineFictionVoiceHallPostShow
                                              .toList() ??
                                          [];

                                  return Container(
                                    width: double.infinity,
                                    height: 500.0,
                                    child: Stack(
                                      children: [
                                        PageView.builder(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          olineCosplayNarrativeHall
                                                                  .length -
                                                              1))),
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              olineCosplayNarrativeHall.length,
                                          itemBuilder: (context,
                                              olineCosplayNarrativeHallIndex) {
                                            final olineCosplayNarrativeHallItem =
                                                olineCosplayNarrativeHall[
                                                    olineCosplayNarrativeHallIndex];
                                            return Container(
                                              height: 500.0,
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                children: [
                                                  Transform.rotate(
                                                    angle:
                                                        2.0 * (math.pi / 180),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  9.0,
                                                                  0.0,
                                                                  9.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFFFBABF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 6.0,
                                                                12.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      child: Image.asset(
                                                        olineCosplayNarrativeHallItem,
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller: _model
                                                      .pageViewController ??=
                                                  PageController(
                                                      initialPage: max(
                                                          0,
                                                          min(
                                                              0,
                                                              olineCosplayNarrativeHall
                                                                      .length -
                                                                  1))),
                                              count: olineCosplayNarrativeHall
                                                  .length,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model.pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                                safeSetState(() {});
                                              },
                                              effect: smooth_page_indicator
                                                  .SlideEffect(
                                                spacing: 8.0,
                                                radius: 8.0,
                                                dotWidth: 10.0,
                                                dotHeight: 10.0,
                                                dotColor:
                                                    OlineRoleplayDialogueTheme
                                                            .of(context)
                                                        .info,
                                                activeDotColor:
                                                    Color(0xFFFF1C7E),
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 24.0, 12.0, 0.0),
                              child: Text(
                                '${OlineImmersiveRoleplayEngine().olinePersonaChannelPosts.elementAtOrNull(widget.olineFictionalPersonaDomainPost!)?.olineFictionVoiceHallPostDescribe}',
                                style: OlineRoleplayDialogueTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                      color: Color(0xFF270D2B),
                                      fontSize: 16.0,
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
                                  12.0, 12.0, 0.0, 0.0),
                              child: Text(
                                '${dateTimeFormat("relative", OlineImmersiveRoleplayEngine().olinePersonaChannelPosts.elementAtOrNull(widget.olineFictionalPersonaDomainPost!)?.olineFictionVoiceHallPostCreateTime)}',
                                style: OlineRoleplayDialogueTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                      color: Color(0xFFACA4B0),
                                      fontSize: 12.0,
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
                              child: Text(
                                'Comments',
                                style: OlineRoleplayDialogueTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                      color: Color(0xFF270D2B),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle:
                                          OlineRoleplayDialogueTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final olineVoiceDrivenRoleworld =
                                      OlineImmersiveRoleplayEngine()
                                              .olinePersonaChannelPosts
                                              .elementAtOrNull(widget
                                                  .olineFictionalPersonaDomainPost!)
                                              ?.olineFictionVoiceHallPostComments
                                              .sortedList(
                                                  keyOf: (e) => e
                                                      .olineRoleplayNexusCommentDate!,
                                                  desc: false)
                                              .toList() ??
                                          [];

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: olineVoiceDrivenRoleworld.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 12.0),
                                    itemBuilder: (context,
                                        olineVoiceDrivenRoleworldIndex) {
                                      final olineVoiceDrivenRoleworldItem =
                                          olineVoiceDrivenRoleworld[
                                              olineVoiceDrivenRoleworldIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              OlineImmersiveRoleplayEngine()
                                                  .olineImmersiveVoiceUsers
                                                  .elementAtOrNull(
                                                      olineVoiceDrivenRoleworldItem
                                                          .olineRoleplayNexusCommentCreateId)!
                                                  .olineRoleplayLoungeUserAvator,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(olineVoiceDrivenRoleworldItem.olineRoleplayNexusCommentCreateId)?.olineRoleplayLoungeUserName}',
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
                                                                  0xFF270D2B),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  OlineRoleplayDialogueTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                  ),
                                                  Text(
                                                    '${olineVoiceDrivenRoleworldItem.olineRoleplayNexusCommentContent}',
                                                    style:
                                                        OlineRoleplayDialogueTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .roboto(
                                                                fontWeight: OlineRoleplayDialogueTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: OlineRoleplayDialogueTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFFACA4B0),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  OlineRoleplayDialogueTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  OlineRoleplayDialogueTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                          if (OlineImmersiveRoleplayEngine()
                                                  .olinePersonaUniverseLoginToken !=
                                              olineVoiceDrivenRoleworldItem
                                                  .olineRoleplayNexusCommentCreateId)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    barrierColor:
                                                        Color(0x9A000000),
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
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
                                                                widget
                                                                    .olineRoleplayEchoSanctumUserid!,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {
                                                        if (value == true) {
                                                          Future.delayed(
                                                              Duration(
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
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/rydhufgihdofg_dfgidhufghdoif.png',
                                                      ).image,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ].addToEnd(SizedBox(height: 60.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 16.0, 34.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFCF7FF),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: false,
                                      enabled: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: OlineRoleplayDialogueTheme
                                                .of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight:
                                                    OlineRoleplayDialogueTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    OlineRoleplayDialogueTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: 'Add comment...',
                                        hintStyle: OlineRoleplayDialogueTheme
                                                .of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight:
                                                    OlineRoleplayDialogueTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    OlineRoleplayDialogueTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFACA4B0),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
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
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                      ),
                                      style: OlineRoleplayDialogueTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.roboto(
                                              fontWeight:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  OlineRoleplayDialogueTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      cursorColor: Colors.black,
                                      enableInteractiveSelection: true,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.textController.text != '') {
                                      OlineImmersiveRoleplayEngine()
                                          .updateOlinePersonaChannelPostsAtIndex(
                                        widget.olineFictionalPersonaDomainPost!,
                                        (e) => e
                                          ..updateOlineFictionVoiceHallPostComments(
                                            (e) => e.add(
                                                OlineRoleplayNexusCommentStruct(
                                              olineRoleplayNexusCommentContent:
                                                  _model.textController.text,
                                              olineRoleplayNexusCommentDate:
                                                  getCurrentTimestamp,
                                              olineRoleplayNexusCommentCreateId:
                                                  OlineImmersiveRoleplayEngine()
                                                      .olinePersonaUniverseLoginToken,
                                            )),
                                          ),
                                      );
                                      OlineImmersiveRoleplayEngine()
                                          .update(() {});
                                      safeSetState(() {
                                        _model.textController?.clear();
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
                                          'assets/images/rghufdihogs_dfsguyifhDGUIOD.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              if (OlineImmersiveRoleplayEngine()
                                      .olinePersonaChannelPosts
                                      .elementAtOrNull(widget
                                          .olineFictionalPersonaDomainPost!)
                                      ?.olineFictionVoiceHallPostLikeUsers
                                      .contains(OlineImmersiveRoleplayEngine()
                                          .olinePersonaUniverseLoginToken) ??
                                  false) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    HapticFeedback.heavyImpact();
                                    OlineImmersiveRoleplayEngine()
                                        .updateOlinePersonaChannelPostsAtIndex(
                                      widget.olineFictionalPersonaDomainPost!,
                                      (e) => e
                                        ..updateOlineFictionVoiceHallPostLikeUsers(
                                          (e) => e.remove(
                                              OlineImmersiveRoleplayEngine()
                                                  .olinePersonaUniverseLoginToken),
                                        ),
                                    );
                                    OlineImmersiveRoleplayEngine()
                                        .update(() {});
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/rudhfigjdifogp_dfgdiufghidofjgpo.png',
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
                                    OlineImmersiveRoleplayEngine()
                                        .updateOlinePersonaChannelPostsAtIndex(
                                      widget.olineFictionalPersonaDomainPost!,
                                      (e) => e
                                        ..updateOlineFictionVoiceHallPostLikeUsers(
                                          (e) => e.add(
                                              OlineImmersiveRoleplayEngine()
                                                  .olinePersonaUniverseLoginToken),
                                        ),
                                    );
                                    OlineImmersiveRoleplayEngine()
                                        .update(() {});
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/origudifogpdgd_cviuduhgfuodhgfoui.png',
                                        ).image,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

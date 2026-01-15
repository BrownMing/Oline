import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_avatar_roleplay_domain_chat_video_model.dart';
export 'oline_avatar_roleplay_domain_chat_video_model.dart';

class OlineAvatarRoleplayDomainChatVideoWidget extends StatefulWidget {
  const OlineAvatarRoleplayDomainChatVideoWidget({
    super.key,
    required this.olineCharacterRoleplayVerseID,
  });

  final int? olineCharacterRoleplayVerseID;

  static String routeName = 'OlineAvatarRoleplayDomain_chat_video';
  static String routePath = '/olineAvatarRoleplayDomainChatVideo';

  @override
  State<OlineAvatarRoleplayDomainChatVideoWidget> createState() =>
      _OlineAvatarRoleplayDomainChatVideoWidgetState();
}

class _OlineAvatarRoleplayDomainChatVideoWidgetState
    extends State<OlineAvatarRoleplayDomainChatVideoWidget> {
  late OlineAvatarRoleplayDomainChatVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineAvatarRoleplayDomainChatVideoModel());
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
              OlineImmersiveRoleplayEngine()
                  .olineImmersiveVoiceUsers
                  .elementAtOrNull(widget.olineCharacterRoleplayVerseID!)!
                  .olineRoleplayLoungeUserAvator,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x9A000000),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 106.0,
                    height: 106.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/dfhgiudhfgoid_dfighdsufihgods.png',
                        ).image,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 66.0,
                        height: 66.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          OlineImmersiveRoleplayEngine()
                              .olineImmersiveVoiceUsers
                              .elementAtOrNull(
                                  widget.olineCharacterRoleplayVerseID!)!
                              .olineRoleplayLoungeUserAvator,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      '${OlineImmersiveRoleplayEngine().olineImmersiveVoiceUsers.elementAtOrNull(widget.olineCharacterRoleplayVerseID!)?.olineRoleplayLoungeUserName}',
                      style: OlineRoleplayDialogueTheme.of(context)
                          .bodyMedium
                          .override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontStyle: OlineRoleplayDialogueTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: OlineRoleplayDialogueTheme.of(context).info,
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'Calling...',
                      style: OlineRoleplayDialogueTheme.of(context)
                          .bodyMedium
                          .override(
                            font: GoogleFonts.roboto(
                              fontWeight: OlineRoleplayDialogueTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: OlineRoleplayDialogueTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0x7FFFFFFF),
                            letterSpacing: 0.0,
                            fontWeight: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 48.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Container(
                        width: 56.0,
                        height: 56.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/rtrujiogjiohpfg_hudfighsduifoGHDUIGFHDUIFGHDUIFHUIhudhf.png',
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
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_character_echo_verse_blocked_list_model.dart';
export 'oline_character_echo_verse_blocked_list_model.dart';

class OlineCharacterEchoVerseBlockedListWidget extends StatefulWidget {
  const OlineCharacterEchoVerseBlockedListWidget({super.key});

  static String routeName = 'OlineCharacterEchoVerse_BlockedList';
  static String routePath = '/olineCharacterEchoVerseBlockedList';

  @override
  State<OlineCharacterEchoVerseBlockedListWidget> createState() =>
      _OlineCharacterEchoVerseBlockedListWidgetState();
}

class _OlineCharacterEchoVerseBlockedListWidgetState
    extends State<OlineCharacterEchoVerseBlockedListWidget> {
  late OlineCharacterEchoVerseBlockedListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineCharacterEchoVerseBlockedListModel());
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
                        'Blacklist',
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
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 25.0, 12.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final olineAvatarVoiceMythos = FFAppState()
                                .olineImmersiveVoiceUsers
                                .elementAtOrNull(
                                    FFAppState().olinePersonaUniverseLoginToken)
                                ?.olineRoleplayLoungeUserBlocklist
                                .toList() ??
                            [];

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: olineAvatarVoiceMythos.length,
                          separatorBuilder: (_, __) => SizedBox(height: 24.0),
                          itemBuilder: (context, olineAvatarVoiceMythosIndex) {
                            final olineAvatarVoiceMythosItem =
                                olineAvatarVoiceMythos[
                                    olineAvatarVoiceMythosIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    FFAppState()
                                        .olineImmersiveVoiceUsers
                                        .elementAtOrNull(
                                            olineAvatarVoiceMythosItem)!
                                        .olineRoleplayLoungeUserAvator,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(olineAvatarVoiceMythosItem)?.olineRoleplayLoungeUserName}',
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
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: InkWell(
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
                                            ..updateOlineRoleplayLoungeUserBlocklist(
                                              (e) => e.remove(
                                                  olineAvatarVoiceMythosItem),
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
                                              'assets/images/dudfhgiodg_idhfughdofuigdg.png',
                                            ).image,
                                          ),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

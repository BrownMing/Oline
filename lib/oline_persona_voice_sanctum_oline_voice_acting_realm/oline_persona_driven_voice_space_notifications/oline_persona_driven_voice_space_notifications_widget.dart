import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_persona_driven_voice_space_notifications_model.dart';
export 'oline_persona_driven_voice_space_notifications_model.dart';

class OlinePersonaDrivenVoiceSpaceNotificationsWidget extends StatefulWidget {
  const OlinePersonaDrivenVoiceSpaceNotificationsWidget({super.key});

  static String routeName = 'OlinePersonaDrivenVoiceSpace_notifications';
  static String routePath = '/olinePersonaDrivenVoiceSpaceNotifications';

  @override
  State<OlinePersonaDrivenVoiceSpaceNotificationsWidget> createState() =>
      _OlinePersonaDrivenVoiceSpaceNotificationsWidgetState();
}

class _OlinePersonaDrivenVoiceSpaceNotificationsWidgetState
    extends State<OlinePersonaDrivenVoiceSpaceNotificationsWidget> {
  late OlinePersonaDrivenVoiceSpaceNotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => OlinePersonaDrivenVoiceSpaceNotificationsModel());
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
        backgroundColor: Color(0xFFFCF7FF),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: OlineRoleplayDialogueTheme.of(context).info,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 50.0, 12.0, 0.0),
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
                              'Notifiication',
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
                            Container(
                              width: 34.0,
                              height: 34.0,
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      final olineVoicePersonaCosmos =
                          OlineImmersiveRoleplayEngine()
                              .olineCharacterLoreSphereSystemMsg
                              .toList();

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: olineVoicePersonaCosmos.length,
                        itemBuilder: (context, olineVoicePersonaCosmosIndex) {
                          final olineVoicePersonaCosmosItem =
                              olineVoicePersonaCosmos[
                                  olineVoicePersonaCosmosIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 22.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 49.0,
                                  height: 49.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/eruiydfohguidhofG_dfghdfuighODUFG.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 267.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: OlineRoleplayDialogueTheme.of(
                                                  context)
                                              .info,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(2.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Text(
                                            olineVoicePersonaCosmosItem,
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                              "Hm", getCurrentTimestamp),
                                          style: OlineRoleplayDialogueTheme.of(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

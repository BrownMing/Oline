import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'oline_roleplay_voice_mythos_report_details_model.dart';
export 'oline_roleplay_voice_mythos_report_details_model.dart';

class OlineRoleplayVoiceMythosReportDetailsWidget extends StatefulWidget {
  const OlineRoleplayVoiceMythosReportDetailsWidget({super.key});

  @override
  State<OlineRoleplayVoiceMythosReportDetailsWidget> createState() =>
      _OlineRoleplayVoiceMythosReportDetailsWidgetState();
}

class _OlineRoleplayVoiceMythosReportDetailsWidgetState
    extends State<OlineRoleplayVoiceMythosReportDetailsWidget> {
  late OlineRoleplayVoiceMythosReportDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => OlineRoleplayVoiceMythosReportDetailsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pop(context);
            },
            child: Container(
              width: 34.0,
              height: 34.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/iurhuiydshfguiod_bvgydfhguiodSFHG.png',
                  ).image,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 544.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/erhuidhfgouiHDFIUG_xgvhauhouiehusdiofsHG.png',
                ).image,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 34.0, 12.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Report',
                      style: OlineRoleplayDialogueTheme.of(context)
                          .bodyMedium
                          .override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontStyle: OlineRoleplayDialogueTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF270D2B),
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: OlineRoleplayDialogueTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 174.0, 0.0),
                      child: Text(
                        'Please select the reason for reporting this user:',
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
                              color: Color(0xFFACA4B0),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: OlineRoleplayDialogueTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final olineCharacterSpeechMythos =
                              _model.olineVoiceRoleplayExchange.toList();

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                List.generate(olineCharacterSpeechMythos.length,
                                    (olineCharacterSpeechMythosIndex) {
                              final olineCharacterSpeechMythosItem =
                                  olineCharacterSpeechMythos[
                                      olineCharacterSpeechMythosIndex];
                              final isSelected = _model.selectedReasonIndex ==
                                  olineCharacterSpeechMythosIndex;
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    _model.selectedReasonIndex =
                                        olineCharacterSpeechMythosIndex;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        isSelected ? null : Color(0xFFFCF7FF),
                                    gradient: isSelected
                                        ? LinearGradient(
                                            colors: [
                                              Color(0xFFF8469E),
                                              Color(0xFFE74DFF)
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(-1.0, 0.0),
                                            end: AlignmentDirectional(1.0, 0.0),
                                          )
                                        : null,
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 8.0, 12.0, 8.0),
                                    child: Text(
                                      '${olineCharacterSpeechMythosItem}',
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
                                            color: isSelected
                                                ? Colors.white
                                                : Color(0xFFACA4B0),
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
                                    ),
                                  ),
                                ),
                              );
                            }).divide(SizedBox(height: 12.0)),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 110.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFCF7FF),
                          borderRadius: BorderRadius.circular(16.0),
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
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: OlineRoleplayDialogueTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight:
                                          OlineRoleplayDialogueTheme.of(context)
                                              .labelMedium
                                              .fontWeight,
                                      fontStyle:
                                          OlineRoleplayDialogueTheme.of(context)
                                              .labelMedium
                                              .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                  ),
                              hintText: 'Enter your reason here...',
                              hintStyle: OlineRoleplayDialogueTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight:
                                          OlineRoleplayDialogueTheme.of(context)
                                              .labelMedium
                                              .fontWeight,
                                      fontStyle:
                                          OlineRoleplayDialogueTheme.of(context)
                                              .labelMedium
                                              .fontStyle,
                                    ),
                                    color: Color(0xFFACA4B0),
                                    letterSpacing: 0.0,
                                    fontWeight:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
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
                                  color: Colors.black,
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
                            maxLines: 4,
                            cursorColor: Colors.black,
                            enableInteractiveSelection: true,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                          SmartDialog.showNotify(
                              msg: 'Report Successfull！',
                              notifyType: NotifyType.success);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 56.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFF8469E), Color(0xFFE74DFF)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(-1.0, 0.34),
                              end: AlignmentDirectional(1.0, -0.34),
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Submit Report',
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
                                    color:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .info,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle:
                                        OlineRoleplayDialogueTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                  ),
                            ),
                          ),
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
    );
  }
}

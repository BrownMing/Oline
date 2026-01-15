import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../backend/schema/structs/oline_roleplay_lounge_user_struct.dart';
import '../oline_roleplay_system_home_page/oline_roleplay_system_home_page_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_theme.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'oline_cosplay_voice_realm_signup_model.dart';
export 'oline_cosplay_voice_realm_signup_model.dart';

class OlineCosplayVoiceRealmSignupWidget extends StatefulWidget {
  const OlineCosplayVoiceRealmSignupWidget({super.key});

  static String routeName = 'OlineCosplayVoiceRealm_signup';
  static String routePath = '/olineCosplayVoiceRealmSignup';

  @override
  State<OlineCosplayVoiceRealmSignupWidget> createState() =>
      _OlineCosplayVoiceRealmSignupWidgetState();
}

class _OlineCosplayVoiceRealmSignupWidgetState
    extends State<OlineCosplayVoiceRealmSignupWidget> {
  late OlineCosplayVoiceRealmSignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineCosplayVoiceRealmSignupModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: OlineRoleplayDialogueTheme.of(context).info,
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
                        'Sign up',
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
                              fontSize: 18.0,
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
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 84.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email:',
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
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle:
                                            OlineRoleplayDialogueTheme.of(
                                                    context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFCF7FF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: false,
                                        enabled: true,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          hintText: 'Enter email address',
                                          hintStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
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
                                              color: Color(0xFF270D2B),
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
                                        cursorColor: Color(0xFF270D2B),
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Password:',
                                      style: OlineRoleplayDialogueTheme.of(
                                              context)
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
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFCF7FF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        enabled: true,
                                        textInputAction: TextInputAction.done,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          hintText: 'Enter password',
                                          hintStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
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
                                              color: Color(0xFF270D2B),
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
                                        cursorColor: Color(0xFF270D2B),
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Password:',
                                      style: OlineRoleplayDialogueTheme.of(
                                              context)
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
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                OlineRoleplayDialogueTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFCF7FF),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        autofocus: false,
                                        enabled: true,
                                        textInputAction: TextInputAction.done,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          hintText:
                                              'Please enter the password again',
                                          hintStyle:
                                              OlineRoleplayDialogueTheme.of(
                                                      context)
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
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
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
                                              color: Color(0xFF270D2B),
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
                                        cursorColor: Color(0xFF270D2B),
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 153.0, 0.0, 0.0),
                            child: GestureDetector(
                              onTap: () async {
                                // 获取输入的邮箱和密码
                                final email =
                                    _model.textController1.text.trim();
                                final password =
                                    _model.textController2.text.trim();
                                final confirmPassword =
                                    _model.textController3.text.trim();

                                // 验证邮箱是否输入
                                if (email.isEmpty) {
                                  SmartDialog.showNotify(
                                      msg: 'Please enter your email address!',
                                      notifyType: NotifyType.warning,
                                      alignment: Alignment(0, 0));

                                  return;
                                }

                                // 验证密码是否输入
                                if (password.isEmpty) {
                                  SmartDialog.showNotify(
                                      msg: 'Please enter your password!',
                                      notifyType: NotifyType.warning,
                                      alignment: Alignment(0, 0));

                                  return;
                                }

                                // 验证确认密码是否输入
                                if (confirmPassword.isEmpty) {
                                  SmartDialog.showNotify(
                                      msg: 'Please confirm your password!',
                                      notifyType: NotifyType.warning,
                                      alignment: Alignment(0, 0));

                                  return;
                                }

                                // 验证两次密码是否一致
                                if (password != confirmPassword) {
                                  SmartDialog.showNotify(
                                      msg: 'Passwords do not match!',
                                      notifyType: NotifyType.warning,
                                      alignment: Alignment(0, 0));

                                  return;
                                }

                                // 显示加载动画
                                SmartDialog.showLoading(
                                    msg: 'Creating account...');

                                // 模拟网络延迟
                                await Future.delayed(
                                    const Duration(milliseconds: 800));

                                // 检查邮箱是否已存在
                                final users = OlineImmersiveRoleplayEngine()
                                    .olineImmersiveVoiceUsers;
                                final emailExists = users.any((user) =>
                                    user.olineRoleplayLoungeUserEmail == email);

                                if (emailExists) {
                                  SmartDialog.dismiss();
                                  SmartDialog.showNotify(
                                      msg: 'This email is already registered!',
                                      notifyType: NotifyType.error,
                                      alignment: Alignment(0, 0));

                                  return;
                                }

                                // 获取新用户ID（当前用户数量）
                                final newUserId = users.length;

                                // 创建新用户
                                final newUser = OlineRoleplayLoungeUserStruct
                                    .fromSerializableMap(
                                  jsonDecode(
                                    '{"OlineRoleplayLoungeUser_id":"$newUserId",'
                                    '"OlineRoleplayLoungeUser_email":"$email",'
                                    '"OlineRoleplayLoungeUser_password":"$password",'
                                    '"OlineRoleplayLoungeUser_avator":"assets/images/giidffughduiohgd_divyshuifoghsdiufg.png",'
                                    '"OlineRoleplayLoungeUser_name":"Visitor",'
                                    '"OlineRoleplayLoungeUser_describe":"",'
                                    '"OlineRoleplayLoungeUser_balance":"0",'
                                    '"OlineRoleplayLoungeUser_blocklist":"[]"}',
                                  ),
                                );

                                // 添加新用户到列表
                                OlineImmersiveRoleplayEngine().update(() {
                                  OlineImmersiveRoleplayEngine()
                                      .olineImmersiveVoiceUsers = [
                                    ...users,
                                    newUser,
                                  ];
                                });

                                // 保存用户ID到登录token
                                OlineImmersiveRoleplayEngine()
                                    .olinePersonaUniverseLoginToken = newUserId;

                                // 关闭加载
                                SmartDialog.dismiss();

                                // 显示成功提示
                                SmartDialog.showNotify(
                                    msg: 'Account created successfully!',
                                    notifyType: NotifyType.error,
                                    alignment: Alignment(0, 0));

                                await Future.delayed(
                                    const Duration(milliseconds: 2000));

                                // 跳转到主页
                                if (context.mounted) {
                                  context.goNamed(
                                    OlineRoleplaySystemHomePageWidget.routeName,
                                  );
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFF8469E),
                                      Color(0xFFE74DFF)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(-1.0, 0.34),
                                    end: AlignmentDirectional(1.0, -0.34),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Sign Up',
                                    style: OlineRoleplayDialogueTheme.of(
                                            context)
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
                                          color: OlineRoleplayDialogueTheme.of(
                                                  context)
                                              .info,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
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
                          ),
                        ],
                      ),
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

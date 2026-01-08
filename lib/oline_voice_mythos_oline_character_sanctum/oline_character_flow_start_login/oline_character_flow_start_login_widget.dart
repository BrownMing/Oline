import 'dart:convert';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'oline_character_flow_start_login_model.dart';
export 'oline_character_flow_start_login_model.dart';

class OlineCharacterFlowStartLoginWidget extends StatefulWidget {
  const OlineCharacterFlowStartLoginWidget({super.key});

  static String routeName = 'OlineCharacterFlow_start_login';
  static String routePath = '/olineCharacterFlowStartLogin';

  @override
  State<OlineCharacterFlowStartLoginWidget> createState() =>
      _OlineCharacterFlowStartLoginWidgetState();
}

class _OlineCharacterFlowStartLoginWidgetState
    extends State<OlineCharacterFlowStartLoginWidget> {
  late OlineCharacterFlowStartLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineCharacterFlowStartLoginModel());
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
        body: Stack(
          children: [
            Image.asset(
              'assets/images/difyughDFUIGO_xcvydsfhguiogf.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/ruyfughdfuioG_dfgihdfuigoh.png',
                    width: 96.0,
                    height: 96.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Oline',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w900,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).info,
                            fontSize: 36.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w900,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 48.0, 20.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // 生成新用户ID
                        final users = FFAppState().olineImmersiveVoiceUsers;
                        final newUserId = users.isEmpty
                            ? 0
                            : users
                                    .map((u) => u.olineRoleplayLoungeUserId)
                                    .reduce((a, b) => a > b ? a : b) +
                                1;

                        // 创建新用户
                        final newUser =
                            OlineRoleplayLoungeUserStruct.fromSerializableMap(
                          jsonDecode(
                              '{"OlineRoleplayLoungeUser_id":"$newUserId",'
                              '"OlineRoleplayLoungeUser_email":"visitor$newUserId@guest.com",'
                              '"OlineRoleplayLoungeUser_password":"123456",'
                              '"OlineRoleplayLoungeUser_avator":"assets/images/giidffughduiohgd_divyshuifoghsdiufg.png",'
                              '"OlineRoleplayLoungeUser_name":"Visitor$newUserId",'
                              '"OlineRoleplayLoungeUser_describe":"New cosplay voice enthusiast~",'
                              '"OlineRoleplayLoungeUser_balance":"100",'
                              '"OlineRoleplayLoungeUser_followings":"[]",'
                              '"OlineRoleplayLoungeUser_fans":"[]",'
                              '"OlineRoleplayLoungeUser_blocklist":"[]"}'),
                        );

                        FFAppState().addToOlineImmersiveVoiceUsers(newUser);

                        FFAppState().olinePersonaUniverseLoginToken = newUserId;
                        FFAppState().update(() {});

                        SmartDialog.showLoading(msg: 'Log in...');

                        await Future.delayed(
                            const Duration(milliseconds: 2000));
                        SmartDialog.dismiss();
                        await Future.delayed(
                            const Duration(milliseconds: 1500));
                        context.pushNamed(
                          OlineRoleplaySystemHomePageWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                            ),
                          },
                        );
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
                            'I\'m New',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          OlinePersonaConstellationLoginWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                          color: Color(0x33FFFFFF),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Login by Email',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(34.0, 37.0, 0.0, 48.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: GestureDetector(
                            onTap: () async {
                              safeSetState(() => _model.checkboxValue =
                                  !(_model.checkboxValue ?? true));
                            },
                            child: Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0x7FFFFFFF),
                              ),
                              child: Center(
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                  width: (_model.checkboxValue ?? true)
                                      ? 15.0
                                      : 0.0,
                                  height: (_model.checkboxValue ?? true)
                                      ? 15.0
                                      : 0.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFF8469E),
                                        Color(0xFFE74DFF)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Agree with  ',
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
                              TextSpan(
                                text: 'User Agreement',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.roboto(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFF8469E),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      decoration: TextDecoration.underline,
                                    ),
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    context.pushNamed(
                                      OlineAvatarVoiceContinuityTermsServiceWidget
                                          .routeName,
                                      queryParameters: {
                                        'olineCharacterLoreNetworkUrl':
                                            serializeParam(
                                          FFAppConstants.OlineCosplaySphereUser,
                                          ParamType.String,
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
                              ),
                              TextSpan(
                                text: ' and ',
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
                              TextSpan(
                                text: 'Privacy Policy.',
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
                                      color: Color(0xFFF8469E),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      decoration: TextDecoration.underline,
                                    ),
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    context.pushNamed(
                                      OlineAvatarVoiceContinuityTermsServiceWidget
                                          .routeName,
                                      queryParameters: {
                                        'olineCharacterLoreNetworkUrl':
                                            serializeParam(
                                          FFAppConstants
                                              .OlineRoleplayDomainPrivacy,
                                          ParamType.String,
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
                              )
                            ],
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

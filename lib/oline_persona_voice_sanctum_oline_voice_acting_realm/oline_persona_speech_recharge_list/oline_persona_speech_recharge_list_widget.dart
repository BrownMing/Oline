import 'package:oline/flutter_flow/oline_cosplay_persona_framework_iap_service.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'oline_persona_speech_recharge_list_model.dart';
export 'oline_persona_speech_recharge_list_model.dart';

class OlinePersonaSpeechRechargeListWidget extends StatefulWidget {
  const OlinePersonaSpeechRechargeListWidget({super.key});

  static String routeName = 'OlinePersonaSpeech_recharge_list';
  static String routePath = '/olinePersonaSpeechRechargeList';

  @override
  State<OlinePersonaSpeechRechargeListWidget> createState() =>
      _OlinePersonaSpeechRechargeListWidgetState();
}

class _OlinePersonaSpeechRechargeListWidgetState
    extends State<OlinePersonaSpeechRechargeListWidget> {
  late OlinePersonaSpeechRechargeListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  int? _selectedProductIndex;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlinePersonaSpeechRechargeListModel());

    // 初始化 IAP 服务
    OlinePersonaRechargeManager.initialize();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // 购买商品
  Future<void> _purchaseProduct(
      OlineVoiceCrystalProduct product, int index) async {
    await OlinePersonaRechargeManager.purchase(
      context,
      product,
      onSuccess: (diamonds) {
        final currentCoins = FFAppState()
                .olineImmersiveVoiceUsers
                .elementAtOrNull(FFAppState().olinePersonaUniverseLoginToken)
                ?.olineRoleplayLoungeUserBalance ??
            0;

        FFAppState().updateOlineImmersiveVoiceUsersAtIndex(
          FFAppState().olinePersonaUniverseLoginToken,
          (user) =>
              user..olineRoleplayLoungeUserBalance = currentCoins + diamonds,
        );
        FFAppState().update(() {});

        // 充值完成后重置选中状态
        if (mounted) {
          setState(() {
            _selectedProductIndex = null;
          });
        }
      },
    );
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
        backgroundColor: FlutterFlowTheme.of(context).info,
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
                        'Recharge',
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
                        EdgeInsetsDirectional.fromSTEB(12.0, 36.0, 12.0, 0.0),
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: 110.0,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 68.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/dfugdufhgodufg_dfyigdhfguiodg.png',
                                      ).image,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Wallet Balance:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0x7FFFFFFF),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(FFAppState().olinePersonaUniverseLoginToken)?.olineRoleplayLoungeUserBalance.toString()}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: Image.asset(
                                    'assets/images/rtuhsuigfhiofh_fgiouuhfhjuoif.png',
                                    width: 108.0,
                                    height: 108.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 11.0,
                              mainAxisSpacing: 11.0,
                              childAspectRatio: 1.03,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: OlineCosplayRechargeProducts
                                .olineVoiceProductList.length,
                            itemBuilder: (context, index) {
                              final product = OlineCosplayRechargeProducts
                                  .olineVoiceProductList[index];
                              final isSelected = _selectedProductIndex == index;
                              return GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    _selectedProductIndex = index;
                                  });
                                  await _purchaseProduct(product, index);
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                  width: 170.0,
                                  height: 165.0,
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
                                                AlignmentDirectional(0.0, -1.0),
                                            end: AlignmentDirectional(0.0, 1.0),
                                          )
                                        : null,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/riuhudifhgioud_cuihhdufighudiog.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            '${product.diamonds}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.black,
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? null
                                                  : Color(0xFFACA4B0),
                                              gradient: isSelected
                                                  ? LinearGradient(
                                                      colors: [
                                                        Color(0xFFFF005E),
                                                        Color(0xFFFF1C7E),
                                                        Color(0xFFFF3399)
                                                      ],
                                                      stops: [0.0, 0.5453, 1.0],
                                                      begin:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          1.0, 0.0),
                                                    )
                                                  : null,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(16.0),
                                                bottomRight:
                                                    Radius.circular(16.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                '\$${product.price.toStringAsFixed(2)}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 34.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
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
                        'Continue',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
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

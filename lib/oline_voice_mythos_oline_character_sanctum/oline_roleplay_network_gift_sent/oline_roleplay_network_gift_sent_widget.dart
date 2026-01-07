import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'oline_roleplay_network_gift_sent_model.dart';
export 'oline_roleplay_network_gift_sent_model.dart';

// 礼物发送结果数据类
class GiftSentResult {
  final int giftIndex;
  final String giftShow;
  final int giftBalance;
  final String senderName;
  final String senderAvatar;

  GiftSentResult({
    required this.giftIndex,
    required this.giftShow,
    required this.giftBalance,
    required this.senderName,
    required this.senderAvatar,
  });
}

class OlineRoleplayNetworkGiftSentWidget extends StatefulWidget {
  const OlineRoleplayNetworkGiftSentWidget({super.key});

  @override
  State<OlineRoleplayNetworkGiftSentWidget> createState() =>
      _OlineRoleplayNetworkGiftSentWidgetState();
}

class _OlineRoleplayNetworkGiftSentWidgetState
    extends State<OlineRoleplayNetworkGiftSentWidget> {
  late OlineRoleplayNetworkGiftSentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlineRoleplayNetworkGiftSentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            height: 270.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE74DFF), Colors.black],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 34.0, 15.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final gifts =
                          FFAppState().olineCharacterWaveGifts.toList();
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(gifts.length, (index) {
                          final gift = gifts[index];
                          final isSelected = _model.selectedGiftIndex == index;
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              safeSetState(() {
                                _model.selectedGiftIndex = index;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  width: 81.0,
                                  height: 101.0,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.white
                                        : Color(0x3FFFFFFF),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      gift.olineCharacterLinkGiftShow,
                                      width: 66.0,
                                      height: 60.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 7.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/rhuidfioGDFG_hdufighduifoghsudif.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'x${gift.olineCharacterLinkGiftBalance}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                _buildBottomButtons(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 40.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 余额显示和充值按钮
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(
                OlinePersonaSpeechRechargeListWidget.routeName,
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                  ),
                },
              );
              Navigator.pop(context);
            },
            child: Container(
              width: 98.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/rhuidfioGDFG_hdufighduifoghsudif.png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '${FFAppState().olineImmersiveVoiceUsers.elementAtOrNull(FFAppState().olinePersonaUniverseLoginToken)?.olineRoleplayLoungeUserBalance ?? 0}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: 16.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/huifhguiofguh_fghoiufjghiofpJH.png',
                              ).image,
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
          // 发送按钮
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (_model.selectedGiftIndex == null) {
                SmartDialog.showToast('Please select a gift');
                return;
              }
              final selectedGift = FFAppState()
                  .olineCharacterWaveGifts[_model.selectedGiftIndex!];
              final giftPrice = selectedGift.olineCharacterLinkGiftBalance;
              final currentUser = FFAppState()
                  .olineImmersiveVoiceUsers
                  .elementAtOrNull(FFAppState().olinePersonaUniverseLoginToken);
              final userBalance =
                  currentUser?.olineRoleplayLoungeUserBalance ?? 0;

              if (userBalance < giftPrice) {
                SmartDialog.showToast('Insufficient balance, please recharge');
                context.pushNamed(
                  OlinePersonaSpeechRechargeListWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
                Navigator.pop(context);
                return;
              }

              // 扣除金币
              FFAppState().updateOlineImmersiveVoiceUsersAtIndex(
                FFAppState().olinePersonaUniverseLoginToken,
                (user) => user
                  ..olineRoleplayLoungeUserBalance = userBalance - giftPrice,
              );

              // 返回礼物信息
              Navigator.pop(
                context,
                GiftSentResult(
                  giftIndex: _model.selectedGiftIndex!,
                  giftShow: selectedGift.olineCharacterLinkGiftShow,
                  giftBalance: giftPrice,
                  senderName: currentUser?.olineRoleplayLoungeUserName ?? '',
                  senderAvatar:
                      currentUser?.olineRoleplayLoungeUserAvator ?? '',
                ),
              );
            },
            child: Container(
              width: 98.0,
              height: 40.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFE74DFF), Color(0xFFF8469E)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, 0.0),
                  end: AlignmentDirectional(-1.0, 0),
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Sent',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

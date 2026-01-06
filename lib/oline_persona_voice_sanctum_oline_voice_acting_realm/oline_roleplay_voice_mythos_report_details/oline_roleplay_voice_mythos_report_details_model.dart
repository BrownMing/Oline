import '/flutter_flow/flutter_flow_util.dart';
import 'oline_roleplay_voice_mythos_report_details_widget.dart'
    show OlineRoleplayVoiceMythosReportDetailsWidget;
import 'package:flutter/material.dart';

class OlineRoleplayVoiceMythosReportDetailsModel
    extends FlutterFlowModel<OlineRoleplayVoiceMythosReportDetailsWidget> {
  ///  Local state fields for this component.

  List<String> olineVoiceRoleplayExchange = [
    'Harassment',
    'Inappropriate language',
    'Spam or false information',
    'Other'
  ];
  void addToOlineVoiceRoleplayExchange(String item) =>
      olineVoiceRoleplayExchange.add(item);
  void removeFromOlineVoiceRoleplayExchange(String item) =>
      olineVoiceRoleplayExchange.remove(item);
  void removeAtIndexFromOlineVoiceRoleplayExchange(int index) =>
      olineVoiceRoleplayExchange.removeAt(index);
  void insertAtIndexInOlineVoiceRoleplayExchange(int index, String item) =>
      olineVoiceRoleplayExchange.insert(index, item);
  void updateOlineVoiceRoleplayExchangeAtIndex(
          int index, Function(String) updateFn) =>
      olineVoiceRoleplayExchange[index] =
          updateFn(olineVoiceRoleplayExchange[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

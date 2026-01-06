import '/flutter_flow/flutter_flow_util.dart';
import 'oline_voice_fable_create_voiceroom_widget.dart'
    show OlineVoiceFableCreateVoiceroomWidget;
import 'package:flutter/material.dart';

class OlineVoiceFableCreateVoiceroomModel
    extends FlutterFlowModel<OlineVoiceFableCreateVoiceroomWidget> {
  ///  Local state fields for this component.

  List<String> olineCosplayPersonaSystem = [
    'American comics',
    'Manga',
    'Warm blood'
  ];
  void addToOlineCosplayPersonaSystem(String item) =>
      olineCosplayPersonaSystem.add(item);
  void removeFromOlineCosplayPersonaSystem(String item) =>
      olineCosplayPersonaSystem.remove(item);
  void removeAtIndexFromOlineCosplayPersonaSystem(int index) =>
      olineCosplayPersonaSystem.removeAt(index);
  void insertAtIndexInOlineCosplayPersonaSystem(int index, String item) =>
      olineCosplayPersonaSystem.insert(index, item);
  void updateOlineCosplayPersonaSystemAtIndex(
          int index, Function(String) updateFn) =>
      olineCosplayPersonaSystem[index] =
          updateFn(olineCosplayPersonaSystem[index]);

  String? olineImmersiveTalkMatrix;

  String? olinePersonaRoleplayCore;

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

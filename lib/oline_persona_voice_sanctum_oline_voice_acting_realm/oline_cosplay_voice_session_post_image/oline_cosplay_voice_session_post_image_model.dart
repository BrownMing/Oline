import '/flutter_flow/flutter_flow_util.dart';
import 'oline_cosplay_voice_session_post_image_widget.dart'
    show OlineCosplayVoiceSessionPostImageWidget;
import 'package:flutter/material.dart';

class OlineCosplayVoiceSessionPostImageModel
    extends FlutterFlowModel<OlineCosplayVoiceSessionPostImageWidget> {
  ///  Local state fields for this page.

  List<String> olineInCharacterVoiceContinuity = [];
  void addToOlineInCharacterVoiceContinuity(String item) =>
      olineInCharacterVoiceContinuity.add(item);
  void removeFromOlineInCharacterVoiceContinuity(String item) =>
      olineInCharacterVoiceContinuity.remove(item);
  void removeAtIndexFromOlineInCharacterVoiceContinuity(int index) =>
      olineInCharacterVoiceContinuity.removeAt(index);
  void insertAtIndexInOlineInCharacterVoiceContinuity(int index, String item) =>
      olineInCharacterVoiceContinuity.insert(index, item);
  void updateOlineInCharacterVoiceContinuityAtIndex(
          int index, Function(String) updateFn) =>
      olineInCharacterVoiceContinuity[index] =
          updateFn(olineInCharacterVoiceContinuity[index]);

  ///  State fields for stateful widgets in this page.

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

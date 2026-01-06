import '/flutter_flow/flutter_flow_util.dart';
import 'oline_cosplay_collective_chat_room_widget.dart'
    show OlineCosplayCollectiveChatRoomWidget;
import 'package:flutter/material.dart';

class OlineCosplayCollectiveChatRoomModel
    extends FlutterFlowModel<OlineCosplayCollectiveChatRoomWidget> {
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

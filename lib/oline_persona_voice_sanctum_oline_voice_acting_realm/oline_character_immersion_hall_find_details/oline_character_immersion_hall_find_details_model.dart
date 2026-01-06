import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_character_immersion_hall_find_details_widget.dart'
    show OlineCharacterImmersionHallFindDetailsWidget;
import 'package:flutter/material.dart';

class OlineCharacterImmersionHallFindDetailsModel
    extends FlutterFlowModel<OlineCharacterImmersionHallFindDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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

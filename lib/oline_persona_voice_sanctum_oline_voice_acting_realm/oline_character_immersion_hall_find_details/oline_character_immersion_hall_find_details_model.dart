import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/index.dart';
import 'oline_character_immersion_hall_find_details_widget.dart'
    show OlineCharacterImmersionHallFindDetailsWidget;
import 'package:flutter/material.dart';

class OlineCharacterImmersionHallFindDetailsModel
    extends OlineRoleplayDialogueModel<
        OlineCharacterImmersionHallFindDetailsWidget> {
  PageController? pageViewController;

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

import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:image_picker/image_picker.dart';
import 'oline_cosplay_voice_session_post_image_widget.dart'
    show OlineCosplayVoiceSessionPostImageWidget;
import 'package:flutter/material.dart';

class OlineCosplayVoiceSessionPostImageModel extends OlineRoleplayDialogueModel<
    OlineCosplayVoiceSessionPostImageWidget> {
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

  final ImagePicker _picker = ImagePicker();

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

  // 选择多张图片
  Future<void> pickImages() async {
    final List<XFile> images = await _picker.pickMultiImage();
    if (images.isNotEmpty) {
      for (var image in images) {
        if (olineInCharacterVoiceContinuity.length < 9) {
          olineInCharacterVoiceContinuity.add(image.path);
        }
      }
    }
  }

  // 删除指定索引的图片
  void removeImageAt(int index) {
    if (index >= 0 && index < olineInCharacterVoiceContinuity.length) {
      olineInCharacterVoiceContinuity.removeAt(index);
    }
  }
}

import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:image_picker/image_picker.dart';
import 'oline_voice_fable_create_voiceroom_widget.dart'
    show OlineVoiceFableCreateVoiceroomWidget;
import 'package:flutter/material.dart';

class OlineVoiceFableCreateVoiceroomModel
    extends OlineRoleplayDialogueModel<OlineVoiceFableCreateVoiceroomWidget> {
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

  // 选中的类型索引
  int? selectedTypeIndex;

  // 上传的图片路径
  String? uploadedImagePath;

  // 图片选择器
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

  // 选择图片
  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      uploadedImagePath = image.path;
      olineImmersiveTalkMatrix = image.path;
    }
  }
}

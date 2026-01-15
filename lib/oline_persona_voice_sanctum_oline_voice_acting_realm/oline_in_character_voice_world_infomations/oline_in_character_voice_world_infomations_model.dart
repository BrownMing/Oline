import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/index.dart';
import 'oline_in_character_voice_world_infomations_widget.dart'
    show OlineInCharacterVoiceWorldInfomationsWidget;
import 'package:flutter/material.dart';

class OlineInCharacterVoiceWorldInfomationsModel
    extends OlineRoleplayDialogueModel<
        OlineInCharacterVoiceWorldInfomationsWidget> {
  int selectedTabIndex = 0;

  late OlineRoleplayDialogueDynamicModels<OlinePersonaVoiceChronicleLikeModel>
      olinePersonaVoiceChronicleLikeModels;

  @override
  void initState(BuildContext context) {
    olinePersonaVoiceChronicleLikeModels = OlineRoleplayDialogueDynamicModels(
        () => OlinePersonaVoiceChronicleLikeModel());
  }

  @override
  void dispose() {
    olinePersonaVoiceChronicleLikeModels.dispose();
  }
}

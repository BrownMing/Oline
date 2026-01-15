import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/index.dart';
import 'oline_roleplay_dialogue_zone_otherinfo_widget.dart'
    show OlineRoleplayDialogueZoneOtherinfoWidget;
import 'package:flutter/material.dart';

class OlineRoleplayDialogueZoneOtherinfoModel
    extends OlineRoleplayDialogueModel<
        OlineRoleplayDialogueZoneOtherinfoWidget> {
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

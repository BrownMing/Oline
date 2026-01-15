import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/index.dart';
import 'oline_cosplay_echo_network_find_pages_widget.dart'
    show OlineCosplayEchoNetworkFindPagesWidget;
import 'package:flutter/material.dart';

class OlineCosplayEchoNetworkFindPagesModel
    extends OlineRoleplayDialogueModel<OlineCosplayEchoNetworkFindPagesWidget> {
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

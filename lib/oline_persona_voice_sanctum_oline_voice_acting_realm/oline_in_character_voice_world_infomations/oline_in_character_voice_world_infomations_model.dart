import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_in_character_voice_world_infomations_widget.dart'
    show OlineInCharacterVoiceWorldInfomationsWidget;
import 'package:flutter/material.dart';

class OlineInCharacterVoiceWorldInfomationsModel
    extends FlutterFlowModel<OlineInCharacterVoiceWorldInfomationsWidget> {

  int selectedTabIndex = 0;

  late FlutterFlowDynamicModels<OlinePersonaVoiceChronicleLikeModel>
      olinePersonaVoiceChronicleLikeModels;

  @override
  void initState(BuildContext context) {
    olinePersonaVoiceChronicleLikeModels =
        FlutterFlowDynamicModels(() => OlinePersonaVoiceChronicleLikeModel());
  }

  @override
  void dispose() {
    olinePersonaVoiceChronicleLikeModels.dispose();
  }
}

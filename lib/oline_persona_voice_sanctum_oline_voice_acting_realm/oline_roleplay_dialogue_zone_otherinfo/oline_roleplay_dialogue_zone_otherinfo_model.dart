import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_roleplay_dialogue_zone_otherinfo_widget.dart'
    show OlineRoleplayDialogueZoneOtherinfoWidget;
import 'package:flutter/material.dart';

class OlineRoleplayDialogueZoneOtherinfoModel
    extends FlutterFlowModel<OlineRoleplayDialogueZoneOtherinfoWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for OlinePersonaVoiceChronicle_like dynamic component.
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

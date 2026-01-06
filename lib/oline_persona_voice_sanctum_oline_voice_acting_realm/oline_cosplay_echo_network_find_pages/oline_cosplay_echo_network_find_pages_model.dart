import '/components/oline_persona_voice_chronicle_like_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_cosplay_echo_network_find_pages_widget.dart'
    show OlineCosplayEchoNetworkFindPagesWidget;
import 'package:flutter/material.dart';

class OlineCosplayEchoNetworkFindPagesModel
    extends FlutterFlowModel<OlineCosplayEchoNetworkFindPagesWidget> {
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

import 'package:oline/flutter_flow/uploaded_file.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_roleplay_voice_theatre_messages_widget.dart'
    show OlineRoleplayVoiceTheatreMessagesWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class OlineRoleplayVoiceTheatreMessagesModel
    extends FlutterFlowModel<OlineRoleplayVoiceTheatreMessagesWidget> {

  bool? olinePersonaDialogueVerseShow;

  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  AudioRecorder? audioRecorder;
  String? olineRoleplayPersonaContinuum;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

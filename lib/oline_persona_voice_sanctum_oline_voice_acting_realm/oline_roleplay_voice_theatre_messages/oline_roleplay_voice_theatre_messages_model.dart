import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'oline_roleplay_voice_theatre_messages_widget.dart'
    show OlineRoleplayVoiceTheatreMessagesWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';

class OlineRoleplayVoiceTheatreMessagesModel
    extends FlutterFlowModel<OlineRoleplayVoiceTheatreMessagesWidget> {
  bool? olinePersonaDialogueVerseShow;

  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  // 录音相关
  final AudioRecorder audioRecorder = AudioRecorder();
  String? recordingPath;
  DateTime? recordingStartTime;
  int recordingDuration = 0;
  bool isRecording = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
    audioRecorder.dispose();
  }

  // 开始录音
  Future<void> startRecording() async {
    try {
      if (await audioRecorder.hasPermission()) {
        final directory = await getTemporaryDirectory();
        final path =
            '${directory.path}/recording_${DateTime.now().millisecondsSinceEpoch}.m4a';

        await audioRecorder.start(
          const RecordConfig(
            encoder: AudioEncoder.aacLc,
            bitRate: 128000,
            sampleRate: 44100,
          ),
          path: path,
        );

        recordingPath = path;
        recordingStartTime = DateTime.now();
        isRecording = true;
      }
    } catch (e) {
      print('录音启动失败: $e');
    }
  }

  // 停止录音，返回路径和时长
  Future<Map<String, dynamic>?> stopRecording() async {
    try {
      final path = await audioRecorder.stop();
      isRecording = false;

      // 计算录音时长
      if (recordingStartTime != null) {
        recordingDuration =
            DateTime.now().difference(recordingStartTime!).inSeconds;
        if (recordingDuration < 1) recordingDuration = 1;
      }

      final duration = recordingDuration;
      recordingStartTime = null;
      recordingDuration = 0;

      return {
        'path': path,
        'duration': duration,
      };
    } catch (e) {
      print('录音停止失败: $e');
      isRecording = false;
      return null;
    }
  }

  // 取消录音
  Future<void> cancelRecording() async {
    try {
      await audioRecorder.stop();
      isRecording = false;
      recordingPath = null;
    } catch (e) {
      print('取消录音失败: $e');
    }
  }
}

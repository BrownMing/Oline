import '../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import '/oline_voice_mythos_oline_character_sanctum/oline_roleplay_network_gift_sent/oline_roleplay_network_gift_sent_widget.dart';
import 'oline_cosplay_collective_chat_room_widget.dart'
    show OlineCosplayCollectiveChatRoomWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';

class OlineCosplayCollectiveChatRoomModel
    extends OlineRoleplayDialogueModel<OlineCosplayCollectiveChatRoomWidget> {
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  // 是否显示录音模式
  bool isRecordingMode = false;
  // 是否正在录音
  bool isRecording = false;
  // 录音器
  final AudioRecorder audioRecorder = AudioRecorder();
  // 录音文件路径
  String? recordingPath;
  // 录音开始时间
  DateTime? recordingStartTime;
  // 录音时长（秒）
  int recordingDuration = 0;
  // 礼物飘屏相关
  bool showGiftAnimation = false;
  GiftSentResult? giftResult;

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

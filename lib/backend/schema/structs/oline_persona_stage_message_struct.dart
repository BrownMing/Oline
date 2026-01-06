// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OlinePersonaStageMessageStruct extends BaseStruct {
  OlinePersonaStageMessageStruct({
    String? olinePersonaStageMessageContent,
    int? olinePersonaStageMessageCreateUser,
    DateTime? olinePersonaStageMessageCreateTime,
    String? olinePersonaStageMessageAudio,
    String? olinePersonaStageMessageAudioTime,
    int? olinePersonaStageMessageChatRef,
  })  : _olinePersonaStageMessageContent = olinePersonaStageMessageContent,
        _olinePersonaStageMessageCreateUser =
            olinePersonaStageMessageCreateUser,
        _olinePersonaStageMessageCreateTime =
            olinePersonaStageMessageCreateTime,
        _olinePersonaStageMessageAudio = olinePersonaStageMessageAudio,
        _olinePersonaStageMessageAudioTime = olinePersonaStageMessageAudioTime,
        _olinePersonaStageMessageChatRef = olinePersonaStageMessageChatRef;

  // "OlinePersonaStageMessage_content" field.
  String? _olinePersonaStageMessageContent;
  String get olinePersonaStageMessageContent =>
      _olinePersonaStageMessageContent ?? '';
  set olinePersonaStageMessageContent(String? val) =>
      _olinePersonaStageMessageContent = val;

  bool hasOlinePersonaStageMessageContent() =>
      _olinePersonaStageMessageContent != null;

  // "OlinePersonaStageMessage_create_user" field.
  int? _olinePersonaStageMessageCreateUser;
  int get olinePersonaStageMessageCreateUser =>
      _olinePersonaStageMessageCreateUser ?? 0;
  set olinePersonaStageMessageCreateUser(int? val) =>
      _olinePersonaStageMessageCreateUser = val;

  void incrementOlinePersonaStageMessageCreateUser(int amount) =>
      olinePersonaStageMessageCreateUser =
          olinePersonaStageMessageCreateUser + amount;

  bool hasOlinePersonaStageMessageCreateUser() =>
      _olinePersonaStageMessageCreateUser != null;

  // "OlinePersonaStageMessage_create_time" field.
  DateTime? _olinePersonaStageMessageCreateTime;
  DateTime? get olinePersonaStageMessageCreateTime =>
      _olinePersonaStageMessageCreateTime;
  set olinePersonaStageMessageCreateTime(DateTime? val) =>
      _olinePersonaStageMessageCreateTime = val;

  bool hasOlinePersonaStageMessageCreateTime() =>
      _olinePersonaStageMessageCreateTime != null;

  // "OlinePersonaStageMessage_audio" field.
  String? _olinePersonaStageMessageAudio;
  String get olinePersonaStageMessageAudio =>
      _olinePersonaStageMessageAudio ?? '';
  set olinePersonaStageMessageAudio(String? val) =>
      _olinePersonaStageMessageAudio = val;

  bool hasOlinePersonaStageMessageAudio() =>
      _olinePersonaStageMessageAudio != null;

  // "OlinePersonaStageMessage_audio_time" field.
  String? _olinePersonaStageMessageAudioTime;
  String get olinePersonaStageMessageAudioTime =>
      _olinePersonaStageMessageAudioTime ?? '';
  set olinePersonaStageMessageAudioTime(String? val) =>
      _olinePersonaStageMessageAudioTime = val;

  bool hasOlinePersonaStageMessageAudioTime() =>
      _olinePersonaStageMessageAudioTime != null;

  // "OlinePersonaStageMessage_chat_ref" field.
  int? _olinePersonaStageMessageChatRef;
  int get olinePersonaStageMessageChatRef =>
      _olinePersonaStageMessageChatRef ?? 0;
  set olinePersonaStageMessageChatRef(int? val) =>
      _olinePersonaStageMessageChatRef = val;

  void incrementOlinePersonaStageMessageChatRef(int amount) =>
      olinePersonaStageMessageChatRef =
          olinePersonaStageMessageChatRef + amount;

  bool hasOlinePersonaStageMessageChatRef() =>
      _olinePersonaStageMessageChatRef != null;

  static OlinePersonaStageMessageStruct fromMap(Map<String, dynamic> data) =>
      OlinePersonaStageMessageStruct(
        olinePersonaStageMessageContent:
            data['OlinePersonaStageMessage_content'] as String?,
        olinePersonaStageMessageCreateUser:
            castToType<int>(data['OlinePersonaStageMessage_create_user']),
        olinePersonaStageMessageCreateTime:
            data['OlinePersonaStageMessage_create_time'] as DateTime?,
        olinePersonaStageMessageAudio:
            data['OlinePersonaStageMessage_audio'] as String?,
        olinePersonaStageMessageAudioTime:
            data['OlinePersonaStageMessage_audio_time'] as String?,
        olinePersonaStageMessageChatRef:
            castToType<int>(data['OlinePersonaStageMessage_chat_ref']),
      );

  static OlinePersonaStageMessageStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? OlinePersonaStageMessageStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'OlinePersonaStageMessage_content': _olinePersonaStageMessageContent,
        'OlinePersonaStageMessage_create_user':
            _olinePersonaStageMessageCreateUser,
        'OlinePersonaStageMessage_create_time':
            _olinePersonaStageMessageCreateTime,
        'OlinePersonaStageMessage_audio': _olinePersonaStageMessageAudio,
        'OlinePersonaStageMessage_audio_time':
            _olinePersonaStageMessageAudioTime,
        'OlinePersonaStageMessage_chat_ref': _olinePersonaStageMessageChatRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlinePersonaStageMessage_content': serializeParam(
          _olinePersonaStageMessageContent,
          ParamType.String,
        ),
        'OlinePersonaStageMessage_create_user': serializeParam(
          _olinePersonaStageMessageCreateUser,
          ParamType.int,
        ),
        'OlinePersonaStageMessage_create_time': serializeParam(
          _olinePersonaStageMessageCreateTime,
          ParamType.DateTime,
        ),
        'OlinePersonaStageMessage_audio': serializeParam(
          _olinePersonaStageMessageAudio,
          ParamType.String,
        ),
        'OlinePersonaStageMessage_audio_time': serializeParam(
          _olinePersonaStageMessageAudioTime,
          ParamType.String,
        ),
        'OlinePersonaStageMessage_chat_ref': serializeParam(
          _olinePersonaStageMessageChatRef,
          ParamType.int,
        ),
      }.withoutNulls;

  static OlinePersonaStageMessageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlinePersonaStageMessageStruct(
        olinePersonaStageMessageContent: deserializeParam(
          data['OlinePersonaStageMessage_content'],
          ParamType.String,
          false,
        ),
        olinePersonaStageMessageCreateUser: deserializeParam(
          data['OlinePersonaStageMessage_create_user'],
          ParamType.int,
          false,
        ),
        olinePersonaStageMessageCreateTime: deserializeParam(
          data['OlinePersonaStageMessage_create_time'],
          ParamType.DateTime,
          false,
        ),
        olinePersonaStageMessageAudio: deserializeParam(
          data['OlinePersonaStageMessage_audio'],
          ParamType.String,
          false,
        ),
        olinePersonaStageMessageAudioTime: deserializeParam(
          data['OlinePersonaStageMessage_audio_time'],
          ParamType.String,
          false,
        ),
        olinePersonaStageMessageChatRef: deserializeParam(
          data['OlinePersonaStageMessage_chat_ref'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OlinePersonaStageMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OlinePersonaStageMessageStruct &&
        olinePersonaStageMessageContent ==
            other.olinePersonaStageMessageContent &&
        olinePersonaStageMessageCreateUser ==
            other.olinePersonaStageMessageCreateUser &&
        olinePersonaStageMessageCreateTime ==
            other.olinePersonaStageMessageCreateTime &&
        olinePersonaStageMessageAudio == other.olinePersonaStageMessageAudio &&
        olinePersonaStageMessageAudioTime ==
            other.olinePersonaStageMessageAudioTime &&
        olinePersonaStageMessageChatRef ==
            other.olinePersonaStageMessageChatRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        olinePersonaStageMessageContent,
        olinePersonaStageMessageCreateUser,
        olinePersonaStageMessageCreateTime,
        olinePersonaStageMessageAudio,
        olinePersonaStageMessageAudioTime,
        olinePersonaStageMessageChatRef
      ]);
}

OlinePersonaStageMessageStruct createOlinePersonaStageMessageStruct({
  String? olinePersonaStageMessageContent,
  int? olinePersonaStageMessageCreateUser,
  DateTime? olinePersonaStageMessageCreateTime,
  String? olinePersonaStageMessageAudio,
  String? olinePersonaStageMessageAudioTime,
  int? olinePersonaStageMessageChatRef,
}) =>
    OlinePersonaStageMessageStruct(
      olinePersonaStageMessageContent: olinePersonaStageMessageContent,
      olinePersonaStageMessageCreateUser: olinePersonaStageMessageCreateUser,
      olinePersonaStageMessageCreateTime: olinePersonaStageMessageCreateTime,
      olinePersonaStageMessageAudio: olinePersonaStageMessageAudio,
      olinePersonaStageMessageAudioTime: olinePersonaStageMessageAudioTime,
      olinePersonaStageMessageChatRef: olinePersonaStageMessageChatRef,
    );

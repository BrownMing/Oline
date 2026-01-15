// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';

class OlineVoicePersonaRoleplayChatStruct extends BaseStruct {
  OlineVoicePersonaRoleplayChatStruct({
    int? olineVoicePersonaRoleplayChatId,
    String? olineVoicePersonaRoleplayChatLastMessage,
    DateTime? olineVoicePersonaRoleplayChatLastTime,
    int? olineVoicePersonaRoleplayChatSendUser,
    int? olineVoicePersonaRoleplayChatReceiveUser,
    int? olineVoicePersonaRoleplayChatUnread,
  })  : _olineVoicePersonaRoleplayChatId = olineVoicePersonaRoleplayChatId,
        _olineVoicePersonaRoleplayChatLastMessage =
            olineVoicePersonaRoleplayChatLastMessage,
        _olineVoicePersonaRoleplayChatLastTime =
            olineVoicePersonaRoleplayChatLastTime,
        _olineVoicePersonaRoleplayChatSendUser =
            olineVoicePersonaRoleplayChatSendUser,
        _olineVoicePersonaRoleplayChatReceiveUser =
            olineVoicePersonaRoleplayChatReceiveUser,
        _olineVoicePersonaRoleplayChatUnread =
            olineVoicePersonaRoleplayChatUnread;

  // "OlineVoicePersonaRoleplayChat_id" field.
  int? _olineVoicePersonaRoleplayChatId;
  int get olineVoicePersonaRoleplayChatId =>
      _olineVoicePersonaRoleplayChatId ?? 0;
  set olineVoicePersonaRoleplayChatId(int? val) =>
      _olineVoicePersonaRoleplayChatId = val;

  void incrementOlineVoicePersonaRoleplayChatId(int amount) =>
      olineVoicePersonaRoleplayChatId =
          olineVoicePersonaRoleplayChatId + amount;

  bool hasOlineVoicePersonaRoleplayChatId() =>
      _olineVoicePersonaRoleplayChatId != null;

  // "OlineVoicePersonaRoleplayChat_last_message" field.
  String? _olineVoicePersonaRoleplayChatLastMessage;
  String get olineVoicePersonaRoleplayChatLastMessage =>
      _olineVoicePersonaRoleplayChatLastMessage ?? '';
  set olineVoicePersonaRoleplayChatLastMessage(String? val) =>
      _olineVoicePersonaRoleplayChatLastMessage = val;

  bool hasOlineVoicePersonaRoleplayChatLastMessage() =>
      _olineVoicePersonaRoleplayChatLastMessage != null;

  // "OlineVoicePersonaRoleplayChat_last_time" field.
  DateTime? _olineVoicePersonaRoleplayChatLastTime;
  DateTime? get olineVoicePersonaRoleplayChatLastTime =>
      _olineVoicePersonaRoleplayChatLastTime;
  set olineVoicePersonaRoleplayChatLastTime(DateTime? val) =>
      _olineVoicePersonaRoleplayChatLastTime = val;

  bool hasOlineVoicePersonaRoleplayChatLastTime() =>
      _olineVoicePersonaRoleplayChatLastTime != null;

  // "OlineVoicePersonaRoleplayChat_send_user" field.
  int? _olineVoicePersonaRoleplayChatSendUser;
  int get olineVoicePersonaRoleplayChatSendUser =>
      _olineVoicePersonaRoleplayChatSendUser ?? 0;
  set olineVoicePersonaRoleplayChatSendUser(int? val) =>
      _olineVoicePersonaRoleplayChatSendUser = val;

  void incrementOlineVoicePersonaRoleplayChatSendUser(int amount) =>
      olineVoicePersonaRoleplayChatSendUser =
          olineVoicePersonaRoleplayChatSendUser + amount;

  bool hasOlineVoicePersonaRoleplayChatSendUser() =>
      _olineVoicePersonaRoleplayChatSendUser != null;

  // "OlineVoicePersonaRoleplayChat_receive_user" field.
  int? _olineVoicePersonaRoleplayChatReceiveUser;
  int get olineVoicePersonaRoleplayChatReceiveUser =>
      _olineVoicePersonaRoleplayChatReceiveUser ?? 0;
  set olineVoicePersonaRoleplayChatReceiveUser(int? val) =>
      _olineVoicePersonaRoleplayChatReceiveUser = val;

  void incrementOlineVoicePersonaRoleplayChatReceiveUser(int amount) =>
      olineVoicePersonaRoleplayChatReceiveUser =
          olineVoicePersonaRoleplayChatReceiveUser + amount;

  bool hasOlineVoicePersonaRoleplayChatReceiveUser() =>
      _olineVoicePersonaRoleplayChatReceiveUser != null;

  // "OlineVoicePersonaRoleplayChat_unread" field.
  int? _olineVoicePersonaRoleplayChatUnread;
  int get olineVoicePersonaRoleplayChatUnread =>
      _olineVoicePersonaRoleplayChatUnread ?? 0;
  set olineVoicePersonaRoleplayChatUnread(int? val) =>
      _olineVoicePersonaRoleplayChatUnread = val;

  void incrementOlineVoicePersonaRoleplayChatUnread(int amount) =>
      olineVoicePersonaRoleplayChatUnread =
          olineVoicePersonaRoleplayChatUnread + amount;

  bool hasOlineVoicePersonaRoleplayChatUnread() =>
      _olineVoicePersonaRoleplayChatUnread != null;

  static OlineVoicePersonaRoleplayChatStruct fromMap(
          Map<String, dynamic> data) =>
      OlineVoicePersonaRoleplayChatStruct(
        olineVoicePersonaRoleplayChatId:
            castToType<int>(data['OlineVoicePersonaRoleplayChat_id']),
        olineVoicePersonaRoleplayChatLastMessage:
            data['OlineVoicePersonaRoleplayChat_last_message'] as String?,
        olineVoicePersonaRoleplayChatLastTime:
            data['OlineVoicePersonaRoleplayChat_last_time'] as DateTime?,
        olineVoicePersonaRoleplayChatSendUser:
            castToType<int>(data['OlineVoicePersonaRoleplayChat_send_user']),
        olineVoicePersonaRoleplayChatReceiveUser:
            castToType<int>(data['OlineVoicePersonaRoleplayChat_receive_user']),
        olineVoicePersonaRoleplayChatUnread:
            castToType<int>(data['OlineVoicePersonaRoleplayChat_unread']),
      );

  static OlineVoicePersonaRoleplayChatStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? OlineVoicePersonaRoleplayChatStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'OlineVoicePersonaRoleplayChat_id': _olineVoicePersonaRoleplayChatId,
        'OlineVoicePersonaRoleplayChat_last_message':
            _olineVoicePersonaRoleplayChatLastMessage,
        'OlineVoicePersonaRoleplayChat_last_time':
            _olineVoicePersonaRoleplayChatLastTime,
        'OlineVoicePersonaRoleplayChat_send_user':
            _olineVoicePersonaRoleplayChatSendUser,
        'OlineVoicePersonaRoleplayChat_receive_user':
            _olineVoicePersonaRoleplayChatReceiveUser,
        'OlineVoicePersonaRoleplayChat_unread':
            _olineVoicePersonaRoleplayChatUnread,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineVoicePersonaRoleplayChat_id': serializeParam(
          _olineVoicePersonaRoleplayChatId,
          ParamType.int,
        ),
        'OlineVoicePersonaRoleplayChat_last_message': serializeParam(
          _olineVoicePersonaRoleplayChatLastMessage,
          ParamType.String,
        ),
        'OlineVoicePersonaRoleplayChat_last_time': serializeParam(
          _olineVoicePersonaRoleplayChatLastTime,
          ParamType.DateTime,
        ),
        'OlineVoicePersonaRoleplayChat_send_user': serializeParam(
          _olineVoicePersonaRoleplayChatSendUser,
          ParamType.int,
        ),
        'OlineVoicePersonaRoleplayChat_receive_user': serializeParam(
          _olineVoicePersonaRoleplayChatReceiveUser,
          ParamType.int,
        ),
        'OlineVoicePersonaRoleplayChat_unread': serializeParam(
          _olineVoicePersonaRoleplayChatUnread,
          ParamType.int,
        ),
      }.withoutNulls;

  static OlineVoicePersonaRoleplayChatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineVoicePersonaRoleplayChatStruct(
        olineVoicePersonaRoleplayChatId: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_id'],
          ParamType.int,
          false,
        ),
        olineVoicePersonaRoleplayChatLastMessage: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_last_message'],
          ParamType.String,
          false,
        ),
        olineVoicePersonaRoleplayChatLastTime: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_last_time'],
          ParamType.DateTime,
          false,
        ),
        olineVoicePersonaRoleplayChatSendUser: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_send_user'],
          ParamType.int,
          false,
        ),
        olineVoicePersonaRoleplayChatReceiveUser: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_receive_user'],
          ParamType.int,
          false,
        ),
        olineVoicePersonaRoleplayChatUnread: deserializeParam(
          data['OlineVoicePersonaRoleplayChat_unread'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OlineVoicePersonaRoleplayChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OlineVoicePersonaRoleplayChatStruct &&
        olineVoicePersonaRoleplayChatId ==
            other.olineVoicePersonaRoleplayChatId &&
        olineVoicePersonaRoleplayChatLastMessage ==
            other.olineVoicePersonaRoleplayChatLastMessage &&
        olineVoicePersonaRoleplayChatLastTime ==
            other.olineVoicePersonaRoleplayChatLastTime &&
        olineVoicePersonaRoleplayChatSendUser ==
            other.olineVoicePersonaRoleplayChatSendUser &&
        olineVoicePersonaRoleplayChatReceiveUser ==
            other.olineVoicePersonaRoleplayChatReceiveUser &&
        olineVoicePersonaRoleplayChatUnread ==
            other.olineVoicePersonaRoleplayChatUnread;
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineVoicePersonaRoleplayChatId,
        olineVoicePersonaRoleplayChatLastMessage,
        olineVoicePersonaRoleplayChatLastTime,
        olineVoicePersonaRoleplayChatSendUser,
        olineVoicePersonaRoleplayChatReceiveUser,
        olineVoicePersonaRoleplayChatUnread
      ]);
}

OlineVoicePersonaRoleplayChatStruct createOlineVoicePersonaRoleplayChatStruct({
  int? olineVoicePersonaRoleplayChatId,
  String? olineVoicePersonaRoleplayChatLastMessage,
  DateTime? olineVoicePersonaRoleplayChatLastTime,
  int? olineVoicePersonaRoleplayChatSendUser,
  int? olineVoicePersonaRoleplayChatReceiveUser,
  int? olineVoicePersonaRoleplayChatUnread,
}) =>
    OlineVoicePersonaRoleplayChatStruct(
      olineVoicePersonaRoleplayChatId: olineVoicePersonaRoleplayChatId,
      olineVoicePersonaRoleplayChatLastMessage:
          olineVoicePersonaRoleplayChatLastMessage,
      olineVoicePersonaRoleplayChatLastTime:
          olineVoicePersonaRoleplayChatLastTime,
      olineVoicePersonaRoleplayChatSendUser:
          olineVoicePersonaRoleplayChatSendUser,
      olineVoicePersonaRoleplayChatReceiveUser:
          olineVoicePersonaRoleplayChatReceiveUser,
      olineVoicePersonaRoleplayChatUnread: olineVoicePersonaRoleplayChatUnread,
    );

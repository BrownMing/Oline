// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OlineVoiceMaskRealmChatRoomStruct extends BaseStruct {
  OlineVoiceMaskRealmChatRoomStruct({
    int? olineVoiceMaskRealmChatRoomId,
    String? olineVoiceMaskRealmChatRoomName,
    String? olineVoiceMaskRealmChatRoomShow,
    int? olineVoiceMaskRealmChatRoomNumber,
    List<int>? olineVoiceMaskRealmChatRoomJoinUsers,
    bool? olineVoiceMaskRealmChatRoomHot,
    DateTime? olineVoiceMaskRealmChatRoomCreateTime,
    int? olineVoiceMaskRealmChatRoomCreateId,
    String? olineVoiceMaskRealmChatRoomCreateType,
    List<OlineRoleplayNexusCommentStruct>? olineVoiceMaskRealmChatRoomComments,
  })  : _olineVoiceMaskRealmChatRoomId = olineVoiceMaskRealmChatRoomId,
        _olineVoiceMaskRealmChatRoomName = olineVoiceMaskRealmChatRoomName,
        _olineVoiceMaskRealmChatRoomShow = olineVoiceMaskRealmChatRoomShow,
        _olineVoiceMaskRealmChatRoomNumber = olineVoiceMaskRealmChatRoomNumber,
        _olineVoiceMaskRealmChatRoomJoinUsers =
            olineVoiceMaskRealmChatRoomJoinUsers,
        _olineVoiceMaskRealmChatRoomHot = olineVoiceMaskRealmChatRoomHot,
        _olineVoiceMaskRealmChatRoomCreateTime =
            olineVoiceMaskRealmChatRoomCreateTime,
        _olineVoiceMaskRealmChatRoomCreateId =
            olineVoiceMaskRealmChatRoomCreateId,
        _olineVoiceMaskRealmChatRoomCreateType =
            olineVoiceMaskRealmChatRoomCreateType,
        _olineVoiceMaskRealmChatRoomComments =
            olineVoiceMaskRealmChatRoomComments;

  // "OlineVoiceMaskRealmChatRoom_id" field.
  int? _olineVoiceMaskRealmChatRoomId;
  int get olineVoiceMaskRealmChatRoomId => _olineVoiceMaskRealmChatRoomId ?? 0;
  set olineVoiceMaskRealmChatRoomId(int? val) =>
      _olineVoiceMaskRealmChatRoomId = val;

  void incrementOlineVoiceMaskRealmChatRoomId(int amount) =>
      olineVoiceMaskRealmChatRoomId = olineVoiceMaskRealmChatRoomId + amount;

  bool hasOlineVoiceMaskRealmChatRoomId() =>
      _olineVoiceMaskRealmChatRoomId != null;

  // "OlineVoiceMaskRealmChatRoom_name" field.
  String? _olineVoiceMaskRealmChatRoomName;
  String get olineVoiceMaskRealmChatRoomName =>
      _olineVoiceMaskRealmChatRoomName ?? '';
  set olineVoiceMaskRealmChatRoomName(String? val) =>
      _olineVoiceMaskRealmChatRoomName = val;

  bool hasOlineVoiceMaskRealmChatRoomName() =>
      _olineVoiceMaskRealmChatRoomName != null;

  // "OlineVoiceMaskRealmChatRoom_show" field.
  String? _olineVoiceMaskRealmChatRoomShow;
  String get olineVoiceMaskRealmChatRoomShow =>
      _olineVoiceMaskRealmChatRoomShow ?? '';
  set olineVoiceMaskRealmChatRoomShow(String? val) =>
      _olineVoiceMaskRealmChatRoomShow = val;

  bool hasOlineVoiceMaskRealmChatRoomShow() =>
      _olineVoiceMaskRealmChatRoomShow != null;

  // "OlineVoiceMaskRealmChatRoom_number" field.
  int? _olineVoiceMaskRealmChatRoomNumber;
  int get olineVoiceMaskRealmChatRoomNumber =>
      _olineVoiceMaskRealmChatRoomNumber ?? 0;
  set olineVoiceMaskRealmChatRoomNumber(int? val) =>
      _olineVoiceMaskRealmChatRoomNumber = val;

  void incrementOlineVoiceMaskRealmChatRoomNumber(int amount) =>
      olineVoiceMaskRealmChatRoomNumber =
          olineVoiceMaskRealmChatRoomNumber + amount;

  bool hasOlineVoiceMaskRealmChatRoomNumber() =>
      _olineVoiceMaskRealmChatRoomNumber != null;

  // "OlineVoiceMaskRealmChatRoom_join_users" field.
  List<int>? _olineVoiceMaskRealmChatRoomJoinUsers;
  List<int> get olineVoiceMaskRealmChatRoomJoinUsers =>
      _olineVoiceMaskRealmChatRoomJoinUsers ?? const [];
  set olineVoiceMaskRealmChatRoomJoinUsers(List<int>? val) =>
      _olineVoiceMaskRealmChatRoomJoinUsers = val;

  void updateOlineVoiceMaskRealmChatRoomJoinUsers(
      Function(List<int>) updateFn) {
    updateFn(_olineVoiceMaskRealmChatRoomJoinUsers ??= []);
  }

  bool hasOlineVoiceMaskRealmChatRoomJoinUsers() =>
      _olineVoiceMaskRealmChatRoomJoinUsers != null;

  // "OlineVoiceMaskRealmChatRoom_hot" field.
  bool? _olineVoiceMaskRealmChatRoomHot;
  bool get olineVoiceMaskRealmChatRoomHot =>
      _olineVoiceMaskRealmChatRoomHot ?? false;
  set olineVoiceMaskRealmChatRoomHot(bool? val) =>
      _olineVoiceMaskRealmChatRoomHot = val;

  bool hasOlineVoiceMaskRealmChatRoomHot() =>
      _olineVoiceMaskRealmChatRoomHot != null;

  // "OlineVoiceMaskRealmChatRoom_create_time" field.
  DateTime? _olineVoiceMaskRealmChatRoomCreateTime;
  DateTime? get olineVoiceMaskRealmChatRoomCreateTime =>
      _olineVoiceMaskRealmChatRoomCreateTime;
  set olineVoiceMaskRealmChatRoomCreateTime(DateTime? val) =>
      _olineVoiceMaskRealmChatRoomCreateTime = val;

  bool hasOlineVoiceMaskRealmChatRoomCreateTime() =>
      _olineVoiceMaskRealmChatRoomCreateTime != null;

  // "OlineVoiceMaskRealmChatRoom_create_id" field.
  int? _olineVoiceMaskRealmChatRoomCreateId;
  int get olineVoiceMaskRealmChatRoomCreateId =>
      _olineVoiceMaskRealmChatRoomCreateId ?? 0;
  set olineVoiceMaskRealmChatRoomCreateId(int? val) =>
      _olineVoiceMaskRealmChatRoomCreateId = val;

  void incrementOlineVoiceMaskRealmChatRoomCreateId(int amount) =>
      olineVoiceMaskRealmChatRoomCreateId =
          olineVoiceMaskRealmChatRoomCreateId + amount;

  bool hasOlineVoiceMaskRealmChatRoomCreateId() =>
      _olineVoiceMaskRealmChatRoomCreateId != null;

  // "OlineVoiceMaskRealmChatRoom_create_type" field.
  String? _olineVoiceMaskRealmChatRoomCreateType;
  String get olineVoiceMaskRealmChatRoomCreateType =>
      _olineVoiceMaskRealmChatRoomCreateType ?? '';
  set olineVoiceMaskRealmChatRoomCreateType(String? val) =>
      _olineVoiceMaskRealmChatRoomCreateType = val;

  bool hasOlineVoiceMaskRealmChatRoomCreateType() =>
      _olineVoiceMaskRealmChatRoomCreateType != null;

  // "OlineVoiceMaskRealmChatRoom_comments" field.
  List<OlineRoleplayNexusCommentStruct>? _olineVoiceMaskRealmChatRoomComments;
  List<OlineRoleplayNexusCommentStruct>
      get olineVoiceMaskRealmChatRoomComments =>
          _olineVoiceMaskRealmChatRoomComments ?? const [];
  set olineVoiceMaskRealmChatRoomComments(
          List<OlineRoleplayNexusCommentStruct>? val) =>
      _olineVoiceMaskRealmChatRoomComments = val;

  void updateOlineVoiceMaskRealmChatRoomComments(
      Function(List<OlineRoleplayNexusCommentStruct>) updateFn) {
    updateFn(_olineVoiceMaskRealmChatRoomComments ??= []);
  }

  bool hasOlineVoiceMaskRealmChatRoomComments() =>
      _olineVoiceMaskRealmChatRoomComments != null;

  static OlineVoiceMaskRealmChatRoomStruct fromMap(Map<String, dynamic> data) =>
      OlineVoiceMaskRealmChatRoomStruct(
        olineVoiceMaskRealmChatRoomId:
            castToType<int>(data['OlineVoiceMaskRealmChatRoom_id']),
        olineVoiceMaskRealmChatRoomName:
            data['OlineVoiceMaskRealmChatRoom_name'] as String?,
        olineVoiceMaskRealmChatRoomShow:
            data['OlineVoiceMaskRealmChatRoom_show'] as String?,
        olineVoiceMaskRealmChatRoomNumber:
            castToType<int>(data['OlineVoiceMaskRealmChatRoom_number']),
        olineVoiceMaskRealmChatRoomJoinUsers:
            getDataList(data['OlineVoiceMaskRealmChatRoom_join_users']),
        olineVoiceMaskRealmChatRoomHot:
            data['OlineVoiceMaskRealmChatRoom_hot'] as bool?,
        olineVoiceMaskRealmChatRoomCreateTime:
            data['OlineVoiceMaskRealmChatRoom_create_time'] as DateTime?,
        olineVoiceMaskRealmChatRoomCreateId:
            castToType<int>(data['OlineVoiceMaskRealmChatRoom_create_id']),
        olineVoiceMaskRealmChatRoomCreateType:
            data['OlineVoiceMaskRealmChatRoom_create_type'] as String?,
        olineVoiceMaskRealmChatRoomComments: getStructList(
          data['OlineVoiceMaskRealmChatRoom_comments'],
          OlineRoleplayNexusCommentStruct.fromMap,
        ),
      );

  static OlineVoiceMaskRealmChatRoomStruct? maybeFromMap(dynamic data) => data
          is Map
      ? OlineVoiceMaskRealmChatRoomStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OlineVoiceMaskRealmChatRoom_id': _olineVoiceMaskRealmChatRoomId,
        'OlineVoiceMaskRealmChatRoom_name': _olineVoiceMaskRealmChatRoomName,
        'OlineVoiceMaskRealmChatRoom_show': _olineVoiceMaskRealmChatRoomShow,
        'OlineVoiceMaskRealmChatRoom_number':
            _olineVoiceMaskRealmChatRoomNumber,
        'OlineVoiceMaskRealmChatRoom_join_users':
            _olineVoiceMaskRealmChatRoomJoinUsers,
        'OlineVoiceMaskRealmChatRoom_hot': _olineVoiceMaskRealmChatRoomHot,
        'OlineVoiceMaskRealmChatRoom_create_time':
            _olineVoiceMaskRealmChatRoomCreateTime,
        'OlineVoiceMaskRealmChatRoom_create_id':
            _olineVoiceMaskRealmChatRoomCreateId,
        'OlineVoiceMaskRealmChatRoom_create_type':
            _olineVoiceMaskRealmChatRoomCreateType,
        'OlineVoiceMaskRealmChatRoom_comments':
            _olineVoiceMaskRealmChatRoomComments
                ?.map((e) => e.toMap())
                .toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineVoiceMaskRealmChatRoom_id': serializeParam(
          _olineVoiceMaskRealmChatRoomId,
          ParamType.int,
        ),
        'OlineVoiceMaskRealmChatRoom_name': serializeParam(
          _olineVoiceMaskRealmChatRoomName,
          ParamType.String,
        ),
        'OlineVoiceMaskRealmChatRoom_show': serializeParam(
          _olineVoiceMaskRealmChatRoomShow,
          ParamType.String,
        ),
        'OlineVoiceMaskRealmChatRoom_number': serializeParam(
          _olineVoiceMaskRealmChatRoomNumber,
          ParamType.int,
        ),
        'OlineVoiceMaskRealmChatRoom_join_users': serializeParam(
          _olineVoiceMaskRealmChatRoomJoinUsers,
          ParamType.int,
          isList: true,
        ),
        'OlineVoiceMaskRealmChatRoom_hot': serializeParam(
          _olineVoiceMaskRealmChatRoomHot,
          ParamType.bool,
        ),
        'OlineVoiceMaskRealmChatRoom_create_time': serializeParam(
          _olineVoiceMaskRealmChatRoomCreateTime,
          ParamType.DateTime,
        ),
        'OlineVoiceMaskRealmChatRoom_create_id': serializeParam(
          _olineVoiceMaskRealmChatRoomCreateId,
          ParamType.int,
        ),
        'OlineVoiceMaskRealmChatRoom_create_type': serializeParam(
          _olineVoiceMaskRealmChatRoomCreateType,
          ParamType.String,
        ),
        'OlineVoiceMaskRealmChatRoom_comments': serializeParam(
          _olineVoiceMaskRealmChatRoomComments,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static OlineVoiceMaskRealmChatRoomStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineVoiceMaskRealmChatRoomStruct(
        olineVoiceMaskRealmChatRoomId: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_id'],
          ParamType.int,
          false,
        ),
        olineVoiceMaskRealmChatRoomName: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_name'],
          ParamType.String,
          false,
        ),
        olineVoiceMaskRealmChatRoomShow: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_show'],
          ParamType.String,
          false,
        ),
        olineVoiceMaskRealmChatRoomNumber: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_number'],
          ParamType.int,
          false,
        ),
        olineVoiceMaskRealmChatRoomJoinUsers: deserializeParam<int>(
          data['OlineVoiceMaskRealmChatRoom_join_users'],
          ParamType.int,
          true,
        ),
        olineVoiceMaskRealmChatRoomHot: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_hot'],
          ParamType.bool,
          false,
        ),
        olineVoiceMaskRealmChatRoomCreateTime: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_create_time'],
          ParamType.DateTime,
          false,
        ),
        olineVoiceMaskRealmChatRoomCreateId: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_create_id'],
          ParamType.int,
          false,
        ),
        olineVoiceMaskRealmChatRoomCreateType: deserializeParam(
          data['OlineVoiceMaskRealmChatRoom_create_type'],
          ParamType.String,
          false,
        ),
        olineVoiceMaskRealmChatRoomComments:
            deserializeStructParam<OlineRoleplayNexusCommentStruct>(
          data['OlineVoiceMaskRealmChatRoom_comments'],
          ParamType.DataStruct,
          true,
          structBuilder: OlineRoleplayNexusCommentStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OlineVoiceMaskRealmChatRoomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OlineVoiceMaskRealmChatRoomStruct &&
        olineVoiceMaskRealmChatRoomId == other.olineVoiceMaskRealmChatRoomId &&
        olineVoiceMaskRealmChatRoomName ==
            other.olineVoiceMaskRealmChatRoomName &&
        olineVoiceMaskRealmChatRoomShow ==
            other.olineVoiceMaskRealmChatRoomShow &&
        olineVoiceMaskRealmChatRoomNumber ==
            other.olineVoiceMaskRealmChatRoomNumber &&
        listEquality.equals(olineVoiceMaskRealmChatRoomJoinUsers,
            other.olineVoiceMaskRealmChatRoomJoinUsers) &&
        olineVoiceMaskRealmChatRoomHot ==
            other.olineVoiceMaskRealmChatRoomHot &&
        olineVoiceMaskRealmChatRoomCreateTime ==
            other.olineVoiceMaskRealmChatRoomCreateTime &&
        olineVoiceMaskRealmChatRoomCreateId ==
            other.olineVoiceMaskRealmChatRoomCreateId &&
        olineVoiceMaskRealmChatRoomCreateType ==
            other.olineVoiceMaskRealmChatRoomCreateType &&
        listEquality.equals(olineVoiceMaskRealmChatRoomComments,
            other.olineVoiceMaskRealmChatRoomComments);
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineVoiceMaskRealmChatRoomId,
        olineVoiceMaskRealmChatRoomName,
        olineVoiceMaskRealmChatRoomShow,
        olineVoiceMaskRealmChatRoomNumber,
        olineVoiceMaskRealmChatRoomJoinUsers,
        olineVoiceMaskRealmChatRoomHot,
        olineVoiceMaskRealmChatRoomCreateTime,
        olineVoiceMaskRealmChatRoomCreateId,
        olineVoiceMaskRealmChatRoomCreateType,
        olineVoiceMaskRealmChatRoomComments
      ]);
}

OlineVoiceMaskRealmChatRoomStruct createOlineVoiceMaskRealmChatRoomStruct({
  int? olineVoiceMaskRealmChatRoomId,
  String? olineVoiceMaskRealmChatRoomName,
  String? olineVoiceMaskRealmChatRoomShow,
  int? olineVoiceMaskRealmChatRoomNumber,
  bool? olineVoiceMaskRealmChatRoomHot,
  DateTime? olineVoiceMaskRealmChatRoomCreateTime,
  int? olineVoiceMaskRealmChatRoomCreateId,
  String? olineVoiceMaskRealmChatRoomCreateType,
}) =>
    OlineVoiceMaskRealmChatRoomStruct(
      olineVoiceMaskRealmChatRoomId: olineVoiceMaskRealmChatRoomId,
      olineVoiceMaskRealmChatRoomName: olineVoiceMaskRealmChatRoomName,
      olineVoiceMaskRealmChatRoomShow: olineVoiceMaskRealmChatRoomShow,
      olineVoiceMaskRealmChatRoomNumber: olineVoiceMaskRealmChatRoomNumber,
      olineVoiceMaskRealmChatRoomHot: olineVoiceMaskRealmChatRoomHot,
      olineVoiceMaskRealmChatRoomCreateTime:
          olineVoiceMaskRealmChatRoomCreateTime,
      olineVoiceMaskRealmChatRoomCreateId: olineVoiceMaskRealmChatRoomCreateId,
      olineVoiceMaskRealmChatRoomCreateType:
          olineVoiceMaskRealmChatRoomCreateType,
    );

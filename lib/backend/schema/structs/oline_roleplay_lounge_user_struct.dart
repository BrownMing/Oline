// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';

class OlineRoleplayLoungeUserStruct extends BaseStruct {
  OlineRoleplayLoungeUserStruct({
    int? olineRoleplayLoungeUserId,
    String? olineRoleplayLoungeUserEmail,
    String? olineRoleplayLoungeUserPassword,
    String? olineRoleplayLoungeUserName,
    String? olineRoleplayLoungeUserAvator,
    String? olineRoleplayLoungeUserDescribe,
    int? olineRoleplayLoungeUserBalance,
    List<int>? olineRoleplayLoungeUserFollowings,
    List<int>? olineRoleplayLoungeUserFans,
    List<int>? olineRoleplayLoungeUserBlocklist,
    DateTime? olineRoleplayLoungeUserCreateTime,
  })  : _olineRoleplayLoungeUserId = olineRoleplayLoungeUserId,
        _olineRoleplayLoungeUserEmail = olineRoleplayLoungeUserEmail,
        _olineRoleplayLoungeUserPassword = olineRoleplayLoungeUserPassword,
        _olineRoleplayLoungeUserName = olineRoleplayLoungeUserName,
        _olineRoleplayLoungeUserAvator = olineRoleplayLoungeUserAvator,
        _olineRoleplayLoungeUserDescribe = olineRoleplayLoungeUserDescribe,
        _olineRoleplayLoungeUserBalance = olineRoleplayLoungeUserBalance,
        _olineRoleplayLoungeUserFollowings = olineRoleplayLoungeUserFollowings,
        _olineRoleplayLoungeUserFans = olineRoleplayLoungeUserFans,
        _olineRoleplayLoungeUserBlocklist = olineRoleplayLoungeUserBlocklist,
        _olineRoleplayLoungeUserCreateTime = olineRoleplayLoungeUserCreateTime;

  // "OlineRoleplayLoungeUser_id" field.
  int? _olineRoleplayLoungeUserId;
  int get olineRoleplayLoungeUserId => _olineRoleplayLoungeUserId ?? 0;
  set olineRoleplayLoungeUserId(int? val) => _olineRoleplayLoungeUserId = val;

  void incrementOlineRoleplayLoungeUserId(int amount) =>
      olineRoleplayLoungeUserId = olineRoleplayLoungeUserId + amount;

  bool hasOlineRoleplayLoungeUserId() => _olineRoleplayLoungeUserId != null;

  // "OlineRoleplayLoungeUser_email" field.
  String? _olineRoleplayLoungeUserEmail;
  String get olineRoleplayLoungeUserEmail =>
      _olineRoleplayLoungeUserEmail ?? '';
  set olineRoleplayLoungeUserEmail(String? val) =>
      _olineRoleplayLoungeUserEmail = val;

  bool hasOlineRoleplayLoungeUserEmail() =>
      _olineRoleplayLoungeUserEmail != null;

  // "OlineRoleplayLoungeUser_password" field.
  String? _olineRoleplayLoungeUserPassword;
  String get olineRoleplayLoungeUserPassword =>
      _olineRoleplayLoungeUserPassword ?? '';
  set olineRoleplayLoungeUserPassword(String? val) =>
      _olineRoleplayLoungeUserPassword = val;

  bool hasOlineRoleplayLoungeUserPassword() =>
      _olineRoleplayLoungeUserPassword != null;

  // "OlineRoleplayLoungeUser_name" field.
  String? _olineRoleplayLoungeUserName;
  String get olineRoleplayLoungeUserName => _olineRoleplayLoungeUserName ?? '';
  set olineRoleplayLoungeUserName(String? val) =>
      _olineRoleplayLoungeUserName = val;

  bool hasOlineRoleplayLoungeUserName() => _olineRoleplayLoungeUserName != null;

  // "OlineRoleplayLoungeUser_avator" field.
  String? _olineRoleplayLoungeUserAvator;
  String get olineRoleplayLoungeUserAvator =>
      _olineRoleplayLoungeUserAvator ?? '';
  set olineRoleplayLoungeUserAvator(String? val) =>
      _olineRoleplayLoungeUserAvator = val;

  bool hasOlineRoleplayLoungeUserAvator() =>
      _olineRoleplayLoungeUserAvator != null;

  // "OlineRoleplayLoungeUser_describe" field.
  String? _olineRoleplayLoungeUserDescribe;
  String get olineRoleplayLoungeUserDescribe =>
      _olineRoleplayLoungeUserDescribe ?? '';
  set olineRoleplayLoungeUserDescribe(String? val) =>
      _olineRoleplayLoungeUserDescribe = val;

  bool hasOlineRoleplayLoungeUserDescribe() =>
      _olineRoleplayLoungeUserDescribe != null;

  // "OlineRoleplayLoungeUser_balance" field.
  int? _olineRoleplayLoungeUserBalance;
  int get olineRoleplayLoungeUserBalance =>
      _olineRoleplayLoungeUserBalance ?? 0;
  set olineRoleplayLoungeUserBalance(int? val) =>
      _olineRoleplayLoungeUserBalance = val;

  void incrementOlineRoleplayLoungeUserBalance(int amount) =>
      olineRoleplayLoungeUserBalance = olineRoleplayLoungeUserBalance + amount;

  bool hasOlineRoleplayLoungeUserBalance() =>
      _olineRoleplayLoungeUserBalance != null;

  // "OlineRoleplayLoungeUser_followings" field.
  List<int>? _olineRoleplayLoungeUserFollowings;
  List<int> get olineRoleplayLoungeUserFollowings =>
      _olineRoleplayLoungeUserFollowings ?? const [];
  set olineRoleplayLoungeUserFollowings(List<int>? val) =>
      _olineRoleplayLoungeUserFollowings = val;

  void updateOlineRoleplayLoungeUserFollowings(Function(List<int>) updateFn) {
    updateFn(_olineRoleplayLoungeUserFollowings ??= []);
  }

  bool hasOlineRoleplayLoungeUserFollowings() =>
      _olineRoleplayLoungeUserFollowings != null;

  // "OlineRoleplayLoungeUser_fans" field.
  List<int>? _olineRoleplayLoungeUserFans;
  List<int> get olineRoleplayLoungeUserFans =>
      _olineRoleplayLoungeUserFans ?? const [];
  set olineRoleplayLoungeUserFans(List<int>? val) =>
      _olineRoleplayLoungeUserFans = val;

  void updateOlineRoleplayLoungeUserFans(Function(List<int>) updateFn) {
    updateFn(_olineRoleplayLoungeUserFans ??= []);
  }

  bool hasOlineRoleplayLoungeUserFans() => _olineRoleplayLoungeUserFans != null;

  // "OlineRoleplayLoungeUser_blocklist" field.
  List<int>? _olineRoleplayLoungeUserBlocklist;
  List<int> get olineRoleplayLoungeUserBlocklist =>
      _olineRoleplayLoungeUserBlocklist ?? const [];
  set olineRoleplayLoungeUserBlocklist(List<int>? val) =>
      _olineRoleplayLoungeUserBlocklist = val;

  void updateOlineRoleplayLoungeUserBlocklist(Function(List<int>) updateFn) {
    updateFn(_olineRoleplayLoungeUserBlocklist ??= []);
  }

  bool hasOlineRoleplayLoungeUserBlocklist() =>
      _olineRoleplayLoungeUserBlocklist != null;

  // "OlineRoleplayLoungeUser_create_time" field.
  DateTime? _olineRoleplayLoungeUserCreateTime;
  DateTime? get olineRoleplayLoungeUserCreateTime =>
      _olineRoleplayLoungeUserCreateTime;
  set olineRoleplayLoungeUserCreateTime(DateTime? val) =>
      _olineRoleplayLoungeUserCreateTime = val;

  bool hasOlineRoleplayLoungeUserCreateTime() =>
      _olineRoleplayLoungeUserCreateTime != null;

  static OlineRoleplayLoungeUserStruct fromMap(Map<String, dynamic> data) =>
      OlineRoleplayLoungeUserStruct(
        olineRoleplayLoungeUserId:
            castToType<int>(data['OlineRoleplayLoungeUser_id']),
        olineRoleplayLoungeUserEmail:
            data['OlineRoleplayLoungeUser_email'] as String?,
        olineRoleplayLoungeUserPassword:
            data['OlineRoleplayLoungeUser_password'] as String?,
        olineRoleplayLoungeUserName:
            data['OlineRoleplayLoungeUser_name'] as String?,
        olineRoleplayLoungeUserAvator:
            data['OlineRoleplayLoungeUser_avator'] as String?,
        olineRoleplayLoungeUserDescribe:
            data['OlineRoleplayLoungeUser_describe'] as String?,
        olineRoleplayLoungeUserBalance:
            castToType<int>(data['OlineRoleplayLoungeUser_balance']),
        olineRoleplayLoungeUserFollowings:
            getDataList(data['OlineRoleplayLoungeUser_followings']),
        olineRoleplayLoungeUserFans:
            getDataList(data['OlineRoleplayLoungeUser_fans']),
        olineRoleplayLoungeUserBlocklist:
            getDataList(data['OlineRoleplayLoungeUser_blocklist']),
        olineRoleplayLoungeUserCreateTime:
            data['OlineRoleplayLoungeUser_create_time'] as DateTime?,
      );

  static OlineRoleplayLoungeUserStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? OlineRoleplayLoungeUserStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'OlineRoleplayLoungeUser_id': _olineRoleplayLoungeUserId,
        'OlineRoleplayLoungeUser_email': _olineRoleplayLoungeUserEmail,
        'OlineRoleplayLoungeUser_password': _olineRoleplayLoungeUserPassword,
        'OlineRoleplayLoungeUser_name': _olineRoleplayLoungeUserName,
        'OlineRoleplayLoungeUser_avator': _olineRoleplayLoungeUserAvator,
        'OlineRoleplayLoungeUser_describe': _olineRoleplayLoungeUserDescribe,
        'OlineRoleplayLoungeUser_balance': _olineRoleplayLoungeUserBalance,
        'OlineRoleplayLoungeUser_followings':
            _olineRoleplayLoungeUserFollowings,
        'OlineRoleplayLoungeUser_fans': _olineRoleplayLoungeUserFans,
        'OlineRoleplayLoungeUser_blocklist': _olineRoleplayLoungeUserBlocklist,
        'OlineRoleplayLoungeUser_create_time':
            _olineRoleplayLoungeUserCreateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineRoleplayLoungeUser_id': serializeParam(
          _olineRoleplayLoungeUserId,
          ParamType.int,
        ),
        'OlineRoleplayLoungeUser_email': serializeParam(
          _olineRoleplayLoungeUserEmail,
          ParamType.String,
        ),
        'OlineRoleplayLoungeUser_password': serializeParam(
          _olineRoleplayLoungeUserPassword,
          ParamType.String,
        ),
        'OlineRoleplayLoungeUser_name': serializeParam(
          _olineRoleplayLoungeUserName,
          ParamType.String,
        ),
        'OlineRoleplayLoungeUser_avator': serializeParam(
          _olineRoleplayLoungeUserAvator,
          ParamType.String,
        ),
        'OlineRoleplayLoungeUser_describe': serializeParam(
          _olineRoleplayLoungeUserDescribe,
          ParamType.String,
        ),
        'OlineRoleplayLoungeUser_balance': serializeParam(
          _olineRoleplayLoungeUserBalance,
          ParamType.int,
        ),
        'OlineRoleplayLoungeUser_followings': serializeParam(
          _olineRoleplayLoungeUserFollowings,
          ParamType.int,
          isList: true,
        ),
        'OlineRoleplayLoungeUser_fans': serializeParam(
          _olineRoleplayLoungeUserFans,
          ParamType.int,
          isList: true,
        ),
        'OlineRoleplayLoungeUser_blocklist': serializeParam(
          _olineRoleplayLoungeUserBlocklist,
          ParamType.int,
          isList: true,
        ),
        'OlineRoleplayLoungeUser_create_time': serializeParam(
          _olineRoleplayLoungeUserCreateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static OlineRoleplayLoungeUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineRoleplayLoungeUserStruct(
        olineRoleplayLoungeUserId: deserializeParam(
          data['OlineRoleplayLoungeUser_id'],
          ParamType.int,
          false,
        ),
        olineRoleplayLoungeUserEmail: deserializeParam(
          data['OlineRoleplayLoungeUser_email'],
          ParamType.String,
          false,
        ),
        olineRoleplayLoungeUserPassword: deserializeParam(
          data['OlineRoleplayLoungeUser_password'],
          ParamType.String,
          false,
        ),
        olineRoleplayLoungeUserName: deserializeParam(
          data['OlineRoleplayLoungeUser_name'],
          ParamType.String,
          false,
        ),
        olineRoleplayLoungeUserAvator: deserializeParam(
          data['OlineRoleplayLoungeUser_avator'],
          ParamType.String,
          false,
        ),
        olineRoleplayLoungeUserDescribe: deserializeParam(
          data['OlineRoleplayLoungeUser_describe'],
          ParamType.String,
          false,
        ),
        olineRoleplayLoungeUserBalance: deserializeParam(
          data['OlineRoleplayLoungeUser_balance'],
          ParamType.int,
          false,
        ),
        olineRoleplayLoungeUserFollowings: deserializeParam<int>(
          data['OlineRoleplayLoungeUser_followings'],
          ParamType.int,
          true,
        ),
        olineRoleplayLoungeUserFans: deserializeParam<int>(
          data['OlineRoleplayLoungeUser_fans'],
          ParamType.int,
          true,
        ),
        olineRoleplayLoungeUserBlocklist: deserializeParam<int>(
          data['OlineRoleplayLoungeUser_blocklist'],
          ParamType.int,
          true,
        ),
        olineRoleplayLoungeUserCreateTime: deserializeParam(
          data['OlineRoleplayLoungeUser_create_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'OlineRoleplayLoungeUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OlineRoleplayLoungeUserStruct &&
        olineRoleplayLoungeUserId == other.olineRoleplayLoungeUserId &&
        olineRoleplayLoungeUserEmail == other.olineRoleplayLoungeUserEmail &&
        olineRoleplayLoungeUserPassword ==
            other.olineRoleplayLoungeUserPassword &&
        olineRoleplayLoungeUserName == other.olineRoleplayLoungeUserName &&
        olineRoleplayLoungeUserAvator == other.olineRoleplayLoungeUserAvator &&
        olineRoleplayLoungeUserDescribe ==
            other.olineRoleplayLoungeUserDescribe &&
        olineRoleplayLoungeUserBalance ==
            other.olineRoleplayLoungeUserBalance &&
        listEquality.equals(olineRoleplayLoungeUserFollowings,
            other.olineRoleplayLoungeUserFollowings) &&
        listEquality.equals(
            olineRoleplayLoungeUserFans, other.olineRoleplayLoungeUserFans) &&
        listEquality.equals(olineRoleplayLoungeUserBlocklist,
            other.olineRoleplayLoungeUserBlocklist) &&
        olineRoleplayLoungeUserCreateTime ==
            other.olineRoleplayLoungeUserCreateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineRoleplayLoungeUserId,
        olineRoleplayLoungeUserEmail,
        olineRoleplayLoungeUserPassword,
        olineRoleplayLoungeUserName,
        olineRoleplayLoungeUserAvator,
        olineRoleplayLoungeUserDescribe,
        olineRoleplayLoungeUserBalance,
        olineRoleplayLoungeUserFollowings,
        olineRoleplayLoungeUserFans,
        olineRoleplayLoungeUserBlocklist,
        olineRoleplayLoungeUserCreateTime
      ]);
}

OlineRoleplayLoungeUserStruct createOlineRoleplayLoungeUserStruct({
  int? olineRoleplayLoungeUserId,
  String? olineRoleplayLoungeUserEmail,
  String? olineRoleplayLoungeUserPassword,
  String? olineRoleplayLoungeUserName,
  String? olineRoleplayLoungeUserAvator,
  String? olineRoleplayLoungeUserDescribe,
  int? olineRoleplayLoungeUserBalance,
  DateTime? olineRoleplayLoungeUserCreateTime,
}) =>
    OlineRoleplayLoungeUserStruct(
      olineRoleplayLoungeUserId: olineRoleplayLoungeUserId,
      olineRoleplayLoungeUserEmail: olineRoleplayLoungeUserEmail,
      olineRoleplayLoungeUserPassword: olineRoleplayLoungeUserPassword,
      olineRoleplayLoungeUserName: olineRoleplayLoungeUserName,
      olineRoleplayLoungeUserAvator: olineRoleplayLoungeUserAvator,
      olineRoleplayLoungeUserDescribe: olineRoleplayLoungeUserDescribe,
      olineRoleplayLoungeUserBalance: olineRoleplayLoungeUserBalance,
      olineRoleplayLoungeUserCreateTime: olineRoleplayLoungeUserCreateTime,
    );

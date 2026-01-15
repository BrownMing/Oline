// ignore_for_file: unnecessary_getters_setters

import 'index.dart';
import '../../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';

class OlineFictionVoiceHallPostStruct extends BaseStruct {
  OlineFictionVoiceHallPostStruct({
    int? olineFictionVoiceHallPostId,
    List<String>? olineFictionVoiceHallPostShow,
    int? olineFictionVoiceHallPostCreateId,
    String? olineFictionVoiceHallPostDescribe,
    List<int>? olineFictionVoiceHallPostLikeUsers,
    DateTime? olineFictionVoiceHallPostCreateTime,
    List<OlineRoleplayNexusCommentStruct>? olineFictionVoiceHallPostComments,
  })  : _olineFictionVoiceHallPostId = olineFictionVoiceHallPostId,
        _olineFictionVoiceHallPostShow = olineFictionVoiceHallPostShow,
        _olineFictionVoiceHallPostCreateId = olineFictionVoiceHallPostCreateId,
        _olineFictionVoiceHallPostDescribe = olineFictionVoiceHallPostDescribe,
        _olineFictionVoiceHallPostLikeUsers =
            olineFictionVoiceHallPostLikeUsers,
        _olineFictionVoiceHallPostCreateTime =
            olineFictionVoiceHallPostCreateTime,
        _olineFictionVoiceHallPostComments = olineFictionVoiceHallPostComments;

  // "OlineFictionVoiceHallPost_id" field.
  int? _olineFictionVoiceHallPostId;
  int get olineFictionVoiceHallPostId => _olineFictionVoiceHallPostId ?? 0;
  set olineFictionVoiceHallPostId(int? val) =>
      _olineFictionVoiceHallPostId = val;

  void incrementOlineFictionVoiceHallPostId(int amount) =>
      olineFictionVoiceHallPostId = olineFictionVoiceHallPostId + amount;

  bool hasOlineFictionVoiceHallPostId() => _olineFictionVoiceHallPostId != null;

  // "OlineFictionVoiceHallPost_show" field.
  List<String>? _olineFictionVoiceHallPostShow;
  List<String> get olineFictionVoiceHallPostShow =>
      _olineFictionVoiceHallPostShow ?? const [];
  set olineFictionVoiceHallPostShow(List<String>? val) =>
      _olineFictionVoiceHallPostShow = val;

  void updateOlineFictionVoiceHallPostShow(Function(List<String>) updateFn) {
    updateFn(_olineFictionVoiceHallPostShow ??= []);
  }

  bool hasOlineFictionVoiceHallPostShow() =>
      _olineFictionVoiceHallPostShow != null;

  // "OlineFictionVoiceHallPost_create_id" field.
  int? _olineFictionVoiceHallPostCreateId;
  int get olineFictionVoiceHallPostCreateId =>
      _olineFictionVoiceHallPostCreateId ?? 0;
  set olineFictionVoiceHallPostCreateId(int? val) =>
      _olineFictionVoiceHallPostCreateId = val;

  void incrementOlineFictionVoiceHallPostCreateId(int amount) =>
      olineFictionVoiceHallPostCreateId =
          olineFictionVoiceHallPostCreateId + amount;

  bool hasOlineFictionVoiceHallPostCreateId() =>
      _olineFictionVoiceHallPostCreateId != null;

  // "OlineFictionVoiceHallPost_describe" field.
  String? _olineFictionVoiceHallPostDescribe;
  String get olineFictionVoiceHallPostDescribe =>
      _olineFictionVoiceHallPostDescribe ?? '';
  set olineFictionVoiceHallPostDescribe(String? val) =>
      _olineFictionVoiceHallPostDescribe = val;

  bool hasOlineFictionVoiceHallPostDescribe() =>
      _olineFictionVoiceHallPostDescribe != null;

  // "OlineFictionVoiceHallPost_like_users" field.
  List<int>? _olineFictionVoiceHallPostLikeUsers;
  List<int> get olineFictionVoiceHallPostLikeUsers =>
      _olineFictionVoiceHallPostLikeUsers ?? const [];
  set olineFictionVoiceHallPostLikeUsers(List<int>? val) =>
      _olineFictionVoiceHallPostLikeUsers = val;

  void updateOlineFictionVoiceHallPostLikeUsers(Function(List<int>) updateFn) {
    updateFn(_olineFictionVoiceHallPostLikeUsers ??= []);
  }

  bool hasOlineFictionVoiceHallPostLikeUsers() =>
      _olineFictionVoiceHallPostLikeUsers != null;

  // "OlineFictionVoiceHallPost_create_time" field.
  DateTime? _olineFictionVoiceHallPostCreateTime;
  DateTime? get olineFictionVoiceHallPostCreateTime =>
      _olineFictionVoiceHallPostCreateTime;
  set olineFictionVoiceHallPostCreateTime(DateTime? val) =>
      _olineFictionVoiceHallPostCreateTime = val;

  bool hasOlineFictionVoiceHallPostCreateTime() =>
      _olineFictionVoiceHallPostCreateTime != null;

  // "OlineFictionVoiceHallPost_comments" field.
  List<OlineRoleplayNexusCommentStruct>? _olineFictionVoiceHallPostComments;
  List<OlineRoleplayNexusCommentStruct> get olineFictionVoiceHallPostComments =>
      _olineFictionVoiceHallPostComments ?? const [];
  set olineFictionVoiceHallPostComments(
          List<OlineRoleplayNexusCommentStruct>? val) =>
      _olineFictionVoiceHallPostComments = val;

  void updateOlineFictionVoiceHallPostComments(
      Function(List<OlineRoleplayNexusCommentStruct>) updateFn) {
    updateFn(_olineFictionVoiceHallPostComments ??= []);
  }

  bool hasOlineFictionVoiceHallPostComments() =>
      _olineFictionVoiceHallPostComments != null;

  static OlineFictionVoiceHallPostStruct fromMap(Map<String, dynamic> data) =>
      OlineFictionVoiceHallPostStruct(
        olineFictionVoiceHallPostId:
            castToType<int>(data['OlineFictionVoiceHallPost_id']),
        olineFictionVoiceHallPostShow:
            getDataList(data['OlineFictionVoiceHallPost_show']),
        olineFictionVoiceHallPostCreateId:
            castToType<int>(data['OlineFictionVoiceHallPost_create_id']),
        olineFictionVoiceHallPostDescribe:
            data['OlineFictionVoiceHallPost_describe'] as String?,
        olineFictionVoiceHallPostLikeUsers:
            getDataList(data['OlineFictionVoiceHallPost_like_users']),
        olineFictionVoiceHallPostCreateTime:
            data['OlineFictionVoiceHallPost_create_time'] as DateTime?,
        olineFictionVoiceHallPostComments: getStructList(
          data['OlineFictionVoiceHallPost_comments'],
          OlineRoleplayNexusCommentStruct.fromMap,
        ),
      );

  static OlineFictionVoiceHallPostStruct? maybeFromMap(dynamic data) => data
          is Map
      ? OlineFictionVoiceHallPostStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OlineFictionVoiceHallPost_id': _olineFictionVoiceHallPostId,
        'OlineFictionVoiceHallPost_show': _olineFictionVoiceHallPostShow,
        'OlineFictionVoiceHallPost_create_id':
            _olineFictionVoiceHallPostCreateId,
        'OlineFictionVoiceHallPost_describe':
            _olineFictionVoiceHallPostDescribe,
        'OlineFictionVoiceHallPost_like_users':
            _olineFictionVoiceHallPostLikeUsers,
        'OlineFictionVoiceHallPost_create_time':
            _olineFictionVoiceHallPostCreateTime,
        'OlineFictionVoiceHallPost_comments':
            _olineFictionVoiceHallPostComments?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineFictionVoiceHallPost_id': serializeParam(
          _olineFictionVoiceHallPostId,
          ParamType.int,
        ),
        'OlineFictionVoiceHallPost_show': serializeParam(
          _olineFictionVoiceHallPostShow,
          ParamType.String,
          isList: true,
        ),
        'OlineFictionVoiceHallPost_create_id': serializeParam(
          _olineFictionVoiceHallPostCreateId,
          ParamType.int,
        ),
        'OlineFictionVoiceHallPost_describe': serializeParam(
          _olineFictionVoiceHallPostDescribe,
          ParamType.String,
        ),
        'OlineFictionVoiceHallPost_like_users': serializeParam(
          _olineFictionVoiceHallPostLikeUsers,
          ParamType.int,
          isList: true,
        ),
        'OlineFictionVoiceHallPost_create_time': serializeParam(
          _olineFictionVoiceHallPostCreateTime,
          ParamType.DateTime,
        ),
        'OlineFictionVoiceHallPost_comments': serializeParam(
          _olineFictionVoiceHallPostComments,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static OlineFictionVoiceHallPostStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineFictionVoiceHallPostStruct(
        olineFictionVoiceHallPostId: deserializeParam(
          data['OlineFictionVoiceHallPost_id'],
          ParamType.int,
          false,
        ),
        olineFictionVoiceHallPostShow: deserializeParam<String>(
          data['OlineFictionVoiceHallPost_show'],
          ParamType.String,
          true,
        ),
        olineFictionVoiceHallPostCreateId: deserializeParam(
          data['OlineFictionVoiceHallPost_create_id'],
          ParamType.int,
          false,
        ),
        olineFictionVoiceHallPostDescribe: deserializeParam(
          data['OlineFictionVoiceHallPost_describe'],
          ParamType.String,
          false,
        ),
        olineFictionVoiceHallPostLikeUsers: deserializeParam<int>(
          data['OlineFictionVoiceHallPost_like_users'],
          ParamType.int,
          true,
        ),
        olineFictionVoiceHallPostCreateTime: deserializeParam(
          data['OlineFictionVoiceHallPost_create_time'],
          ParamType.DateTime,
          false,
        ),
        olineFictionVoiceHallPostComments:
            deserializeStructParam<OlineRoleplayNexusCommentStruct>(
          data['OlineFictionVoiceHallPost_comments'],
          ParamType.DataStruct,
          true,
          structBuilder: OlineRoleplayNexusCommentStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OlineFictionVoiceHallPostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OlineFictionVoiceHallPostStruct &&
        olineFictionVoiceHallPostId == other.olineFictionVoiceHallPostId &&
        listEquality.equals(olineFictionVoiceHallPostShow,
            other.olineFictionVoiceHallPostShow) &&
        olineFictionVoiceHallPostCreateId ==
            other.olineFictionVoiceHallPostCreateId &&
        olineFictionVoiceHallPostDescribe ==
            other.olineFictionVoiceHallPostDescribe &&
        listEquality.equals(olineFictionVoiceHallPostLikeUsers,
            other.olineFictionVoiceHallPostLikeUsers) &&
        olineFictionVoiceHallPostCreateTime ==
            other.olineFictionVoiceHallPostCreateTime &&
        listEquality.equals(olineFictionVoiceHallPostComments,
            other.olineFictionVoiceHallPostComments);
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineFictionVoiceHallPostId,
        olineFictionVoiceHallPostShow,
        olineFictionVoiceHallPostCreateId,
        olineFictionVoiceHallPostDescribe,
        olineFictionVoiceHallPostLikeUsers,
        olineFictionVoiceHallPostCreateTime,
        olineFictionVoiceHallPostComments
      ]);
}

OlineFictionVoiceHallPostStruct createOlineFictionVoiceHallPostStruct({
  int? olineFictionVoiceHallPostId,
  int? olineFictionVoiceHallPostCreateId,
  String? olineFictionVoiceHallPostDescribe,
  DateTime? olineFictionVoiceHallPostCreateTime,
}) =>
    OlineFictionVoiceHallPostStruct(
      olineFictionVoiceHallPostId: olineFictionVoiceHallPostId,
      olineFictionVoiceHallPostCreateId: olineFictionVoiceHallPostCreateId,
      olineFictionVoiceHallPostDescribe: olineFictionVoiceHallPostDescribe,
      olineFictionVoiceHallPostCreateTime: olineFictionVoiceHallPostCreateTime,
    );

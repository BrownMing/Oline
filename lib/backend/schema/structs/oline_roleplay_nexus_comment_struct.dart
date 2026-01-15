// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';

class OlineRoleplayNexusCommentStruct extends BaseStruct {
  OlineRoleplayNexusCommentStruct({
    String? olineRoleplayNexusCommentContent,
    int? olineRoleplayNexusCommentCreateId,
    DateTime? olineRoleplayNexusCommentDate,
    String? olineRoleplayNexusCommentAudio,
    String? olineRoleplayNexusCommentAudioTime,
  })  : _olineRoleplayNexusCommentContent = olineRoleplayNexusCommentContent,
        _olineRoleplayNexusCommentCreateId = olineRoleplayNexusCommentCreateId,
        _olineRoleplayNexusCommentDate = olineRoleplayNexusCommentDate,
        _olineRoleplayNexusCommentAudio = olineRoleplayNexusCommentAudio,
        _olineRoleplayNexusCommentAudioTime =
            olineRoleplayNexusCommentAudioTime;

  // "OlineRoleplayNexusComment_content" field.
  String? _olineRoleplayNexusCommentContent;
  String get olineRoleplayNexusCommentContent =>
      _olineRoleplayNexusCommentContent ?? '';
  set olineRoleplayNexusCommentContent(String? val) =>
      _olineRoleplayNexusCommentContent = val;

  bool hasOlineRoleplayNexusCommentContent() =>
      _olineRoleplayNexusCommentContent != null;

  // "OlineRoleplayNexusComment_create_id" field.
  int? _olineRoleplayNexusCommentCreateId;
  int get olineRoleplayNexusCommentCreateId =>
      _olineRoleplayNexusCommentCreateId ?? 0;
  set olineRoleplayNexusCommentCreateId(int? val) =>
      _olineRoleplayNexusCommentCreateId = val;

  void incrementOlineRoleplayNexusCommentCreateId(int amount) =>
      olineRoleplayNexusCommentCreateId =
          olineRoleplayNexusCommentCreateId + amount;

  bool hasOlineRoleplayNexusCommentCreateId() =>
      _olineRoleplayNexusCommentCreateId != null;

  // "OlineRoleplayNexusComment_date" field.
  DateTime? _olineRoleplayNexusCommentDate;
  DateTime? get olineRoleplayNexusCommentDate => _olineRoleplayNexusCommentDate;
  set olineRoleplayNexusCommentDate(DateTime? val) =>
      _olineRoleplayNexusCommentDate = val;

  bool hasOlineRoleplayNexusCommentDate() =>
      _olineRoleplayNexusCommentDate != null;

  // "OlineRoleplayNexusComment_audio" field.
  String? _olineRoleplayNexusCommentAudio;
  String get olineRoleplayNexusCommentAudio =>
      _olineRoleplayNexusCommentAudio ?? '';
  set olineRoleplayNexusCommentAudio(String? val) =>
      _olineRoleplayNexusCommentAudio = val;

  bool hasOlineRoleplayNexusCommentAudio() =>
      _olineRoleplayNexusCommentAudio != null;

  // "OlineRoleplayNexusComment_audio_time" field.
  String? _olineRoleplayNexusCommentAudioTime;
  String get olineRoleplayNexusCommentAudioTime =>
      _olineRoleplayNexusCommentAudioTime ?? '';
  set olineRoleplayNexusCommentAudioTime(String? val) =>
      _olineRoleplayNexusCommentAudioTime = val;

  bool hasOlineRoleplayNexusCommentAudioTime() =>
      _olineRoleplayNexusCommentAudioTime != null;

  static OlineRoleplayNexusCommentStruct fromMap(Map<String, dynamic> data) =>
      OlineRoleplayNexusCommentStruct(
        olineRoleplayNexusCommentContent:
            data['OlineRoleplayNexusComment_content'] as String?,
        olineRoleplayNexusCommentCreateId:
            castToType<int>(data['OlineRoleplayNexusComment_create_id']),
        olineRoleplayNexusCommentDate:
            data['OlineRoleplayNexusComment_date'] as DateTime?,
        olineRoleplayNexusCommentAudio:
            data['OlineRoleplayNexusComment_audio'] as String?,
        olineRoleplayNexusCommentAudioTime:
            data['OlineRoleplayNexusComment_audio_time'] as String?,
      );

  static OlineRoleplayNexusCommentStruct? maybeFromMap(dynamic data) => data
          is Map
      ? OlineRoleplayNexusCommentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OlineRoleplayNexusComment_content': _olineRoleplayNexusCommentContent,
        'OlineRoleplayNexusComment_create_id':
            _olineRoleplayNexusCommentCreateId,
        'OlineRoleplayNexusComment_date': _olineRoleplayNexusCommentDate,
        'OlineRoleplayNexusComment_audio': _olineRoleplayNexusCommentAudio,
        'OlineRoleplayNexusComment_audio_time':
            _olineRoleplayNexusCommentAudioTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineRoleplayNexusComment_content': serializeParam(
          _olineRoleplayNexusCommentContent,
          ParamType.String,
        ),
        'OlineRoleplayNexusComment_create_id': serializeParam(
          _olineRoleplayNexusCommentCreateId,
          ParamType.int,
        ),
        'OlineRoleplayNexusComment_date': serializeParam(
          _olineRoleplayNexusCommentDate,
          ParamType.DateTime,
        ),
        'OlineRoleplayNexusComment_audio': serializeParam(
          _olineRoleplayNexusCommentAudio,
          ParamType.String,
        ),
        'OlineRoleplayNexusComment_audio_time': serializeParam(
          _olineRoleplayNexusCommentAudioTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static OlineRoleplayNexusCommentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineRoleplayNexusCommentStruct(
        olineRoleplayNexusCommentContent: deserializeParam(
          data['OlineRoleplayNexusComment_content'],
          ParamType.String,
          false,
        ),
        olineRoleplayNexusCommentCreateId: deserializeParam(
          data['OlineRoleplayNexusComment_create_id'],
          ParamType.int,
          false,
        ),
        olineRoleplayNexusCommentDate: deserializeParam(
          data['OlineRoleplayNexusComment_date'],
          ParamType.DateTime,
          false,
        ),
        olineRoleplayNexusCommentAudio: deserializeParam(
          data['OlineRoleplayNexusComment_audio'],
          ParamType.String,
          false,
        ),
        olineRoleplayNexusCommentAudioTime: deserializeParam(
          data['OlineRoleplayNexusComment_audio_time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OlineRoleplayNexusCommentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OlineRoleplayNexusCommentStruct &&
        olineRoleplayNexusCommentContent ==
            other.olineRoleplayNexusCommentContent &&
        olineRoleplayNexusCommentCreateId ==
            other.olineRoleplayNexusCommentCreateId &&
        olineRoleplayNexusCommentDate == other.olineRoleplayNexusCommentDate &&
        olineRoleplayNexusCommentAudio ==
            other.olineRoleplayNexusCommentAudio &&
        olineRoleplayNexusCommentAudioTime ==
            other.olineRoleplayNexusCommentAudioTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineRoleplayNexusCommentContent,
        olineRoleplayNexusCommentCreateId,
        olineRoleplayNexusCommentDate,
        olineRoleplayNexusCommentAudio,
        olineRoleplayNexusCommentAudioTime
      ]);
}

OlineRoleplayNexusCommentStruct createOlineRoleplayNexusCommentStruct({
  String? olineRoleplayNexusCommentContent,
  int? olineRoleplayNexusCommentCreateId,
  DateTime? olineRoleplayNexusCommentDate,
  String? olineRoleplayNexusCommentAudio,
  String? olineRoleplayNexusCommentAudioTime,
}) =>
    OlineRoleplayNexusCommentStruct(
      olineRoleplayNexusCommentContent: olineRoleplayNexusCommentContent,
      olineRoleplayNexusCommentCreateId: olineRoleplayNexusCommentCreateId,
      olineRoleplayNexusCommentDate: olineRoleplayNexusCommentDate,
      olineRoleplayNexusCommentAudio: olineRoleplayNexusCommentAudio,
      olineRoleplayNexusCommentAudioTime: olineRoleplayNexusCommentAudioTime,
    );

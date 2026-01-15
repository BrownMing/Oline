// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';

class OlineCharacterLinkGiftStruct extends BaseStruct {
  OlineCharacterLinkGiftStruct({
    int? olineCharacterLinkGiftId,
    String? olineCharacterLinkGiftShow,
    int? olineCharacterLinkGiftBalance,
  })  : _olineCharacterLinkGiftId = olineCharacterLinkGiftId,
        _olineCharacterLinkGiftShow = olineCharacterLinkGiftShow,
        _olineCharacterLinkGiftBalance = olineCharacterLinkGiftBalance;

  // "OlineCharacterLinkGift_id" field.
  int? _olineCharacterLinkGiftId;
  int get olineCharacterLinkGiftId => _olineCharacterLinkGiftId ?? 0;
  set olineCharacterLinkGiftId(int? val) => _olineCharacterLinkGiftId = val;

  void incrementOlineCharacterLinkGiftId(int amount) =>
      olineCharacterLinkGiftId = olineCharacterLinkGiftId + amount;

  bool hasOlineCharacterLinkGiftId() => _olineCharacterLinkGiftId != null;

  // "OlineCharacterLinkGift_show" field.
  String? _olineCharacterLinkGiftShow;
  String get olineCharacterLinkGiftShow => _olineCharacterLinkGiftShow ?? '';
  set olineCharacterLinkGiftShow(String? val) =>
      _olineCharacterLinkGiftShow = val;

  bool hasOlineCharacterLinkGiftShow() => _olineCharacterLinkGiftShow != null;

  // "OlineCharacterLinkGift_balance" field.
  int? _olineCharacterLinkGiftBalance;
  int get olineCharacterLinkGiftBalance => _olineCharacterLinkGiftBalance ?? 0;
  set olineCharacterLinkGiftBalance(int? val) =>
      _olineCharacterLinkGiftBalance = val;

  void incrementOlineCharacterLinkGiftBalance(int amount) =>
      olineCharacterLinkGiftBalance = olineCharacterLinkGiftBalance + amount;

  bool hasOlineCharacterLinkGiftBalance() =>
      _olineCharacterLinkGiftBalance != null;

  static OlineCharacterLinkGiftStruct fromMap(Map<String, dynamic> data) =>
      OlineCharacterLinkGiftStruct(
        olineCharacterLinkGiftId:
            castToType<int>(data['OlineCharacterLinkGift_id']),
        olineCharacterLinkGiftShow:
            data['OlineCharacterLinkGift_show'] as String?,
        olineCharacterLinkGiftBalance:
            castToType<int>(data['OlineCharacterLinkGift_balance']),
      );

  static OlineCharacterLinkGiftStruct? maybeFromMap(dynamic data) => data is Map
      ? OlineCharacterLinkGiftStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OlineCharacterLinkGift_id': _olineCharacterLinkGiftId,
        'OlineCharacterLinkGift_show': _olineCharacterLinkGiftShow,
        'OlineCharacterLinkGift_balance': _olineCharacterLinkGiftBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OlineCharacterLinkGift_id': serializeParam(
          _olineCharacterLinkGiftId,
          ParamType.int,
        ),
        'OlineCharacterLinkGift_show': serializeParam(
          _olineCharacterLinkGiftShow,
          ParamType.String,
        ),
        'OlineCharacterLinkGift_balance': serializeParam(
          _olineCharacterLinkGiftBalance,
          ParamType.int,
        ),
      }.withoutNulls;

  static OlineCharacterLinkGiftStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OlineCharacterLinkGiftStruct(
        olineCharacterLinkGiftId: deserializeParam(
          data['OlineCharacterLinkGift_id'],
          ParamType.int,
          false,
        ),
        olineCharacterLinkGiftShow: deserializeParam(
          data['OlineCharacterLinkGift_show'],
          ParamType.String,
          false,
        ),
        olineCharacterLinkGiftBalance: deserializeParam(
          data['OlineCharacterLinkGift_balance'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OlineCharacterLinkGiftStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OlineCharacterLinkGiftStruct &&
        olineCharacterLinkGiftId == other.olineCharacterLinkGiftId &&
        olineCharacterLinkGiftShow == other.olineCharacterLinkGiftShow &&
        olineCharacterLinkGiftBalance == other.olineCharacterLinkGiftBalance;
  }

  @override
  int get hashCode => const ListEquality().hash([
        olineCharacterLinkGiftId,
        olineCharacterLinkGiftShow,
        olineCharacterLinkGiftBalance
      ]);
}

OlineCharacterLinkGiftStruct createOlineCharacterLinkGiftStruct({
  int? olineCharacterLinkGiftId,
  String? olineCharacterLinkGiftShow,
  int? olineCharacterLinkGiftBalance,
}) =>
    OlineCharacterLinkGiftStruct(
      olineCharacterLinkGiftId: olineCharacterLinkGiftId,
      olineCharacterLinkGiftShow: olineCharacterLinkGiftShow,
      olineCharacterLinkGiftBalance: olineCharacterLinkGiftBalance,
    );

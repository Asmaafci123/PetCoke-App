// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipmentModel _$ShipmentModelFromJson(Map<String, dynamic> json) {
  return _ShipmentModel.fromJson(json);
}

/// @nodoc
mixin _$ShipmentModel {
  @HiveField(0)
  String get vesselID => throw _privateConstructorUsedError;
  @HiveField(1)
  String get vesselName => throw _privateConstructorUsedError;
  @HiveField(2)
  int get fromPortId => throw _privateConstructorUsedError;
  @HiveField(3)
  int get toWHId => throw _privateConstructorUsedError;
  @HiveField(4)
  DetailsModel get deliveryNote => throw _privateConstructorUsedError;
  @HiveField(5)
  DetailsModel get analysisCardNo => throw _privateConstructorUsedError;
  @HiveField(6)
  String get driverName => throw _privateConstructorUsedError;
  @HiveField(7)
  DetailsModel get driverIDNo => throw _privateConstructorUsedError;
  @HiveField(8)
  DetailsModel get driverLicenseNo => throw _privateConstructorUsedError;
  @HiveField(9)
  String get driverMobileNo => throw _privateConstructorUsedError;
  @HiveField(10)
  String get licensePlateNo => throw _privateConstructorUsedError;
  @HiveField(11)
  DetailsModel get truckLicenseNo => throw _privateConstructorUsedError;
  @HiveField(12)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(13)
  DateTime get entryTime => throw _privateConstructorUsedError;
  @HiveField(14)
  DateTime get exittime => throw _privateConstructorUsedError;
  @HiveField(15)
  DetailsModel get netweight => throw _privateConstructorUsedError;
  @HiveField(16)
  String get notes => throw _privateConstructorUsedError;
  @HiveField(17)
  bool? get truckLicenseValidation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentModelCopyWith<ShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentModelCopyWith<$Res> {
  factory $ShipmentModelCopyWith(
          ShipmentModel value, $Res Function(ShipmentModel) then) =
      _$ShipmentModelCopyWithImpl<$Res, ShipmentModel>;
  @useResult
  $Res call(
      {@HiveField(0) String vesselID,
      @HiveField(1) String vesselName,
      @HiveField(2) int fromPortId,
      @HiveField(3) int toWHId,
      @HiveField(4) DetailsModel deliveryNote,
      @HiveField(5) DetailsModel analysisCardNo,
      @HiveField(6) String driverName,
      @HiveField(7) DetailsModel driverIDNo,
      @HiveField(8) DetailsModel driverLicenseNo,
      @HiveField(9) String driverMobileNo,
      @HiveField(10) String licensePlateNo,
      @HiveField(11) DetailsModel truckLicenseNo,
      @HiveField(12) DateTime date,
      @HiveField(13) DateTime entryTime,
      @HiveField(14) DateTime exittime,
      @HiveField(15) DetailsModel netweight,
      @HiveField(16) String notes,
      @HiveField(17) bool? truckLicenseValidation});

  $DetailsModelCopyWith<$Res> get deliveryNote;
  $DetailsModelCopyWith<$Res> get analysisCardNo;
  $DetailsModelCopyWith<$Res> get driverIDNo;
  $DetailsModelCopyWith<$Res> get driverLicenseNo;
  $DetailsModelCopyWith<$Res> get truckLicenseNo;
  $DetailsModelCopyWith<$Res> get netweight;
}

/// @nodoc
class _$ShipmentModelCopyWithImpl<$Res, $Val extends ShipmentModel>
    implements $ShipmentModelCopyWith<$Res> {
  _$ShipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vesselID = null,
    Object? vesselName = null,
    Object? fromPortId = null,
    Object? toWHId = null,
    Object? deliveryNote = null,
    Object? analysisCardNo = null,
    Object? driverName = null,
    Object? driverIDNo = null,
    Object? driverLicenseNo = null,
    Object? driverMobileNo = null,
    Object? licensePlateNo = null,
    Object? truckLicenseNo = null,
    Object? date = null,
    Object? entryTime = null,
    Object? exittime = null,
    Object? netweight = null,
    Object? notes = null,
    Object? truckLicenseValidation = freezed,
  }) {
    return _then(_value.copyWith(
      vesselID: null == vesselID
          ? _value.vesselID
          : vesselID // ignore: cast_nullable_to_non_nullable
              as String,
      vesselName: null == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String,
      fromPortId: null == fromPortId
          ? _value.fromPortId
          : fromPortId // ignore: cast_nullable_to_non_nullable
              as int,
      toWHId: null == toWHId
          ? _value.toWHId
          : toWHId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryNote: null == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      analysisCardNo: null == analysisCardNo
          ? _value.analysisCardNo
          : analysisCardNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverName: null == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverIDNo: null == driverIDNo
          ? _value.driverIDNo
          : driverIDNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverLicenseNo: null == driverLicenseNo
          ? _value.driverLicenseNo
          : driverLicenseNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverMobileNo: null == driverMobileNo
          ? _value.driverMobileNo
          : driverMobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlateNo: null == licensePlateNo
          ? _value.licensePlateNo
          : licensePlateNo // ignore: cast_nullable_to_non_nullable
              as String,
      truckLicenseNo: null == truckLicenseNo
          ? _value.truckLicenseNo
          : truckLicenseNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exittime: null == exittime
          ? _value.exittime
          : exittime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      netweight: null == netweight
          ? _value.netweight
          : netweight // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      truckLicenseValidation: freezed == truckLicenseValidation
          ? _value.truckLicenseValidation
          : truckLicenseValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get deliveryNote {
    return $DetailsModelCopyWith<$Res>(_value.deliveryNote, (value) {
      return _then(_value.copyWith(deliveryNote: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get analysisCardNo {
    return $DetailsModelCopyWith<$Res>(_value.analysisCardNo, (value) {
      return _then(_value.copyWith(analysisCardNo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get driverIDNo {
    return $DetailsModelCopyWith<$Res>(_value.driverIDNo, (value) {
      return _then(_value.copyWith(driverIDNo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get driverLicenseNo {
    return $DetailsModelCopyWith<$Res>(_value.driverLicenseNo, (value) {
      return _then(_value.copyWith(driverLicenseNo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get truckLicenseNo {
    return $DetailsModelCopyWith<$Res>(_value.truckLicenseNo, (value) {
      return _then(_value.copyWith(truckLicenseNo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsModelCopyWith<$Res> get netweight {
    return $DetailsModelCopyWith<$Res>(_value.netweight, (value) {
      return _then(_value.copyWith(netweight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipmentModelCopyWith<$Res>
    implements $ShipmentModelCopyWith<$Res> {
  factory _$$_ShipmentModelCopyWith(
          _$_ShipmentModel value, $Res Function(_$_ShipmentModel) then) =
      __$$_ShipmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String vesselID,
      @HiveField(1) String vesselName,
      @HiveField(2) int fromPortId,
      @HiveField(3) int toWHId,
      @HiveField(4) DetailsModel deliveryNote,
      @HiveField(5) DetailsModel analysisCardNo,
      @HiveField(6) String driverName,
      @HiveField(7) DetailsModel driverIDNo,
      @HiveField(8) DetailsModel driverLicenseNo,
      @HiveField(9) String driverMobileNo,
      @HiveField(10) String licensePlateNo,
      @HiveField(11) DetailsModel truckLicenseNo,
      @HiveField(12) DateTime date,
      @HiveField(13) DateTime entryTime,
      @HiveField(14) DateTime exittime,
      @HiveField(15) DetailsModel netweight,
      @HiveField(16) String notes,
      @HiveField(17) bool? truckLicenseValidation});

  @override
  $DetailsModelCopyWith<$Res> get deliveryNote;
  @override
  $DetailsModelCopyWith<$Res> get analysisCardNo;
  @override
  $DetailsModelCopyWith<$Res> get driverIDNo;
  @override
  $DetailsModelCopyWith<$Res> get driverLicenseNo;
  @override
  $DetailsModelCopyWith<$Res> get truckLicenseNo;
  @override
  $DetailsModelCopyWith<$Res> get netweight;
}

/// @nodoc
class __$$_ShipmentModelCopyWithImpl<$Res>
    extends _$ShipmentModelCopyWithImpl<$Res, _$_ShipmentModel>
    implements _$$_ShipmentModelCopyWith<$Res> {
  __$$_ShipmentModelCopyWithImpl(
      _$_ShipmentModel _value, $Res Function(_$_ShipmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vesselID = null,
    Object? vesselName = null,
    Object? fromPortId = null,
    Object? toWHId = null,
    Object? deliveryNote = null,
    Object? analysisCardNo = null,
    Object? driverName = null,
    Object? driverIDNo = null,
    Object? driverLicenseNo = null,
    Object? driverMobileNo = null,
    Object? licensePlateNo = null,
    Object? truckLicenseNo = null,
    Object? date = null,
    Object? entryTime = null,
    Object? exittime = null,
    Object? netweight = null,
    Object? notes = null,
    Object? truckLicenseValidation = freezed,
  }) {
    return _then(_$_ShipmentModel(
      vesselID: null == vesselID
          ? _value.vesselID
          : vesselID // ignore: cast_nullable_to_non_nullable
              as String,
      vesselName: null == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String,
      fromPortId: null == fromPortId
          ? _value.fromPortId
          : fromPortId // ignore: cast_nullable_to_non_nullable
              as int,
      toWHId: null == toWHId
          ? _value.toWHId
          : toWHId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryNote: null == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      analysisCardNo: null == analysisCardNo
          ? _value.analysisCardNo
          : analysisCardNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverName: null == driverName
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String,
      driverIDNo: null == driverIDNo
          ? _value.driverIDNo
          : driverIDNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverLicenseNo: null == driverLicenseNo
          ? _value.driverLicenseNo
          : driverLicenseNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      driverMobileNo: null == driverMobileNo
          ? _value.driverMobileNo
          : driverMobileNo // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlateNo: null == licensePlateNo
          ? _value.licensePlateNo
          : licensePlateNo // ignore: cast_nullable_to_non_nullable
              as String,
      truckLicenseNo: null == truckLicenseNo
          ? _value.truckLicenseNo
          : truckLicenseNo // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entryTime: null == entryTime
          ? _value.entryTime
          : entryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exittime: null == exittime
          ? _value.exittime
          : exittime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      netweight: null == netweight
          ? _value.netweight
          : netweight // ignore: cast_nullable_to_non_nullable
              as DetailsModel,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      truckLicenseValidation: freezed == truckLicenseValidation
          ? _value.truckLicenseValidation
          : truckLicenseValidation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipmentModel implements _ShipmentModel {
  _$_ShipmentModel(
      {@HiveField(0) required this.vesselID,
      @HiveField(1) required this.vesselName,
      @HiveField(2) required this.fromPortId,
      @HiveField(3) required this.toWHId,
      @HiveField(4) required this.deliveryNote,
      @HiveField(5) required this.analysisCardNo,
      @HiveField(6) required this.driverName,
      @HiveField(7) required this.driverIDNo,
      @HiveField(8) required this.driverLicenseNo,
      @HiveField(9) required this.driverMobileNo,
      @HiveField(10) required this.licensePlateNo,
      @HiveField(11) required this.truckLicenseNo,
      @HiveField(12) required this.date,
      @HiveField(13) required this.entryTime,
      @HiveField(14) required this.exittime,
      @HiveField(15) required this.netweight,
      @HiveField(16) required this.notes,
      @HiveField(17) this.truckLicenseValidation});

  factory _$_ShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentModelFromJson(json);

  @override
  @HiveField(0)
  final String vesselID;
  @override
  @HiveField(1)
  final String vesselName;
  @override
  @HiveField(2)
  final int fromPortId;
  @override
  @HiveField(3)
  final int toWHId;
  @override
  @HiveField(4)
  final DetailsModel deliveryNote;
  @override
  @HiveField(5)
  final DetailsModel analysisCardNo;
  @override
  @HiveField(6)
  final String driverName;
  @override
  @HiveField(7)
  final DetailsModel driverIDNo;
  @override
  @HiveField(8)
  final DetailsModel driverLicenseNo;
  @override
  @HiveField(9)
  final String driverMobileNo;
  @override
  @HiveField(10)
  final String licensePlateNo;
  @override
  @HiveField(11)
  final DetailsModel truckLicenseNo;
  @override
  @HiveField(12)
  final DateTime date;
  @override
  @HiveField(13)
  final DateTime entryTime;
  @override
  @HiveField(14)
  final DateTime exittime;
  @override
  @HiveField(15)
  final DetailsModel netweight;
  @override
  @HiveField(16)
  final String notes;
  @override
  @HiveField(17)
  final bool? truckLicenseValidation;

  @override
  String toString() {
    return 'ShipmentModel(vesselID: $vesselID, vesselName: $vesselName, fromPortId: $fromPortId, toWHId: $toWHId, deliveryNote: $deliveryNote, analysisCardNo: $analysisCardNo, driverName: $driverName, driverIDNo: $driverIDNo, driverLicenseNo: $driverLicenseNo, driverMobileNo: $driverMobileNo, licensePlateNo: $licensePlateNo, truckLicenseNo: $truckLicenseNo, date: $date, entryTime: $entryTime, exittime: $exittime, netweight: $netweight, notes: $notes, truckLicenseValidation: $truckLicenseValidation)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentModelCopyWith<_$_ShipmentModel> get copyWith =>
      __$$_ShipmentModelCopyWithImpl<_$_ShipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentModelToJson(
      this,
    );
  }
}

abstract class _ShipmentModel implements ShipmentModel {
  factory _ShipmentModel(
      {@HiveField(0) required final String vesselID,
      @HiveField(1) required final String vesselName,
      @HiveField(2) required final int fromPortId,
      @HiveField(3) required final int toWHId,
      @HiveField(4) required final DetailsModel deliveryNote,
      @HiveField(5) required final DetailsModel analysisCardNo,
      @HiveField(6) required final String driverName,
      @HiveField(7) required final DetailsModel driverIDNo,
      @HiveField(8) required final DetailsModel driverLicenseNo,
      @HiveField(9) required final String driverMobileNo,
      @HiveField(10) required final String licensePlateNo,
      @HiveField(11) required final DetailsModel truckLicenseNo,
      @HiveField(12) required final DateTime date,
      @HiveField(13) required final DateTime entryTime,
      @HiveField(14) required final DateTime exittime,
      @HiveField(15) required final DetailsModel netweight,
      @HiveField(16) required final String notes,
      @HiveField(17) final bool? truckLicenseValidation}) = _$_ShipmentModel;

  factory _ShipmentModel.fromJson(Map<String, dynamic> json) =
      _$_ShipmentModel.fromJson;

  @override
  @HiveField(0)
  String get vesselID;
  @override
  @HiveField(1)
  String get vesselName;
  @override
  @HiveField(2)
  int get fromPortId;
  @override
  @HiveField(3)
  int get toWHId;
  @override
  @HiveField(4)
  DetailsModel get deliveryNote;
  @override
  @HiveField(5)
  DetailsModel get analysisCardNo;
  @override
  @HiveField(6)
  String get driverName;
  @override
  @HiveField(7)
  DetailsModel get driverIDNo;
  @override
  @HiveField(8)
  DetailsModel get driverLicenseNo;
  @override
  @HiveField(9)
  String get driverMobileNo;
  @override
  @HiveField(10)
  String get licensePlateNo;
  @override
  @HiveField(11)
  DetailsModel get truckLicenseNo;
  @override
  @HiveField(12)
  DateTime get date;
  @override
  @HiveField(13)
  DateTime get entryTime;
  @override
  @HiveField(14)
  DateTime get exittime;
  @override
  @HiveField(15)
  DetailsModel get netweight;
  @override
  @HiveField(16)
  String get notes;
  @override
  @HiveField(17)
  bool? get truckLicenseValidation;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentModelCopyWith<_$_ShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

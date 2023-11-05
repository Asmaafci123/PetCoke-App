// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_shipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddShipmentModel _$AddShipmentModelFromJson(Map<String, dynamic> json) {
  return _AddShipmentModel.fromJson(json);
}

/// @nodoc
mixin _$AddShipmentModel {
  @HiveField(0)
  PreCheckAnswer get preCheckAnswer => throw _privateConstructorUsedError;
  @HiveField(1)
  ShipmentModel get shipment => throw _privateConstructorUsedError;
  @HiveField(2)
  String get userId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get languageCode => throw _privateConstructorUsedError;
  @HiveField(3)
  set languageCode(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddShipmentModelCopyWith<AddShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShipmentModelCopyWith<$Res> {
  factory $AddShipmentModelCopyWith(
          AddShipmentModel value, $Res Function(AddShipmentModel) then) =
      _$AddShipmentModelCopyWithImpl<$Res, AddShipmentModel>;
  @useResult
  $Res call(
      {@HiveField(0) PreCheckAnswer preCheckAnswer,
      @HiveField(1) ShipmentModel shipment,
      @HiveField(2) String userId,
      @HiveField(3) String? languageCode});

  $PreCheckAnswerCopyWith<$Res> get preCheckAnswer;
  $ShipmentModelCopyWith<$Res> get shipment;
}

/// @nodoc
class _$AddShipmentModelCopyWithImpl<$Res, $Val extends AddShipmentModel>
    implements $AddShipmentModelCopyWith<$Res> {
  _$AddShipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preCheckAnswer = null,
    Object? shipment = null,
    Object? userId = null,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      preCheckAnswer: null == preCheckAnswer
          ? _value.preCheckAnswer
          : preCheckAnswer // ignore: cast_nullable_to_non_nullable
              as PreCheckAnswer,
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreCheckAnswerCopyWith<$Res> get preCheckAnswer {
    return $PreCheckAnswerCopyWith<$Res>(_value.preCheckAnswer, (value) {
      return _then(_value.copyWith(preCheckAnswer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipmentModelCopyWith<$Res> get shipment {
    return $ShipmentModelCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddShipmentModelCopyWith<$Res>
    implements $AddShipmentModelCopyWith<$Res> {
  factory _$$_AddShipmentModelCopyWith(
          _$_AddShipmentModel value, $Res Function(_$_AddShipmentModel) then) =
      __$$_AddShipmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) PreCheckAnswer preCheckAnswer,
      @HiveField(1) ShipmentModel shipment,
      @HiveField(2) String userId,
      @HiveField(3) String? languageCode});

  @override
  $PreCheckAnswerCopyWith<$Res> get preCheckAnswer;
  @override
  $ShipmentModelCopyWith<$Res> get shipment;
}

/// @nodoc
class __$$_AddShipmentModelCopyWithImpl<$Res>
    extends _$AddShipmentModelCopyWithImpl<$Res, _$_AddShipmentModel>
    implements _$$_AddShipmentModelCopyWith<$Res> {
  __$$_AddShipmentModelCopyWithImpl(
      _$_AddShipmentModel _value, $Res Function(_$_AddShipmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preCheckAnswer = null,
    Object? shipment = null,
    Object? userId = null,
    Object? languageCode = freezed,
  }) {
    return _then(_$_AddShipmentModel(
      preCheckAnswer: null == preCheckAnswer
          ? _value.preCheckAnswer
          : preCheckAnswer // ignore: cast_nullable_to_non_nullable
              as PreCheckAnswer,
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as ShipmentModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddShipmentModel implements _AddShipmentModel {
  _$_AddShipmentModel(
      {@HiveField(0) required this.preCheckAnswer,
      @HiveField(1) required this.shipment,
      @HiveField(2) required this.userId,
      @HiveField(3) this.languageCode});

  factory _$_AddShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddShipmentModelFromJson(json);

  @override
  @HiveField(0)
  final PreCheckAnswer preCheckAnswer;
  @override
  @HiveField(1)
  final ShipmentModel shipment;
  @override
  @HiveField(2)
  final String userId;
  @override
  @HiveField(3)
  String? languageCode;

  @override
  String toString() {
    return 'AddShipmentModel(preCheckAnswer: $preCheckAnswer, shipment: $shipment, userId: $userId, languageCode: $languageCode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddShipmentModelCopyWith<_$_AddShipmentModel> get copyWith =>
      __$$_AddShipmentModelCopyWithImpl<_$_AddShipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddShipmentModelToJson(
      this,
    );
  }
}

abstract class _AddShipmentModel implements AddShipmentModel {
  factory _AddShipmentModel(
      {@HiveField(0) required final PreCheckAnswer preCheckAnswer,
      @HiveField(1) required final ShipmentModel shipment,
      @HiveField(2) required final String userId,
      @HiveField(3) String? languageCode}) = _$_AddShipmentModel;

  factory _AddShipmentModel.fromJson(Map<String, dynamic> json) =
      _$_AddShipmentModel.fromJson;

  @override
  @HiveField(0)
  PreCheckAnswer get preCheckAnswer;
  @override
  @HiveField(1)
  ShipmentModel get shipment;
  @override
  @HiveField(2)
  String get userId;
  @override
  @HiveField(3)
  String? get languageCode;
  @HiveField(3)
  set languageCode(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_AddShipmentModelCopyWith<_$_AddShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

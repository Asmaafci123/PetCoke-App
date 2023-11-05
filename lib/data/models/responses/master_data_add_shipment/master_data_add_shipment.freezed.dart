// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_add_shipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MasterDataAddShipment _$MasterDataAddShipmentFromJson(
    Map<String, dynamic> json) {
  return _MasterDataAddShipment.fromJson(json);
}

/// @nodoc
mixin _$MasterDataAddShipment {
  @HiveField(0)
  List<PreCheckQuestion> get questionAnswers =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  List<Store> get stores => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Vessel> get vessels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterDataAddShipmentCopyWith<MasterDataAddShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterDataAddShipmentCopyWith<$Res> {
  factory $MasterDataAddShipmentCopyWith(MasterDataAddShipment value,
          $Res Function(MasterDataAddShipment) then) =
      _$MasterDataAddShipmentCopyWithImpl<$Res, MasterDataAddShipment>;
  @useResult
  $Res call(
      {@HiveField(0) List<PreCheckQuestion> questionAnswers,
      @HiveField(1) List<Store> stores,
      @HiveField(2) List<Vessel> vessels});
}

/// @nodoc
class _$MasterDataAddShipmentCopyWithImpl<$Res,
        $Val extends MasterDataAddShipment>
    implements $MasterDataAddShipmentCopyWith<$Res> {
  _$MasterDataAddShipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionAnswers = null,
    Object? stores = null,
    Object? vessels = null,
  }) {
    return _then(_value.copyWith(
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<PreCheckQuestion>,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      vessels: null == vessels
          ? _value.vessels
          : vessels // ignore: cast_nullable_to_non_nullable
              as List<Vessel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MasterDataAddShipmentCopyWith<$Res>
    implements $MasterDataAddShipmentCopyWith<$Res> {
  factory _$$_MasterDataAddShipmentCopyWith(_$_MasterDataAddShipment value,
          $Res Function(_$_MasterDataAddShipment) then) =
      __$$_MasterDataAddShipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<PreCheckQuestion> questionAnswers,
      @HiveField(1) List<Store> stores,
      @HiveField(2) List<Vessel> vessels});
}

/// @nodoc
class __$$_MasterDataAddShipmentCopyWithImpl<$Res>
    extends _$MasterDataAddShipmentCopyWithImpl<$Res, _$_MasterDataAddShipment>
    implements _$$_MasterDataAddShipmentCopyWith<$Res> {
  __$$_MasterDataAddShipmentCopyWithImpl(_$_MasterDataAddShipment _value,
      $Res Function(_$_MasterDataAddShipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionAnswers = null,
    Object? stores = null,
    Object? vessels = null,
  }) {
    return _then(_$_MasterDataAddShipment(
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<PreCheckQuestion>,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<Store>,
      vessels: null == vessels
          ? _value.vessels
          : vessels // ignore: cast_nullable_to_non_nullable
              as List<Vessel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterDataAddShipment implements _MasterDataAddShipment {
  _$_MasterDataAddShipment(
      {@HiveField(0) required this.questionAnswers,
      @HiveField(1) required this.stores,
      @HiveField(2) required this.vessels});

  factory _$_MasterDataAddShipment.fromJson(Map<String, dynamic> json) =>
      _$$_MasterDataAddShipmentFromJson(json);

  @override
  @HiveField(0)
  final List<PreCheckQuestion> questionAnswers;
  @override
  @HiveField(1)
  final List<Store> stores;
  @override
  @HiveField(2)
  final List<Vessel> vessels;

  @override
  String toString() {
    return 'MasterDataAddShipment(questionAnswers: $questionAnswers, stores: $stores, vessels: $vessels)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MasterDataAddShipmentCopyWith<_$_MasterDataAddShipment> get copyWith =>
      __$$_MasterDataAddShipmentCopyWithImpl<_$_MasterDataAddShipment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterDataAddShipmentToJson(
      this,
    );
  }
}

abstract class _MasterDataAddShipment implements MasterDataAddShipment {
  factory _MasterDataAddShipment(
          {@HiveField(0) required final List<PreCheckQuestion> questionAnswers,
          @HiveField(1) required final List<Store> stores,
          @HiveField(2) required final List<Vessel> vessels}) =
      _$_MasterDataAddShipment;

  factory _MasterDataAddShipment.fromJson(Map<String, dynamic> json) =
      _$_MasterDataAddShipment.fromJson;

  @override
  @HiveField(0)
  List<PreCheckQuestion> get questionAnswers;
  @override
  @HiveField(1)
  List<Store> get stores;
  @override
  @HiveField(2)
  List<Vessel> get vessels;
  @override
  @JsonKey(ignore: true)
  _$$_MasterDataAddShipmentCopyWith<_$_MasterDataAddShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

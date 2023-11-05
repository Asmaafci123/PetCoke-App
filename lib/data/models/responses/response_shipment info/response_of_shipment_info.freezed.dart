// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_of_shipment_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipmentInfoResponse _$ShipmentInfoResponseFromJson(Map<String, dynamic> json) {
  return _ShipmentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ShipmentInfoResponse {
  @HiveField(0)
  bool get flag => throw _privateConstructorUsedError;
  @HiveField(1)
  String get message => throw _privateConstructorUsedError;
  @HiveField(2)
  MasterDataAddShipment get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentInfoResponseCopyWith<ShipmentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentInfoResponseCopyWith<$Res> {
  factory $ShipmentInfoResponseCopyWith(ShipmentInfoResponse value,
          $Res Function(ShipmentInfoResponse) then) =
      _$ShipmentInfoResponseCopyWithImpl<$Res, ShipmentInfoResponse>;
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) MasterDataAddShipment data});

  $MasterDataAddShipmentCopyWith<$Res> get data;
}

/// @nodoc
class _$ShipmentInfoResponseCopyWithImpl<$Res,
        $Val extends ShipmentInfoResponse>
    implements $ShipmentInfoResponseCopyWith<$Res> {
  _$ShipmentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MasterDataAddShipment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MasterDataAddShipmentCopyWith<$Res> get data {
    return $MasterDataAddShipmentCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipmentInfoResponseCopyWith<$Res>
    implements $ShipmentInfoResponseCopyWith<$Res> {
  factory _$$_ShipmentInfoResponseCopyWith(_$_ShipmentInfoResponse value,
          $Res Function(_$_ShipmentInfoResponse) then) =
      __$$_ShipmentInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) MasterDataAddShipment data});

  @override
  $MasterDataAddShipmentCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ShipmentInfoResponseCopyWithImpl<$Res>
    extends _$ShipmentInfoResponseCopyWithImpl<$Res, _$_ShipmentInfoResponse>
    implements _$$_ShipmentInfoResponseCopyWith<$Res> {
  __$$_ShipmentInfoResponseCopyWithImpl(_$_ShipmentInfoResponse _value,
      $Res Function(_$_ShipmentInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_ShipmentInfoResponse(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MasterDataAddShipment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipmentInfoResponse implements _ShipmentInfoResponse {
  _$_ShipmentInfoResponse(
      {@HiveField(0) required this.flag,
      @HiveField(1) required this.message,
      @HiveField(2) required this.data});

  factory _$_ShipmentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentInfoResponseFromJson(json);

  @override
  @HiveField(0)
  final bool flag;
  @override
  @HiveField(1)
  final String message;
  @override
  @HiveField(2)
  final MasterDataAddShipment data;

  @override
  String toString() {
    return 'ShipmentInfoResponse(flag: $flag, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentInfoResponseCopyWith<_$_ShipmentInfoResponse> get copyWith =>
      __$$_ShipmentInfoResponseCopyWithImpl<_$_ShipmentInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentInfoResponseToJson(
      this,
    );
  }
}

abstract class _ShipmentInfoResponse implements ShipmentInfoResponse {
  factory _ShipmentInfoResponse(
          {@HiveField(0) required final bool flag,
          @HiveField(1) required final String message,
          @HiveField(2) required final MasterDataAddShipment data}) =
      _$_ShipmentInfoResponse;

  factory _ShipmentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_ShipmentInfoResponse.fromJson;

  @override
  @HiveField(0)
  bool get flag;
  @override
  @HiveField(1)
  String get message;
  @override
  @HiveField(2)
  MasterDataAddShipment get data;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentInfoResponseCopyWith<_$_ShipmentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

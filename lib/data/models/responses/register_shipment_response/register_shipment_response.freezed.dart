// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_shipment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterShipmentResponse _$RegisterShipmentResponseFromJson(
    Map<String, dynamic> json) {
  return _RegisterShipmentResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterShipmentResponse {
  @HiveField(0)
  bool get flag => throw _privateConstructorUsedError;
  @HiveField(1)
  String get message => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get data => throw _privateConstructorUsedError;
  @HiveField(2)
  set data(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterShipmentResponseCopyWith<RegisterShipmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterShipmentResponseCopyWith<$Res> {
  factory $RegisterShipmentResponseCopyWith(RegisterShipmentResponse value,
          $Res Function(RegisterShipmentResponse) then) =
      _$RegisterShipmentResponseCopyWithImpl<$Res, RegisterShipmentResponse>;
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) String? data});
}

/// @nodoc
class _$RegisterShipmentResponseCopyWithImpl<$Res,
        $Val extends RegisterShipmentResponse>
    implements $RegisterShipmentResponseCopyWith<$Res> {
  _$RegisterShipmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterShipmentResponseCopyWith<$Res>
    implements $RegisterShipmentResponseCopyWith<$Res> {
  factory _$$_RegisterShipmentResponseCopyWith(
          _$_RegisterShipmentResponse value,
          $Res Function(_$_RegisterShipmentResponse) then) =
      __$$_RegisterShipmentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) String? data});
}

/// @nodoc
class __$$_RegisterShipmentResponseCopyWithImpl<$Res>
    extends _$RegisterShipmentResponseCopyWithImpl<$Res,
        _$_RegisterShipmentResponse>
    implements _$$_RegisterShipmentResponseCopyWith<$Res> {
  __$$_RegisterShipmentResponseCopyWithImpl(_$_RegisterShipmentResponse _value,
      $Res Function(_$_RegisterShipmentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_RegisterShipmentResponse(
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterShipmentResponse implements _RegisterShipmentResponse {
  _$_RegisterShipmentResponse(
      {@HiveField(0) required this.flag,
      @HiveField(1) required this.message,
      @HiveField(2) this.data});

  factory _$_RegisterShipmentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterShipmentResponseFromJson(json);

  @override
  @HiveField(0)
  final bool flag;
  @override
  @HiveField(1)
  final String message;
  @override
  @HiveField(2)
  String? data;

  @override
  String toString() {
    return 'RegisterShipmentResponse(flag: $flag, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterShipmentResponseCopyWith<_$_RegisterShipmentResponse>
      get copyWith => __$$_RegisterShipmentResponseCopyWithImpl<
          _$_RegisterShipmentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterShipmentResponseToJson(
      this,
    );
  }
}

abstract class _RegisterShipmentResponse implements RegisterShipmentResponse {
  factory _RegisterShipmentResponse(
      {@HiveField(0) required final bool flag,
      @HiveField(1) required final String message,
      @HiveField(2) String? data}) = _$_RegisterShipmentResponse;

  factory _RegisterShipmentResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterShipmentResponse.fromJson;

  @override
  @HiveField(0)
  bool get flag;
  @override
  @HiveField(1)
  String get message;
  @override
  @HiveField(2)
  String? get data;
  @HiveField(2)
  set data(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_RegisterShipmentResponseCopyWith<_$_RegisterShipmentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

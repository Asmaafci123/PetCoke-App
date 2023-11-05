// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimingResponse _$TimingResponseFromJson(Map<String, dynamic> json) {
  return _TimingResponse.fromJson(json);
}

/// @nodoc
mixin _$TimingResponse {
  @HiveField(0)
  bool get flag => throw _privateConstructorUsedError;
  @HiveField(1)
  String get message => throw _privateConstructorUsedError;
  @HiveField(2)
  SendLocationModel? get data => throw _privateConstructorUsedError;
  @HiveField(2)
  set data(SendLocationModel? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingResponseCopyWith<TimingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingResponseCopyWith<$Res> {
  factory $TimingResponseCopyWith(
          TimingResponse value, $Res Function(TimingResponse) then) =
      _$TimingResponseCopyWithImpl<$Res, TimingResponse>;
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) SendLocationModel? data});

  $SendLocationModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TimingResponseCopyWithImpl<$Res, $Val extends TimingResponse>
    implements $TimingResponseCopyWith<$Res> {
  _$TimingResponseCopyWithImpl(this._value, this._then);

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
              as SendLocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendLocationModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendLocationModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TimingResponseCopyWith<$Res>
    implements $TimingResponseCopyWith<$Res> {
  factory _$$_TimingResponseCopyWith(
          _$_TimingResponse value, $Res Function(_$_TimingResponse) then) =
      __$$_TimingResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) SendLocationModel? data});

  @override
  $SendLocationModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TimingResponseCopyWithImpl<$Res>
    extends _$TimingResponseCopyWithImpl<$Res, _$_TimingResponse>
    implements _$$_TimingResponseCopyWith<$Res> {
  __$$_TimingResponseCopyWithImpl(
      _$_TimingResponse _value, $Res Function(_$_TimingResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_TimingResponse(
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
              as SendLocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimingResponse implements _TimingResponse {
  _$_TimingResponse(
      {@HiveField(0) required this.flag,
      @HiveField(1) required this.message,
      @HiveField(2) this.data});

  factory _$_TimingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TimingResponseFromJson(json);

  @override
  @HiveField(0)
  final bool flag;
  @override
  @HiveField(1)
  final String message;
  @override
  @HiveField(2)
  SendLocationModel? data;

  @override
  String toString() {
    return 'TimingResponse(flag: $flag, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimingResponseCopyWith<_$_TimingResponse> get copyWith =>
      __$$_TimingResponseCopyWithImpl<_$_TimingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimingResponseToJson(
      this,
    );
  }
}

abstract class _TimingResponse implements TimingResponse {
  factory _TimingResponse(
      {@HiveField(0) required final bool flag,
      @HiveField(1) required final String message,
      @HiveField(2) SendLocationModel? data}) = _$_TimingResponse;

  factory _TimingResponse.fromJson(Map<String, dynamic> json) =
      _$_TimingResponse.fromJson;

  @override
  @HiveField(0)
  bool get flag;
  @override
  @HiveField(1)
  String get message;
  @override
  @HiveField(2)
  SendLocationModel? get data;
  @HiveField(2)
  set data(SendLocationModel? value);
  @override
  @JsonKey(ignore: true)
  _$$_TimingResponseCopyWith<_$_TimingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

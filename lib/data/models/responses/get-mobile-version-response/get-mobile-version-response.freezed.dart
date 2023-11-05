// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get-mobile-version-response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileVersionModelResponse _$MobileVersionModelResponseFromJson(
    Map<String, dynamic> json) {
  return _MobileVersionModelResponse.fromJson(json);
}

/// @nodoc
mixin _$MobileVersionModelResponse {
  @HiveField(0)
  bool get flag => throw _privateConstructorUsedError;
  @HiveField(1)
  String get message => throw _privateConstructorUsedError;
  @HiveField(2)
  MobileVersionModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileVersionModelResponseCopyWith<MobileVersionModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileVersionModelResponseCopyWith<$Res> {
  factory $MobileVersionModelResponseCopyWith(MobileVersionModelResponse value,
          $Res Function(MobileVersionModelResponse) then) =
      _$MobileVersionModelResponseCopyWithImpl<$Res,
          MobileVersionModelResponse>;
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) MobileVersionModel data});

  $MobileVersionModelCopyWith<$Res> get data;
}

/// @nodoc
class _$MobileVersionModelResponseCopyWithImpl<$Res,
        $Val extends MobileVersionModelResponse>
    implements $MobileVersionModelResponseCopyWith<$Res> {
  _$MobileVersionModelResponseCopyWithImpl(this._value, this._then);

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
              as MobileVersionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MobileVersionModelCopyWith<$Res> get data {
    return $MobileVersionModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MobileVersionModelResponseCopyWith<$Res>
    implements $MobileVersionModelResponseCopyWith<$Res> {
  factory _$$_MobileVersionModelResponseCopyWith(
          _$_MobileVersionModelResponse value,
          $Res Function(_$_MobileVersionModelResponse) then) =
      __$$_MobileVersionModelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) MobileVersionModel data});

  @override
  $MobileVersionModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MobileVersionModelResponseCopyWithImpl<$Res>
    extends _$MobileVersionModelResponseCopyWithImpl<$Res,
        _$_MobileVersionModelResponse>
    implements _$$_MobileVersionModelResponseCopyWith<$Res> {
  __$$_MobileVersionModelResponseCopyWithImpl(
      _$_MobileVersionModelResponse _value,
      $Res Function(_$_MobileVersionModelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_MobileVersionModelResponse(
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
              as MobileVersionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileVersionModelResponse implements _MobileVersionModelResponse {
  _$_MobileVersionModelResponse(
      {@HiveField(0) required this.flag,
      @HiveField(1) required this.message,
      @HiveField(2) required this.data});

  factory _$_MobileVersionModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MobileVersionModelResponseFromJson(json);

  @override
  @HiveField(0)
  final bool flag;
  @override
  @HiveField(1)
  final String message;
  @override
  @HiveField(2)
  final MobileVersionModel data;

  @override
  String toString() {
    return 'MobileVersionModelResponse(flag: $flag, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MobileVersionModelResponseCopyWith<_$_MobileVersionModelResponse>
      get copyWith => __$$_MobileVersionModelResponseCopyWithImpl<
          _$_MobileVersionModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileVersionModelResponseToJson(
      this,
    );
  }
}

abstract class _MobileVersionModelResponse
    implements MobileVersionModelResponse {
  factory _MobileVersionModelResponse(
          {@HiveField(0) required final bool flag,
          @HiveField(1) required final String message,
          @HiveField(2) required final MobileVersionModel data}) =
      _$_MobileVersionModelResponse;

  factory _MobileVersionModelResponse.fromJson(Map<String, dynamic> json) =
      _$_MobileVersionModelResponse.fromJson;

  @override
  @HiveField(0)
  bool get flag;
  @override
  @HiveField(1)
  String get message;
  @override
  @HiveField(2)
  MobileVersionModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_MobileVersionModelResponseCopyWith<_$_MobileVersionModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

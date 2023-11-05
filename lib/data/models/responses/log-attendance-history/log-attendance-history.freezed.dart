// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log-attendance-history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogAttendanceResponse _$LogAttendanceResponseFromJson(
    Map<String, dynamic> json) {
  return _LogAttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$LogAttendanceResponse {
  @HiveField(0)
  bool get flag => throw _privateConstructorUsedError;
  @HiveField(1)
  String get message => throw _privateConstructorUsedError;
  @HiveField(2)
  List<LogAttendanceModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogAttendanceResponseCopyWith<LogAttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogAttendanceResponseCopyWith<$Res> {
  factory $LogAttendanceResponseCopyWith(LogAttendanceResponse value,
          $Res Function(LogAttendanceResponse) then) =
      _$LogAttendanceResponseCopyWithImpl<$Res, LogAttendanceResponse>;
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) List<LogAttendanceModel> data});
}

/// @nodoc
class _$LogAttendanceResponseCopyWithImpl<$Res,
        $Val extends LogAttendanceResponse>
    implements $LogAttendanceResponseCopyWith<$Res> {
  _$LogAttendanceResponseCopyWithImpl(this._value, this._then);

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
              as List<LogAttendanceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogAttendanceResponseCopyWith<$Res>
    implements $LogAttendanceResponseCopyWith<$Res> {
  factory _$$_LogAttendanceResponseCopyWith(_$_LogAttendanceResponse value,
          $Res Function(_$_LogAttendanceResponse) then) =
      __$$_LogAttendanceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool flag,
      @HiveField(1) String message,
      @HiveField(2) List<LogAttendanceModel> data});
}

/// @nodoc
class __$$_LogAttendanceResponseCopyWithImpl<$Res>
    extends _$LogAttendanceResponseCopyWithImpl<$Res, _$_LogAttendanceResponse>
    implements _$$_LogAttendanceResponseCopyWith<$Res> {
  __$$_LogAttendanceResponseCopyWithImpl(_$_LogAttendanceResponse _value,
      $Res Function(_$_LogAttendanceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_LogAttendanceResponse(
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
              as List<LogAttendanceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogAttendanceResponse implements _LogAttendanceResponse {
  _$_LogAttendanceResponse(
      {@HiveField(0) required this.flag,
      @HiveField(1) required this.message,
      @HiveField(2) required this.data});

  factory _$_LogAttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LogAttendanceResponseFromJson(json);

  @override
  @HiveField(0)
  final bool flag;
  @override
  @HiveField(1)
  final String message;
  @override
  @HiveField(2)
  final List<LogAttendanceModel> data;

  @override
  String toString() {
    return 'LogAttendanceResponse(flag: $flag, message: $message, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogAttendanceResponseCopyWith<_$_LogAttendanceResponse> get copyWith =>
      __$$_LogAttendanceResponseCopyWithImpl<_$_LogAttendanceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogAttendanceResponseToJson(
      this,
    );
  }
}

abstract class _LogAttendanceResponse implements LogAttendanceResponse {
  factory _LogAttendanceResponse(
          {@HiveField(0) required final bool flag,
          @HiveField(1) required final String message,
          @HiveField(2) required final List<LogAttendanceModel> data}) =
      _$_LogAttendanceResponse;

  factory _LogAttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$_LogAttendanceResponse.fromJson;

  @override
  @HiveField(0)
  bool get flag;
  @override
  @HiveField(1)
  String get message;
  @override
  @HiveField(2)
  List<LogAttendanceModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_LogAttendanceResponseCopyWith<_$_LogAttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

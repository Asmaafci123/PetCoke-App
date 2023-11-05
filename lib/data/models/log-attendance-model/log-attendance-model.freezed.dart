// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log-attendance-model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogAttendanceModel _$LogAttendanceModelFromJson(Map<String, dynamic> json) {
  return _LogAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$LogAttendanceModel {
  @HiveField(0)
  String get day => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get checkIn => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get checkOut => throw _privateConstructorUsedError;
  @HiveField(3)
  int get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogAttendanceModelCopyWith<LogAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogAttendanceModelCopyWith<$Res> {
  factory $LogAttendanceModelCopyWith(
          LogAttendanceModel value, $Res Function(LogAttendanceModel) then) =
      _$LogAttendanceModelCopyWithImpl<$Res, LogAttendanceModel>;
  @useResult
  $Res call(
      {@HiveField(0) String day,
      @HiveField(1) DateTime checkIn,
      @HiveField(2) DateTime checkOut,
      @HiveField(3) int hours});
}

/// @nodoc
class _$LogAttendanceModelCopyWithImpl<$Res, $Val extends LogAttendanceModel>
    implements $LogAttendanceModelCopyWith<$Res> {
  _$LogAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogAttendanceModelCopyWith<$Res>
    implements $LogAttendanceModelCopyWith<$Res> {
  factory _$$_LogAttendanceModelCopyWith(_$_LogAttendanceModel value,
          $Res Function(_$_LogAttendanceModel) then) =
      __$$_LogAttendanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String day,
      @HiveField(1) DateTime checkIn,
      @HiveField(2) DateTime checkOut,
      @HiveField(3) int hours});
}

/// @nodoc
class __$$_LogAttendanceModelCopyWithImpl<$Res>
    extends _$LogAttendanceModelCopyWithImpl<$Res, _$_LogAttendanceModel>
    implements _$$_LogAttendanceModelCopyWith<$Res> {
  __$$_LogAttendanceModelCopyWithImpl(
      _$_LogAttendanceModel _value, $Res Function(_$_LogAttendanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? checkIn = null,
    Object? checkOut = null,
    Object? hours = null,
  }) {
    return _then(_$_LogAttendanceModel(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      checkIn: null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      checkOut: null == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogAttendanceModel implements _LogAttendanceModel {
  _$_LogAttendanceModel(
      {@HiveField(0) required this.day,
      @HiveField(1) required this.checkIn,
      @HiveField(2) required this.checkOut,
      @HiveField(3) required this.hours});

  factory _$_LogAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogAttendanceModelFromJson(json);

  @override
  @HiveField(0)
  final String day;
  @override
  @HiveField(1)
  final DateTime checkIn;
  @override
  @HiveField(2)
  final DateTime checkOut;
  @override
  @HiveField(3)
  final int hours;

  @override
  String toString() {
    return 'LogAttendanceModel(day: $day, checkIn: $checkIn, checkOut: $checkOut, hours: $hours)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogAttendanceModelCopyWith<_$_LogAttendanceModel> get copyWith =>
      __$$_LogAttendanceModelCopyWithImpl<_$_LogAttendanceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogAttendanceModelToJson(
      this,
    );
  }
}

abstract class _LogAttendanceModel implements LogAttendanceModel {
  factory _LogAttendanceModel(
      {@HiveField(0) required final String day,
      @HiveField(1) required final DateTime checkIn,
      @HiveField(2) required final DateTime checkOut,
      @HiveField(3) required final int hours}) = _$_LogAttendanceModel;

  factory _LogAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$_LogAttendanceModel.fromJson;

  @override
  @HiveField(0)
  String get day;
  @override
  @HiveField(1)
  DateTime get checkIn;
  @override
  @HiveField(2)
  DateTime get checkOut;
  @override
  @HiveField(3)
  int get hours;
  @override
  @JsonKey(ignore: true)
  _$$_LogAttendanceModelCopyWith<_$_LogAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

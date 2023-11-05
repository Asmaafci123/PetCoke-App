// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vessel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vessel _$VesselFromJson(Map<String, dynamic> json) {
  return _Vessel.fromJson(json);
}

/// @nodoc
mixin _$Vessel {
  @HiveField(0)
  int get vesselId => throw _privateConstructorUsedError;
  @HiveField(1)
  double get qty => throw _privateConstructorUsedError;
  @HiveField(2)
  double get remain => throw _privateConstructorUsedError;
  @HiveField(3)
  String get vesselName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VesselCopyWith<Vessel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VesselCopyWith<$Res> {
  factory $VesselCopyWith(Vessel value, $Res Function(Vessel) then) =
      _$VesselCopyWithImpl<$Res, Vessel>;
  @useResult
  $Res call(
      {@HiveField(0) int vesselId,
      @HiveField(1) double qty,
      @HiveField(2) double remain,
      @HiveField(3) String vesselName});
}

/// @nodoc
class _$VesselCopyWithImpl<$Res, $Val extends Vessel>
    implements $VesselCopyWith<$Res> {
  _$VesselCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vesselId = null,
    Object? qty = null,
    Object? remain = null,
    Object? vesselName = null,
  }) {
    return _then(_value.copyWith(
      vesselId: null == vesselId
          ? _value.vesselId
          : vesselId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      remain: null == remain
          ? _value.remain
          : remain // ignore: cast_nullable_to_non_nullable
              as double,
      vesselName: null == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VesselCopyWith<$Res> implements $VesselCopyWith<$Res> {
  factory _$$_VesselCopyWith(_$_Vessel value, $Res Function(_$_Vessel) then) =
      __$$_VesselCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int vesselId,
      @HiveField(1) double qty,
      @HiveField(2) double remain,
      @HiveField(3) String vesselName});
}

/// @nodoc
class __$$_VesselCopyWithImpl<$Res>
    extends _$VesselCopyWithImpl<$Res, _$_Vessel>
    implements _$$_VesselCopyWith<$Res> {
  __$$_VesselCopyWithImpl(_$_Vessel _value, $Res Function(_$_Vessel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vesselId = null,
    Object? qty = null,
    Object? remain = null,
    Object? vesselName = null,
  }) {
    return _then(_$_Vessel(
      vesselId: null == vesselId
          ? _value.vesselId
          : vesselId // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      remain: null == remain
          ? _value.remain
          : remain // ignore: cast_nullable_to_non_nullable
              as double,
      vesselName: null == vesselName
          ? _value.vesselName
          : vesselName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vessel implements _Vessel {
  _$_Vessel(
      {@HiveField(0) required this.vesselId,
      @HiveField(1) required this.qty,
      @HiveField(2) required this.remain,
      @HiveField(3) required this.vesselName});

  factory _$_Vessel.fromJson(Map<String, dynamic> json) =>
      _$$_VesselFromJson(json);

  @override
  @HiveField(0)
  final int vesselId;
  @override
  @HiveField(1)
  final double qty;
  @override
  @HiveField(2)
  final double remain;
  @override
  @HiveField(3)
  final String vesselName;

  @override
  String toString() {
    return 'Vessel(vesselId: $vesselId, qty: $qty, remain: $remain, vesselName: $vesselName)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VesselCopyWith<_$_Vessel> get copyWith =>
      __$$_VesselCopyWithImpl<_$_Vessel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VesselToJson(
      this,
    );
  }
}

abstract class _Vessel implements Vessel {
  factory _Vessel(
      {@HiveField(0) required final int vesselId,
      @HiveField(1) required final double qty,
      @HiveField(2) required final double remain,
      @HiveField(3) required final String vesselName}) = _$_Vessel;

  factory _Vessel.fromJson(Map<String, dynamic> json) = _$_Vessel.fromJson;

  @override
  @HiveField(0)
  int get vesselId;
  @override
  @HiveField(1)
  double get qty;
  @override
  @HiveField(2)
  double get remain;
  @override
  @HiveField(3)
  String get vesselName;
  @override
  @JsonKey(ignore: true)
  _$$_VesselCopyWith<_$_Vessel> get copyWith =>
      throw _privateConstructorUsedError;
}

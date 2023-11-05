// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileVersionModel _$MobileVersionModelFromJson(Map<String, dynamic> json) {
  return _MobileVersionModel.fromJson(json);
}

/// @nodoc
mixin _$MobileVersionModel {
  @HiveField(0)
  String get androidVersion => throw _privateConstructorUsedError;
  @HiveField(1)
  String get iosVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileVersionModelCopyWith<MobileVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileVersionModelCopyWith<$Res> {
  factory $MobileVersionModelCopyWith(
          MobileVersionModel value, $Res Function(MobileVersionModel) then) =
      _$MobileVersionModelCopyWithImpl<$Res, MobileVersionModel>;
  @useResult
  $Res call(
      {@HiveField(0) String androidVersion, @HiveField(1) String iosVersion});
}

/// @nodoc
class _$MobileVersionModelCopyWithImpl<$Res, $Val extends MobileVersionModel>
    implements $MobileVersionModelCopyWith<$Res> {
  _$MobileVersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidVersion = null,
    Object? iosVersion = null,
  }) {
    return _then(_value.copyWith(
      androidVersion: null == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosVersion: null == iosVersion
          ? _value.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MobileVersionModelCopyWith<$Res>
    implements $MobileVersionModelCopyWith<$Res> {
  factory _$$_MobileVersionModelCopyWith(_$_MobileVersionModel value,
          $Res Function(_$_MobileVersionModel) then) =
      __$$_MobileVersionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String androidVersion, @HiveField(1) String iosVersion});
}

/// @nodoc
class __$$_MobileVersionModelCopyWithImpl<$Res>
    extends _$MobileVersionModelCopyWithImpl<$Res, _$_MobileVersionModel>
    implements _$$_MobileVersionModelCopyWith<$Res> {
  __$$_MobileVersionModelCopyWithImpl(
      _$_MobileVersionModel _value, $Res Function(_$_MobileVersionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidVersion = null,
    Object? iosVersion = null,
  }) {
    return _then(_$_MobileVersionModel(
      androidVersion: null == androidVersion
          ? _value.androidVersion
          : androidVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosVersion: null == iosVersion
          ? _value.iosVersion
          : iosVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileVersionModel implements _MobileVersionModel {
  _$_MobileVersionModel(
      {@HiveField(0) required this.androidVersion,
      @HiveField(1) required this.iosVersion});

  factory _$_MobileVersionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MobileVersionModelFromJson(json);

  @override
  @HiveField(0)
  final String androidVersion;
  @override
  @HiveField(1)
  final String iosVersion;

  @override
  String toString() {
    return 'MobileVersionModel(androidVersion: $androidVersion, iosVersion: $iosVersion)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MobileVersionModelCopyWith<_$_MobileVersionModel> get copyWith =>
      __$$_MobileVersionModelCopyWithImpl<_$_MobileVersionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileVersionModelToJson(
      this,
    );
  }
}

abstract class _MobileVersionModel implements MobileVersionModel {
  factory _MobileVersionModel(
      {@HiveField(0) required final String androidVersion,
      @HiveField(1) required final String iosVersion}) = _$_MobileVersionModel;

  factory _MobileVersionModel.fromJson(Map<String, dynamic> json) =
      _$_MobileVersionModel.fromJson;

  @override
  @HiveField(0)
  String get androidVersion;
  @override
  @HiveField(1)
  String get iosVersion;
  @override
  @JsonKey(ignore: true)
  _$$_MobileVersionModelCopyWith<_$_MobileVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

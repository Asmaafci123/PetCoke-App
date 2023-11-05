// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailsModel _$DetailsModelFromJson(Map<String, dynamic> json) {
  return _DetailsModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsModel {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsModelCopyWith<DetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsModelCopyWith<$Res> {
  factory $DetailsModelCopyWith(
          DetailsModel value, $Res Function(DetailsModel) then) =
      _$DetailsModelCopyWithImpl<$Res, DetailsModel>;
  @useResult
  $Res call(
      {@HiveField(0) String name, @HiveField(1) List<String> attachments});
}

/// @nodoc
class _$DetailsModelCopyWithImpl<$Res, $Val extends DetailsModel>
    implements $DetailsModelCopyWith<$Res> {
  _$DetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailsModelCopyWith<$Res>
    implements $DetailsModelCopyWith<$Res> {
  factory _$$_DetailsModelCopyWith(
          _$_DetailsModel value, $Res Function(_$_DetailsModel) then) =
      __$$_DetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name, @HiveField(1) List<String> attachments});
}

/// @nodoc
class __$$_DetailsModelCopyWithImpl<$Res>
    extends _$DetailsModelCopyWithImpl<$Res, _$_DetailsModel>
    implements _$$_DetailsModelCopyWith<$Res> {
  __$$_DetailsModelCopyWithImpl(
      _$_DetailsModel _value, $Res Function(_$_DetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attachments = null,
  }) {
    return _then(_$_DetailsModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailsModel implements _DetailsModel {
  _$_DetailsModel(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.attachments});

  factory _$_DetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsModelFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final List<String> attachments;

  @override
  String toString() {
    return 'DetailsModel(name: $name, attachments: $attachments)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsModelCopyWith<_$_DetailsModel> get copyWith =>
      __$$_DetailsModelCopyWithImpl<_$_DetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsModelToJson(
      this,
    );
  }
}

abstract class _DetailsModel implements DetailsModel {
  factory _DetailsModel(
      {@HiveField(0) required final String name,
      @HiveField(1) required final List<String> attachments}) = _$_DetailsModel;

  factory _DetailsModel.fromJson(Map<String, dynamic> json) =
      _$_DetailsModel.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  List<String> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsModelCopyWith<_$_DetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credential_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CredentialDetails _$CredentialDetailsFromJson(Map<String, dynamic> json) {
  return _CredentialDetails.fromJson(json);
}

/// @nodoc
mixin _$CredentialDetails {
  @HiveField(0)
  int? get cemexId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialDetailsCopyWith<CredentialDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialDetailsCopyWith<$Res> {
  factory $CredentialDetailsCopyWith(
          CredentialDetails value, $Res Function(CredentialDetails) then) =
      _$CredentialDetailsCopyWithImpl<$Res, CredentialDetails>;
  @useResult
  $Res call(
      {@HiveField(0) int? cemexId,
      @HiveField(1) String? password,
      @HiveField(2) String? languageCode});
}

/// @nodoc
class _$CredentialDetailsCopyWithImpl<$Res, $Val extends CredentialDetails>
    implements $CredentialDetailsCopyWith<$Res> {
  _$CredentialDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cemexId = freezed,
    Object? password = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      cemexId: freezed == cemexId
          ? _value.cemexId
          : cemexId // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CredentialDetailsCopyWith<$Res>
    implements $CredentialDetailsCopyWith<$Res> {
  factory _$$_CredentialDetailsCopyWith(_$_CredentialDetails value,
          $Res Function(_$_CredentialDetails) then) =
      __$$_CredentialDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? cemexId,
      @HiveField(1) String? password,
      @HiveField(2) String? languageCode});
}

/// @nodoc
class __$$_CredentialDetailsCopyWithImpl<$Res>
    extends _$CredentialDetailsCopyWithImpl<$Res, _$_CredentialDetails>
    implements _$$_CredentialDetailsCopyWith<$Res> {
  __$$_CredentialDetailsCopyWithImpl(
      _$_CredentialDetails _value, $Res Function(_$_CredentialDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cemexId = freezed,
    Object? password = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_$_CredentialDetails(
      cemexId: freezed == cemexId
          ? _value.cemexId
          : cemexId // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CredentialDetails implements _CredentialDetails {
  const _$_CredentialDetails(
      {@HiveField(0) this.cemexId,
      @HiveField(1) this.password,
      @HiveField(2) this.languageCode});

  factory _$_CredentialDetails.fromJson(Map<String, dynamic> json) =>
      _$$_CredentialDetailsFromJson(json);

  @override
  @HiveField(0)
  final int? cemexId;
  @override
  @HiveField(1)
  final String? password;
  @override
  @HiveField(2)
  final String? languageCode;

  @override
  String toString() {
    return 'CredentialDetails(cemexId: $cemexId, password: $password, languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredentialDetails &&
            (identical(other.cemexId, cemexId) || other.cemexId == cemexId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cemexId, password, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialDetailsCopyWith<_$_CredentialDetails> get copyWith =>
      __$$_CredentialDetailsCopyWithImpl<_$_CredentialDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CredentialDetailsToJson(
      this,
    );
  }
}

abstract class _CredentialDetails implements CredentialDetails {
  const factory _CredentialDetails(
      {@HiveField(0) final int? cemexId,
      @HiveField(1) final String? password,
      @HiveField(2) final String? languageCode}) = _$_CredentialDetails;

  factory _CredentialDetails.fromJson(Map<String, dynamic> json) =
      _$_CredentialDetails.fromJson;

  @override
  @HiveField(0)
  int? get cemexId;
  @override
  @HiveField(1)
  String? get password;
  @override
  @HiveField(2)
  String? get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialDetailsCopyWith<_$_CredentialDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

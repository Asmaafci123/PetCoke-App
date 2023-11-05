// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String? get userId => throw _privateConstructorUsedError;
  @HiveField(1)
  int get cemexId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get password => throw _privateConstructorUsedError;
  @HiveField(3)
  String get mobileSerial => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get employeeName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get mobile => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get languageCode => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String? userId,
      @HiveField(1) int cemexId,
      @HiveField(2) String password,
      @HiveField(3) String mobileSerial,
      @HiveField(4) String? employeeName,
      @HiveField(5) String? mobile,
      @HiveField(6) String? languageCode,
      @HiveField(7) String? newPassword});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? cemexId = null,
    Object? password = null,
    Object? mobileSerial = null,
    Object? employeeName = freezed,
    Object? mobile = freezed,
    Object? languageCode = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      cemexId: null == cemexId
          ? _value.cemexId
          : cemexId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileSerial: null == mobileSerial
          ? _value.mobileSerial
          : mobileSerial // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? userId,
      @HiveField(1) int cemexId,
      @HiveField(2) String password,
      @HiveField(3) String mobileSerial,
      @HiveField(4) String? employeeName,
      @HiveField(5) String? mobile,
      @HiveField(6) String? languageCode,
      @HiveField(7) String? newPassword});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? cemexId = null,
    Object? password = null,
    Object? mobileSerial = null,
    Object? employeeName = freezed,
    Object? mobile = freezed,
    Object? languageCode = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_User(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      cemexId: null == cemexId
          ? _value.cemexId
          : cemexId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileSerial: null == mobileSerial
          ? _value.mobileSerial
          : mobileSerial // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@HiveField(0) this.userId,
      @HiveField(1) required this.cemexId,
      @HiveField(2) required this.password,
      @HiveField(3) required this.mobileSerial,
      @HiveField(4) this.employeeName,
      @HiveField(5) this.mobile,
      @HiveField(6) this.languageCode,
      @HiveField(7) this.newPassword});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  final String? userId;
  @override
  @HiveField(1)
  final int cemexId;
  @override
  @HiveField(2)
  final String password;
  @override
  @HiveField(3)
  final String mobileSerial;
  @override
  @HiveField(4)
  final String? employeeName;
  @override
  @HiveField(5)
  final String? mobile;
  @override
  @HiveField(6)
  final String? languageCode;
  @override
  @HiveField(7)
  final String? newPassword;

  @override
  String toString() {
    return 'User(userId: $userId, cemexId: $cemexId, password: $password, mobileSerial: $mobileSerial, employeeName: $employeeName, mobile: $mobile, languageCode: $languageCode, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cemexId, cemexId) || other.cemexId == cemexId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobileSerial, mobileSerial) ||
                other.mobileSerial == mobileSerial) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, cemexId, password,
      mobileSerial, employeeName, mobile, languageCode, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) final String? userId,
      @HiveField(1) required final int cemexId,
      @HiveField(2) required final String password,
      @HiveField(3) required final String mobileSerial,
      @HiveField(4) final String? employeeName,
      @HiveField(5) final String? mobile,
      @HiveField(6) final String? languageCode,
      @HiveField(7) final String? newPassword}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  String? get userId;
  @override
  @HiveField(1)
  int get cemexId;
  @override
  @HiveField(2)
  String get password;
  @override
  @HiveField(3)
  String get mobileSerial;
  @override
  @HiveField(4)
  String? get employeeName;
  @override
  @HiveField(5)
  String? get mobile;
  @override
  @HiveField(6)
  String? get languageCode;
  @override
  @HiveField(7)
  String? get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

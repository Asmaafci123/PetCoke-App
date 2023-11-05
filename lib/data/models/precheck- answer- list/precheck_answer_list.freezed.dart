// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precheck_answer_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreCheckAnswerList _$PreCheckAnswerListFromJson(Map<String, dynamic> json) {
  return _PreCheckAnswerList.fromJson(json);
}

/// @nodoc
mixin _$PreCheckAnswerList {
  @HiveField(0)
  int get questionId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get questionAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreCheckAnswerListCopyWith<PreCheckAnswerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreCheckAnswerListCopyWith<$Res> {
  factory $PreCheckAnswerListCopyWith(
          PreCheckAnswerList value, $Res Function(PreCheckAnswerList) then) =
      _$PreCheckAnswerListCopyWithImpl<$Res, PreCheckAnswerList>;
  @useResult
  $Res call(
      {@HiveField(0) int questionId, @HiveField(1) String? questionAnswer});
}

/// @nodoc
class _$PreCheckAnswerListCopyWithImpl<$Res, $Val extends PreCheckAnswerList>
    implements $PreCheckAnswerListCopyWith<$Res> {
  _$PreCheckAnswerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionAnswer: freezed == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreCheckAnswerListCopyWith<$Res>
    implements $PreCheckAnswerListCopyWith<$Res> {
  factory _$$_PreCheckAnswerListCopyWith(_$_PreCheckAnswerList value,
          $Res Function(_$_PreCheckAnswerList) then) =
      __$$_PreCheckAnswerListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int questionId, @HiveField(1) String? questionAnswer});
}

/// @nodoc
class __$$_PreCheckAnswerListCopyWithImpl<$Res>
    extends _$PreCheckAnswerListCopyWithImpl<$Res, _$_PreCheckAnswerList>
    implements _$$_PreCheckAnswerListCopyWith<$Res> {
  __$$_PreCheckAnswerListCopyWithImpl(
      _$_PreCheckAnswerList _value, $Res Function(_$_PreCheckAnswerList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionAnswer = freezed,
  }) {
    return _then(_$_PreCheckAnswerList(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionAnswer: freezed == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreCheckAnswerList implements _PreCheckAnswerList {
  _$_PreCheckAnswerList(
      {@HiveField(0) required this.questionId,
      @HiveField(1) this.questionAnswer});

  factory _$_PreCheckAnswerList.fromJson(Map<String, dynamic> json) =>
      _$$_PreCheckAnswerListFromJson(json);

  @override
  @HiveField(0)
  final int questionId;
  @override
  @HiveField(1)
  final String? questionAnswer;

  @override
  String toString() {
    return 'PreCheckAnswerList(questionId: $questionId, questionAnswer: $questionAnswer)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreCheckAnswerListCopyWith<_$_PreCheckAnswerList> get copyWith =>
      __$$_PreCheckAnswerListCopyWithImpl<_$_PreCheckAnswerList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreCheckAnswerListToJson(
      this,
    );
  }
}

abstract class _PreCheckAnswerList implements PreCheckAnswerList {
  factory _PreCheckAnswerList(
      {@HiveField(0) required final int questionId,
      @HiveField(1) final String? questionAnswer}) = _$_PreCheckAnswerList;

  factory _PreCheckAnswerList.fromJson(Map<String, dynamic> json) =
      _$_PreCheckAnswerList.fromJson;

  @override
  @HiveField(0)
  int get questionId;
  @override
  @HiveField(1)
  String? get questionAnswer;
  @override
  @JsonKey(ignore: true)
  _$$_PreCheckAnswerListCopyWith<_$_PreCheckAnswerList> get copyWith =>
      throw _privateConstructorUsedError;
}

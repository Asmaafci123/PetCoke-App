// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_check_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreCheckQuestion _$PreCheckQuestionFromJson(Map<String, dynamic> json) {
  return _PreCheckQuestion.fromJson(json);
}

/// @nodoc
mixin _$PreCheckQuestion {
  @HiveField(0)
  int get questionId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get questionName => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get questionAnswers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreCheckQuestionCopyWith<PreCheckQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreCheckQuestionCopyWith<$Res> {
  factory $PreCheckQuestionCopyWith(
          PreCheckQuestion value, $Res Function(PreCheckQuestion) then) =
      _$PreCheckQuestionCopyWithImpl<$Res, PreCheckQuestion>;
  @useResult
  $Res call(
      {@HiveField(0) int questionId,
      @HiveField(1) String questionName,
      @HiveField(2) List<String> questionAnswers});
}

/// @nodoc
class _$PreCheckQuestionCopyWithImpl<$Res, $Val extends PreCheckQuestion>
    implements $PreCheckQuestionCopyWith<$Res> {
  _$PreCheckQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionName = null,
    Object? questionAnswers = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionName: null == questionName
          ? _value.questionName
          : questionName // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreCheckQuestionCopyWith<$Res>
    implements $PreCheckQuestionCopyWith<$Res> {
  factory _$$_PreCheckQuestionCopyWith(
          _$_PreCheckQuestion value, $Res Function(_$_PreCheckQuestion) then) =
      __$$_PreCheckQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int questionId,
      @HiveField(1) String questionName,
      @HiveField(2) List<String> questionAnswers});
}

/// @nodoc
class __$$_PreCheckQuestionCopyWithImpl<$Res>
    extends _$PreCheckQuestionCopyWithImpl<$Res, _$_PreCheckQuestion>
    implements _$$_PreCheckQuestionCopyWith<$Res> {
  __$$_PreCheckQuestionCopyWithImpl(
      _$_PreCheckQuestion _value, $Res Function(_$_PreCheckQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? questionName = null,
    Object? questionAnswers = null,
  }) {
    return _then(_$_PreCheckQuestion(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      questionName: null == questionName
          ? _value.questionName
          : questionName // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreCheckQuestion implements _PreCheckQuestion {
  _$_PreCheckQuestion(
      {@HiveField(0) required this.questionId,
      @HiveField(1) required this.questionName,
      @HiveField(2) required this.questionAnswers});

  factory _$_PreCheckQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_PreCheckQuestionFromJson(json);

  @override
  @HiveField(0)
  final int questionId;
  @override
  @HiveField(1)
  final String questionName;
  @override
  @HiveField(2)
  final List<String> questionAnswers;

  @override
  String toString() {
    return 'PreCheckQuestion(questionId: $questionId, questionName: $questionName, questionAnswers: $questionAnswers)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreCheckQuestionCopyWith<_$_PreCheckQuestion> get copyWith =>
      __$$_PreCheckQuestionCopyWithImpl<_$_PreCheckQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreCheckQuestionToJson(
      this,
    );
  }
}

abstract class _PreCheckQuestion implements PreCheckQuestion {
  factory _PreCheckQuestion(
          {@HiveField(0) required final int questionId,
          @HiveField(1) required final String questionName,
          @HiveField(2) required final List<String> questionAnswers}) =
      _$_PreCheckQuestion;

  factory _PreCheckQuestion.fromJson(Map<String, dynamic> json) =
      _$_PreCheckQuestion.fromJson;

  @override
  @HiveField(0)
  int get questionId;
  @override
  @HiveField(1)
  String get questionName;
  @override
  @HiveField(2)
  List<String> get questionAnswers;
  @override
  @JsonKey(ignore: true)
  _$$_PreCheckQuestionCopyWith<_$_PreCheckQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

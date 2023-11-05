// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_check_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreCheckAnswer _$PreCheckAnswerFromJson(Map<String, dynamic> json) {
  return _PreCheckAnswer.fromJson(json);
}

/// @nodoc
mixin _$PreCheckAnswer {
  @HiveField(0)
  List<PreCheckAnswerList> get questionAnswers =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreCheckAnswerCopyWith<PreCheckAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreCheckAnswerCopyWith<$Res> {
  factory $PreCheckAnswerCopyWith(
          PreCheckAnswer value, $Res Function(PreCheckAnswer) then) =
      _$PreCheckAnswerCopyWithImpl<$Res, PreCheckAnswer>;
  @useResult
  $Res call(
      {@HiveField(0) List<PreCheckAnswerList> questionAnswers,
      @HiveField(1) String note});
}

/// @nodoc
class _$PreCheckAnswerCopyWithImpl<$Res, $Val extends PreCheckAnswer>
    implements $PreCheckAnswerCopyWith<$Res> {
  _$PreCheckAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionAnswers = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<PreCheckAnswerList>,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreCheckAnswerCopyWith<$Res>
    implements $PreCheckAnswerCopyWith<$Res> {
  factory _$$_PreCheckAnswerCopyWith(
          _$_PreCheckAnswer value, $Res Function(_$_PreCheckAnswer) then) =
      __$$_PreCheckAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<PreCheckAnswerList> questionAnswers,
      @HiveField(1) String note});
}

/// @nodoc
class __$$_PreCheckAnswerCopyWithImpl<$Res>
    extends _$PreCheckAnswerCopyWithImpl<$Res, _$_PreCheckAnswer>
    implements _$$_PreCheckAnswerCopyWith<$Res> {
  __$$_PreCheckAnswerCopyWithImpl(
      _$_PreCheckAnswer _value, $Res Function(_$_PreCheckAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionAnswers = null,
    Object? note = null,
  }) {
    return _then(_$_PreCheckAnswer(
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<PreCheckAnswerList>,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreCheckAnswer implements _PreCheckAnswer {
  _$_PreCheckAnswer(
      {@HiveField(0) required this.questionAnswers,
      @HiveField(1) required this.note});

  factory _$_PreCheckAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_PreCheckAnswerFromJson(json);

  @override
  @HiveField(0)
  final List<PreCheckAnswerList> questionAnswers;
  @override
  @HiveField(1)
  final String note;

  @override
  String toString() {
    return 'PreCheckAnswer(questionAnswers: $questionAnswers, note: $note)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreCheckAnswerCopyWith<_$_PreCheckAnswer> get copyWith =>
      __$$_PreCheckAnswerCopyWithImpl<_$_PreCheckAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreCheckAnswerToJson(
      this,
    );
  }
}

abstract class _PreCheckAnswer implements PreCheckAnswer {
  factory _PreCheckAnswer(
      {@HiveField(0) required final List<PreCheckAnswerList> questionAnswers,
      @HiveField(1) required final String note}) = _$_PreCheckAnswer;

  factory _PreCheckAnswer.fromJson(Map<String, dynamic> json) =
      _$_PreCheckAnswer.fromJson;

  @override
  @HiveField(0)
  List<PreCheckAnswerList> get questionAnswers;
  @override
  @HiveField(1)
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$_PreCheckAnswerCopyWith<_$_PreCheckAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pre_check_question.freezed.dart';
part 'pre_check_question.g.dart';

@HiveType(typeId: 1)// unique id
@unfreezed
class PreCheckQuestion with _$PreCheckQuestion{
  factory PreCheckQuestion({
    @HiveField(0)
    required final int questionId,
    @HiveField(1)
    required final String questionName,
    @HiveField(2)
    required final List<String>questionAnswers,
  }) = _PreCheckQuestion;
  factory  PreCheckQuestion.fromJson(Map<String, dynamic> json) => _$PreCheckQuestionFromJson(json);
}

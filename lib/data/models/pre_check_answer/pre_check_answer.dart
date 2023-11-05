import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../precheck- answer- list/precheck_answer_list.dart';

part 'pre_check_answer.freezed.dart';
part 'pre_check_answer.g.dart';

@HiveType(typeId: 1)// unique id
@unfreezed
class PreCheckAnswer with _$PreCheckAnswer{
  factory PreCheckAnswer({
    @HiveField(0)
    required final List<PreCheckAnswerList> questionAnswers,
    @HiveField(1)
    required final String note,
  }) = _PreCheckAnswer;
  factory  PreCheckAnswer.fromJson(Map<String, dynamic> json) => _$PreCheckAnswerFromJson(json);
}

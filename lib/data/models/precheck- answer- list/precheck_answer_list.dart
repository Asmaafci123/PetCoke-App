import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'precheck_answer_list.freezed.dart';
part 'precheck_answer_list.g.dart';

@HiveType(typeId: 1)// unique id
@unfreezed
class PreCheckAnswerList with _$PreCheckAnswerList{
  factory PreCheckAnswerList({

    @HiveField(0)
    required final int questionId,
    @HiveField(1)
    final String? questionAnswer,
  }) = _PreCheckAnswerList;
  factory  PreCheckAnswerList.fromJson(Map<String, dynamic> json) => _$PreCheckAnswerListFromJson(json);
}

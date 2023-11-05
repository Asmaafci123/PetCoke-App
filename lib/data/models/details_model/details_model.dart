import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details_model.freezed.dart';
part 'details_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class DetailsModel with _$DetailsModel{
  factory DetailsModel(
      {
        @HiveField(0) required final String name,
        @HiveField(1) required final List<String> attachments,
      }) =_DetailsModel;
  factory DetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsModelFromJson(json);
}

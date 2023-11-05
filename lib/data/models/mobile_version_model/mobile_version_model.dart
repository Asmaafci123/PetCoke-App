import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'mobile_version_model.freezed.dart';
part 'mobile_version_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class MobileVersionModel with _$MobileVersionModel{
  factory MobileVersionModel(
      {
        @HiveField(0) required final String androidVersion,
        @HiveField(1) required final String iosVersion,
      }) =_MobileVersionModel;
  factory MobileVersionModel.fromJson(Map<String, dynamic> json) =>
      _$MobileVersionModelFromJson(json);
}

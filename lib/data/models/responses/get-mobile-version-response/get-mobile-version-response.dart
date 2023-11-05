import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../mobile_version_model/mobile_version_model.dart';
part 'get-mobile-version-response.freezed.dart';
part 'get-mobile-version-response.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class MobileVersionModelResponse with _$MobileVersionModelResponse{
  factory MobileVersionModelResponse(
      {

        @HiveField(0) required final bool flag,
        @HiveField(1) required final String message,
        @HiveField(2) required final MobileVersionModel data,
      }) =_MobileVersionModelResponse;
  factory MobileVersionModelResponse.fromJson(Map<String, dynamic> json) =>
      _$MobileVersionModelResponseFromJson(json);
}

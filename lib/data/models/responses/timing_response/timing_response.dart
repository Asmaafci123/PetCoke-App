import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:petcoke/data/models/send_current_location_model/send_current_location_model.dart';

part 'timing_response.freezed.dart';
part 'timing_response.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class TimingResponse with _$TimingResponse{
  factory  TimingResponse(
      {@HiveField(0) required final bool flag,
        @HiveField(1) required final String message,
        @HiveField(2) SendLocationModel? data,
      }) =
  _TimingResponse;
  factory  TimingResponse.fromJson(Map<String, dynamic> json) =>
      _$TimingResponseFromJson(json);
}

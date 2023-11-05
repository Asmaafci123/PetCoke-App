import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import '../../log-attendance-model/log-attendance-model.dart';
import '../../mobile_version_model/mobile_version_model.dart';
part 'log-attendance-history.freezed.dart';
part 'log-attendance-history.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class LogAttendanceResponse with _$LogAttendanceResponse{
  factory LogAttendanceResponse(
      {

        @HiveField(0) required final bool flag,
        @HiveField(1) required final String message,
        @HiveField(2) required final List<LogAttendanceModel> data,
      }) =_LogAttendanceResponse;
  factory LogAttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$LogAttendanceResponseFromJson(json);
}

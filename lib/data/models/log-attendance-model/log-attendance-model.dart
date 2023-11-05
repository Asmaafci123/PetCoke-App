import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'log-attendance-model.freezed.dart';
part 'log-attendance-model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class LogAttendanceModel with _$LogAttendanceModel{
  factory LogAttendanceModel(
      {
        @HiveField(0) required final String day,
        @HiveField(1) required final DateTime checkIn,
        @HiveField(2) required final DateTime checkOut,
        @HiveField(3) required final int hours,
      }) =_LogAttendanceModel;
  factory LogAttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$LogAttendanceModelFromJson(json);
}

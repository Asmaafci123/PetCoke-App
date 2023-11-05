// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log-attendance-history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogAttendanceResponseAdapter extends TypeAdapter<LogAttendanceResponse> {
  @override
  final int typeId = 1;

  @override
  LogAttendanceResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogAttendanceResponse(
      flag: fields[0] as bool,
      message: fields[1] as String,
      data: (fields[2] as List).cast<LogAttendanceModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, LogAttendanceResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.flag)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogAttendanceResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogAttendanceResponse _$$_LogAttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LogAttendanceResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => LogAttendanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LogAttendanceResponseToJson(
        _$_LogAttendanceResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log-attendance-model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogAttendanceModelAdapter extends TypeAdapter<LogAttendanceModel> {
  @override
  final int typeId = 1;

  @override
  LogAttendanceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogAttendanceModel(
      day: fields[0] as String,
      checkIn: fields[1] as DateTime,
      checkOut: fields[2] as DateTime,
      hours: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LogAttendanceModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.day)
      ..writeByte(1)
      ..write(obj.checkIn)
      ..writeByte(2)
      ..write(obj.checkOut)
      ..writeByte(3)
      ..write(obj.hours);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogAttendanceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogAttendanceModel _$$_LogAttendanceModelFromJson(
        Map<String, dynamic> json) =>
    _$_LogAttendanceModel(
      day: json['day'] as String,
      checkIn: DateTime.parse(json['checkIn'] as String),
      checkOut: DateTime.parse(json['checkOut'] as String),
      hours: json['hours'] as int,
    );

Map<String, dynamic> _$$_LogAttendanceModelToJson(
        _$_LogAttendanceModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'checkIn': instance.checkIn.toIso8601String(),
      'checkOut': instance.checkOut.toIso8601String(),
      'hours': instance.hours,
    };

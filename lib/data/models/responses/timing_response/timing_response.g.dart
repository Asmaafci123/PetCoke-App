// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimingResponseAdapter extends TypeAdapter<TimingResponse> {
  @override
  final int typeId = 1;

  @override
  TimingResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimingResponse(
      flag: fields[0] as bool,
      message: fields[1] as String,
      data: fields[2] as SendLocationModel?,
    );
  }

  @override
  void write(BinaryWriter writer, TimingResponse obj) {
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
      other is TimingResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimingResponse _$$_TimingResponseFromJson(Map<String, dynamic> json) =>
    _$_TimingResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : SendLocationModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimingResponseToJson(_$_TimingResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

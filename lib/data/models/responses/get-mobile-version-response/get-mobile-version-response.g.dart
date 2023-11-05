// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get-mobile-version-response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MobileVersionModelResponseAdapter
    extends TypeAdapter<MobileVersionModelResponse> {
  @override
  final int typeId = 1;

  @override
  MobileVersionModelResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MobileVersionModelResponse(
      flag: fields[0] as bool,
      message: fields[1] as String,
      data: fields[2] as MobileVersionModel,
    );
  }

  @override
  void write(BinaryWriter writer, MobileVersionModelResponse obj) {
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
      other is MobileVersionModelResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MobileVersionModelResponse _$$_MobileVersionModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MobileVersionModelResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data: MobileVersionModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MobileVersionModelResponseToJson(
        _$_MobileVersionModelResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

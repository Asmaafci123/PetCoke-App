// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_shipment_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisterShipmentResponseAdapter
    extends TypeAdapter<RegisterShipmentResponse> {
  @override
  final int typeId = 1;

  @override
  RegisterShipmentResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegisterShipmentResponse(
      flag: fields[0] as bool,
      message: fields[1] as String,
      data: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RegisterShipmentResponse obj) {
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
      other is RegisterShipmentResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterShipmentResponse _$$_RegisterShipmentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterShipmentResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$_RegisterShipmentResponseToJson(
        _$_RegisterShipmentResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_of_shipment_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShipmentInfoResponseAdapter extends TypeAdapter<ShipmentInfoResponse> {
  @override
  final int typeId = 1;

  @override
  ShipmentInfoResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShipmentInfoResponse(
      flag: fields[0] as bool,
      message: fields[1] as String,
      data: fields[2] as MasterDataAddShipment,
    );
  }

  @override
  void write(BinaryWriter writer, ShipmentInfoResponse obj) {
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
      other is ShipmentInfoResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipmentInfoResponse _$$_ShipmentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ShipmentInfoResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data:
          MasterDataAddShipment.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShipmentInfoResponseToJson(
        _$_ShipmentInfoResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_shipment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddShipmentModelAdapter extends TypeAdapter<AddShipmentModel> {
  @override
  final int typeId = 1;

  @override
  AddShipmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddShipmentModel(
      preCheckAnswer: fields[0] as PreCheckAnswer,
      shipment: fields[1] as ShipmentModel,
      userId: fields[2] as String,
      languageCode: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AddShipmentModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.preCheckAnswer)
      ..writeByte(1)
      ..write(obj.shipment)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddShipmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddShipmentModel _$$_AddShipmentModelFromJson(Map<String, dynamic> json) =>
    _$_AddShipmentModel(
      preCheckAnswer: PreCheckAnswer.fromJson(
          json['preCheckAnswer'] as Map<String, dynamic>),
      shipment:
          ShipmentModel.fromJson(json['shipment'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$_AddShipmentModelToJson(_$_AddShipmentModel instance) =>
    <String, dynamic>{
      'preCheckAnswer': instance.preCheckAnswer,
      'shipment': instance.shipment,
      'userId': instance.userId,
      'languageCode': instance.languageCode,
    };

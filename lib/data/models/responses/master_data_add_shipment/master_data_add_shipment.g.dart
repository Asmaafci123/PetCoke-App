// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_add_shipment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MasterDataAddShipmentAdapter extends TypeAdapter<MasterDataAddShipment> {
  @override
  final int typeId = 1;

  @override
  MasterDataAddShipment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MasterDataAddShipment(
      questionAnswers: (fields[0] as List).cast<PreCheckQuestion>(),
      stores: (fields[1] as List).cast<Store>(),
      vessels: (fields[2] as List).cast<Vessel>(),
    );
  }

  @override
  void write(BinaryWriter writer, MasterDataAddShipment obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.questionAnswers)
      ..writeByte(1)
      ..write(obj.stores)
      ..writeByte(2)
      ..write(obj.vessels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MasterDataAddShipmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterDataAddShipment _$$_MasterDataAddShipmentFromJson(
        Map<String, dynamic> json) =>
    _$_MasterDataAddShipment(
      questionAnswers: (json['questionAnswers'] as List<dynamic>)
          .map((e) => PreCheckQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      stores: (json['stores'] as List<dynamic>)
          .map((e) => Store.fromJson(e as Map<String, dynamic>))
          .toList(),
      vessels: (json['vessels'] as List<dynamic>)
          .map((e) => Vessel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MasterDataAddShipmentToJson(
        _$_MasterDataAddShipment instance) =>
    <String, dynamic>{
      'questionAnswers': instance.questionAnswers,
      'stores': instance.stores,
      'vessels': instance.vessels,
    };

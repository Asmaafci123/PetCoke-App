// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vessel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VesselAdapter extends TypeAdapter<Vessel> {
  @override
  final int typeId = 1;

  @override
  Vessel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Vessel(
      vesselId: fields[0] as int,
      qty: fields[1] as double,
      remain: fields[2] as double,
      vesselName: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Vessel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.vesselId)
      ..writeByte(1)
      ..write(obj.qty)
      ..writeByte(2)
      ..write(obj.remain)
      ..writeByte(3)
      ..write(obj.vesselName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VesselAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vessel _$$_VesselFromJson(Map<String, dynamic> json) => _$_Vessel(
      vesselId: json['vesselId'] as int,
      qty: (json['qty'] as num).toDouble(),
      remain: (json['remain'] as num).toDouble(),
      vesselName: json['vesselName'] as String,
    );

Map<String, dynamic> _$$_VesselToJson(_$_Vessel instance) => <String, dynamic>{
      'vesselId': instance.vesselId,
      'qty': instance.qty,
      'remain': instance.remain,
      'vesselName': instance.vesselName,
    };

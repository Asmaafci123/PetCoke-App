// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_current_location_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SendLocationModelAdapter extends TypeAdapter<SendLocationModel> {
  @override
  final int typeId = 2;

  @override
  SendLocationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SendLocationModel(
      userId: fields[0] as String,
      lat: fields[1] as String,
      lng: fields[2] as String,
      city: fields[3] as String,
      street: fields[4] as String,
      address: fields[5] as String,
      date: fields[6] as DateTime,
      action: fields[7] as String,
      languageCode: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SendLocationModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.lng)
      ..writeByte(3)
      ..write(obj.city)
      ..writeByte(4)
      ..write(obj.street)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.action)
      ..writeByte(8)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendLocationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendLocationModel _$$_SendLocationModelFromJson(Map<String, dynamic> json) =>
    _$_SendLocationModel(
      userId: json['userId'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      city: json['city'] as String,
      street: json['street'] as String,
      address: json['address'] as String,
      date: DateTime.parse(json['date'] as String),
      action: json['action'] as String,
      languageCode: json['languageCode'] as String,
    );

Map<String, dynamic> _$$_SendLocationModelToJson(
        _$_SendLocationModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'lat': instance.lat,
      'lng': instance.lng,
      'city': instance.city,
      'street': instance.street,
      'address': instance.address,
      'date': instance.date.toIso8601String(),
      'action': instance.action,
      'languageCode': instance.languageCode,
    };

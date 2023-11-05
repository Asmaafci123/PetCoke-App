// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailsModelAdapter extends TypeAdapter<DetailsModel> {
  @override
  final int typeId = 1;

  @override
  DetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DetailsModel(
      name: fields[0] as String,
      attachments: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, DetailsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.attachments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsModel _$$_DetailsModelFromJson(Map<String, dynamic> json) =>
    _$_DetailsModel(
      name: json['name'] as String,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DetailsModelToJson(_$_DetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attachments': instance.attachments,
    };

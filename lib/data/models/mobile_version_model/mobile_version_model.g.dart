// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_version_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MobileVersionModelAdapter extends TypeAdapter<MobileVersionModel> {
  @override
  final int typeId = 1;

  @override
  MobileVersionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MobileVersionModel(
      androidVersion: fields[0] as String,
      iosVersion: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MobileVersionModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.androidVersion)
      ..writeByte(1)
      ..write(obj.iosVersion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MobileVersionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MobileVersionModel _$$_MobileVersionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MobileVersionModel(
      androidVersion: json['androidVersion'] as String,
      iosVersion: json['iosVersion'] as String,
    );

Map<String, dynamic> _$$_MobileVersionModelToJson(
        _$_MobileVersionModel instance) =>
    <String, dynamic>{
      'androidVersion': instance.androidVersion,
      'iosVersion': instance.iosVersion,
    };

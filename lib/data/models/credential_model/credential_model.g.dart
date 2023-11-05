// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CredentialDetailsAdapter extends TypeAdapter<CredentialDetails> {
  @override
  final int typeId = 4;

  @override
  CredentialDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CredentialDetails(
      cemexId: fields[0] as int?,
      password: fields[1] as String?,
      languageCode: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CredentialDetails obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.cemexId)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CredentialDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CredentialDetails _$$_CredentialDetailsFromJson(Map<String, dynamic> json) =>
    _$_CredentialDetails(
      cemexId: json['cemexId'] as int?,
      password: json['password'] as String?,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$_CredentialDetailsToJson(
        _$_CredentialDetails instance) =>
    <String, dynamic>{
      'cemexId': instance.cemexId,
      'password': instance.password,
      'languageCode': instance.languageCode,
    };

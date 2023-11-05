// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      userId: fields[0] as String?,
      cemexId: fields[1] as int,
      password: fields[2] as String,
      mobileSerial: fields[3] as String,
      employeeName: fields[4] as String?,
      mobile: fields[5] as String?,
      languageCode: fields[6] as String?,
      newPassword: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.cemexId)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.mobileSerial)
      ..writeByte(4)
      ..write(obj.employeeName)
      ..writeByte(5)
      ..write(obj.mobile)
      ..writeByte(6)
      ..write(obj.languageCode)
      ..writeByte(7)
      ..write(obj.newPassword);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String?,
      cemexId: json['cemexId'] as int,
      password: json['password'] as String,
      mobileSerial: json['mobileSerial'] as String,
      employeeName: json['employeeName'] as String?,
      mobile: json['mobile'] as String?,
      languageCode: json['languageCode'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'cemexId': instance.cemexId,
      'password': instance.password,
      'mobileSerial': instance.mobileSerial,
      'employeeName': instance.employeeName,
      'mobile': instance.mobile,
      'languageCode': instance.languageCode,
      'newPassword': instance.newPassword,
    };

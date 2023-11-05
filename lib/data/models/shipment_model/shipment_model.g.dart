// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShipmentModelAdapter extends TypeAdapter<ShipmentModel> {
  @override
  final int typeId = 1;

  @override
  ShipmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShipmentModel(
      vesselID: fields[0] as String,
      vesselName: fields[1] as String,
      fromPortId: fields[2] as int,
      toWHId: fields[3] as int,
      deliveryNote: fields[4] as DetailsModel,
      analysisCardNo: fields[5] as DetailsModel,
      driverName: fields[6] as String,
      driverIDNo: fields[7] as DetailsModel,
      driverLicenseNo: fields[8] as DetailsModel,
      driverMobileNo: fields[9] as String,
      licensePlateNo: fields[10] as String,
      truckLicenseNo: fields[11] as DetailsModel,
      date: fields[12] as DateTime,
      entryTime: fields[13] as DateTime,
      exittime: fields[14] as DateTime,
      netweight: fields[15] as DetailsModel,
      notes: fields[16] as String,
      truckLicenseValidation: fields[17] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, ShipmentModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.vesselID)
      ..writeByte(1)
      ..write(obj.vesselName)
      ..writeByte(2)
      ..write(obj.fromPortId)
      ..writeByte(3)
      ..write(obj.toWHId)
      ..writeByte(4)
      ..write(obj.deliveryNote)
      ..writeByte(5)
      ..write(obj.analysisCardNo)
      ..writeByte(6)
      ..write(obj.driverName)
      ..writeByte(7)
      ..write(obj.driverIDNo)
      ..writeByte(8)
      ..write(obj.driverLicenseNo)
      ..writeByte(9)
      ..write(obj.driverMobileNo)
      ..writeByte(10)
      ..write(obj.licensePlateNo)
      ..writeByte(11)
      ..write(obj.truckLicenseNo)
      ..writeByte(12)
      ..write(obj.date)
      ..writeByte(13)
      ..write(obj.entryTime)
      ..writeByte(14)
      ..write(obj.exittime)
      ..writeByte(15)
      ..write(obj.netweight)
      ..writeByte(16)
      ..write(obj.notes)
      ..writeByte(17)
      ..write(obj.truckLicenseValidation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShipmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipmentModel _$$_ShipmentModelFromJson(Map<String, dynamic> json) =>
    _$_ShipmentModel(
      vesselID: json['vesselID'] as String,
      vesselName: json['vesselName'] as String,
      fromPortId: json['fromPortId'] as int,
      toWHId: json['toWHId'] as int,
      deliveryNote:
          DetailsModel.fromJson(json['deliveryNote'] as Map<String, dynamic>),
      analysisCardNo:
          DetailsModel.fromJson(json['analysisCardNo'] as Map<String, dynamic>),
      driverName: json['driverName'] as String,
      driverIDNo:
          DetailsModel.fromJson(json['driverIDNo'] as Map<String, dynamic>),
      driverLicenseNo: DetailsModel.fromJson(
          json['driverLicenseNo'] as Map<String, dynamic>),
      driverMobileNo: json['driverMobileNo'] as String,
      licensePlateNo: json['licensePlateNo'] as String,
      truckLicenseNo:
          DetailsModel.fromJson(json['truckLicenseNo'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      entryTime: DateTime.parse(json['entryTime'] as String),
      exittime: DateTime.parse(json['exittime'] as String),
      netweight:
          DetailsModel.fromJson(json['netweight'] as Map<String, dynamic>),
      notes: json['notes'] as String,
      truckLicenseValidation: json['truckLicenseValidation'] as bool?,
    );

Map<String, dynamic> _$$_ShipmentModelToJson(_$_ShipmentModel instance) =>
    <String, dynamic>{
      'vesselID': instance.vesselID,
      'vesselName': instance.vesselName,
      'fromPortId': instance.fromPortId,
      'toWHId': instance.toWHId,
      'deliveryNote': instance.deliveryNote,
      'analysisCardNo': instance.analysisCardNo,
      'driverName': instance.driverName,
      'driverIDNo': instance.driverIDNo,
      'driverLicenseNo': instance.driverLicenseNo,
      'driverMobileNo': instance.driverMobileNo,
      'licensePlateNo': instance.licensePlateNo,
      'truckLicenseNo': instance.truckLicenseNo,
      'date': instance.date.toIso8601String(),
      'entryTime': instance.entryTime.toIso8601String(),
      'exittime': instance.exittime.toIso8601String(),
      'netweight': instance.netweight,
      'notes': instance.notes,
      'truckLicenseValidation': instance.truckLicenseValidation,
    };

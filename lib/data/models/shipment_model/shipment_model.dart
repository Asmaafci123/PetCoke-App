import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:petcoke/data/models/details_model/details_model.dart';
part 'shipment_model.freezed.dart';
part 'shipment_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class ShipmentModel with _$ShipmentModel {
  factory ShipmentModel({
    @HiveField(0) required final String vesselID,
    @HiveField(1) required final String vesselName,
    @HiveField(2) required final int fromPortId,
    @HiveField(3) required final int toWHId,
    @HiveField(4) required final DetailsModel deliveryNote,
    @HiveField(5) required final DetailsModel analysisCardNo,
    @HiveField(6) required final String driverName,
    @HiveField(7) required final DetailsModel driverIDNo,
    @HiveField(8) required final DetailsModel driverLicenseNo,
    @HiveField(9) required final String driverMobileNo,
    @HiveField(10) required final String licensePlateNo,
    @HiveField(11) required final DetailsModel truckLicenseNo,
    @HiveField(12) required final DateTime date,
    @HiveField(13) required final DateTime entryTime,
    @HiveField(14) required final DateTime exittime,
    @HiveField(15) required final DetailsModel netweight,
    @HiveField(16) required final String notes,
    @HiveField(17)  final bool? truckLicenseValidation,
  }) = _ShipmentModel;
  factory ShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$ShipmentModelFromJson(json);
}

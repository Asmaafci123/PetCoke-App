import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:petcoke/data/models/pre_check_answer/pre_check_answer.dart';
import '../shipment_model/shipment_model.dart';
part 'add_shipment_model.freezed.dart';
part 'add_shipment_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class AddShipmentModel with _$AddShipmentModel{
  factory AddShipmentModel(
      {
        @HiveField(0) required final  PreCheckAnswer preCheckAnswer,
        @HiveField(1) required final ShipmentModel shipment,
        @HiveField(2) required final String userId,
        @HiveField(3) String? languageCode,
      }) =_AddShipmentModel;
  factory AddShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$AddShipmentModelFromJson(json);
}

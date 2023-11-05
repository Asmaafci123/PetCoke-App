import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../preCheck_question_model/pre_check_question.dart';
import '../../store/store.dart';
import '../../vessel/vessel.dart';
import '../master_data_add_shipment/master_data_add_shipment.dart';

part 'response_of_shipment_info.freezed.dart';
part 'response_of_shipment_info.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class ShipmentInfoResponse with _$ShipmentInfoResponse {
  factory  ShipmentInfoResponse(
      {@HiveField(0) required final bool flag,
        @HiveField(1) required final String message,
        @HiveField(2) required final MasterDataAddShipment data,

      }) =
  _ShipmentInfoResponse;
  factory ShipmentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipmentInfoResponseFromJson(json);
}

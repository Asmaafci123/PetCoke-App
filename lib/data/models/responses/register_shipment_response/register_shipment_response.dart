import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'register_shipment_response.freezed.dart';
part 'register_shipment_response.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class RegisterShipmentResponse with _$RegisterShipmentResponse {
  factory  RegisterShipmentResponse(
      {@HiveField(0) required final bool flag,
        @HiveField(1) required final String message,
        @HiveField(2) String? data,
      }) =
  _RegisterShipmentResponse;
  factory  RegisterShipmentResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterShipmentResponseFromJson(json);
}

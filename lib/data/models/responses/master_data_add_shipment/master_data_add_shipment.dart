import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../preCheck_question_model/pre_check_question.dart';
import '../../store/store.dart';
import '../../vessel/vessel.dart';

part 'master_data_add_shipment.freezed.dart';
part 'master_data_add_shipment.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class MasterDataAddShipment with _$MasterDataAddShipment {
  factory MasterDataAddShipment(
          {@HiveField(0) required final List<PreCheckQuestion> questionAnswers,
          @HiveField(1) required final List<Store> stores,
          @HiveField(2) required final List<Vessel> vessels,

          }) =
      _MasterDataAddShipment;
  factory MasterDataAddShipment.fromJson(Map<String, dynamic> json) =>
      _$MasterDataAddShipmentFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'vessel.freezed.dart';
part 'vessel.g.dart';

@HiveType(typeId: 1)// unique id
@unfreezed
class Vessel with _$Vessel{
  factory Vessel({
    @HiveField(0)
    required final int vesselId,
    @HiveField(1)
    required final double qty,
    @HiveField(2)
    required final double remain,
    @HiveField(3)
    required final String vesselName,
  }) = _Vessel;
  factory  Vessel.fromJson(Map<String, dynamic> json) => _$VesselFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'send_current_location_model.freezed.dart';

part 'send_current_location_model.g.dart';
@HiveType(typeId: 2)// unique id
@freezed
class SendLocationModel with _$SendLocationModel {
  const factory SendLocationModel({
    @HiveField(0)
    required String userId,
    @HiveField(1)
    required String lat,
    @HiveField(2)
    required String lng,
    @HiveField(3)
    required String city,
    @HiveField(4)
    required String street,
    @HiveField(5)
    required String address,
    @HiveField(6)
    required DateTime date,
    @HiveField(7)
    required String action,
    @HiveField(8)
    required String languageCode,
  }) = _SendLocationModel;
  factory  SendLocationModel.fromJson(Map<String, dynamic> json) => _$SendLocationModelFromJson(json);
}
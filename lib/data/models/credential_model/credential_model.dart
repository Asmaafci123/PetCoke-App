import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'credential_model.freezed.dart';

part 'credential_model.g.dart';
@HiveType(typeId: 4)// unique id
@freezed
class CredentialDetails with _$CredentialDetails {
  const factory CredentialDetails({

    @HiveField(0)
    int? cemexId,
    @HiveField(1)
     String? password,
    @HiveField(2)
    String? languageCode,
  }) = _CredentialDetails;
  factory  CredentialDetails.fromJson(Map<String, dynamic> json) => _$CredentialDetailsFromJson(json);
}
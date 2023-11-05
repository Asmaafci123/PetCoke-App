import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'user.freezed.dart';

part 'user.g.dart';
@HiveType(typeId: 0)// unique id
@freezed
class User with _$User  {
  const factory User({
    @HiveField(0)
     String? userId ,
    @HiveField(1)
    required int cemexId,
    @HiveField(2)
    required  String password,
    @HiveField(3)
    required String mobileSerial,
    @HiveField(4)
    String? employeeName,
    @HiveField(5)
     String?  mobile,
    @HiveField(6)
    String? languageCode,
    @HiveField(7)
    String? newPassword,
  }) = _User;
  factory  User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
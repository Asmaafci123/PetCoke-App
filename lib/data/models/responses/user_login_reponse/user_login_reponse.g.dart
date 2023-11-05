// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLoginResponse _$$_UserLoginResponseFromJson(Map<String, dynamic> json) =>
    _$_UserLoginResponse(
      flag: json['flag'] as bool,
      message: json['message'] as String,
      data: User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserLoginResponseToJson(
        _$_UserLoginResponse instance) =>
    <String, dynamic>{
      'flag': instance.flag,
      'message': instance.message,
      'data': instance.data,
    };

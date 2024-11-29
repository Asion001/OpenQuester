// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_register_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputRegisterUserImpl _$$InputRegisterUserImplFromJson(
        Map<String, dynamic> json) =>
    _$InputRegisterUserImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$InputRegisterUserImplToJson(
        _$InputRegisterUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'birthday': instance.birthday.toIso8601String(),
      'avatar': instance.avatar,
    };

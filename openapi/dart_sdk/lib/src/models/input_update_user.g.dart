// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_update_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputUpdateUserImpl _$$InputUpdateUserImplFromJson(
        Map<String, dynamic> json) =>
    _$InputUpdateUserImpl(
      name: json['name'] as String,
      password: json['password'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$InputUpdateUserImplToJson(
        _$InputUpdateUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'birthday': instance.birthday.toIso8601String(),
      'avatar': instance.avatar,
    };

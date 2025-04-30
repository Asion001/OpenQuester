// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_update_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputUpdateUser _$InputUpdateUserFromJson(Map<String, dynamic> json) =>
    _InputUpdateUser(
      username: json['username'] as String?,
      email: json['email'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$InputUpdateUserToJson(_InputUpdateUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'birthday': instance.birthday?.toIso8601String(),
      'avatar': instance.avatar,
    };

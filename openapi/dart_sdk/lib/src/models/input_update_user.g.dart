// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_update_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputUpdateUserImpl _$$InputUpdateUserImplFromJson(
        Map<String, dynamic> json) =>
    _$InputUpdateUserImpl(
      username: json['username'] as String?,
      email: json['email'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$InputUpdateUserImplToJson(
        _$InputUpdateUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'birthday': instance.birthday?.toIso8601String(),
      'avatar': instance.avatar,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleUserDataImpl _$$SimpleUserDataImplFromJson(Map<String, dynamic> json) =>
    _$SimpleUserDataImpl(
      id: json['id'] as num,
      username: json['username'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$SimpleUserDataImplToJson(
        _$SimpleUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
    };

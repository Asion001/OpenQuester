// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShortUserInfo _$ShortUserInfoFromJson(Map<String, dynamic> json) =>
    _ShortUserInfo(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$ShortUserInfoToJson(_ShortUserInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerMeta _$PlayerMetaFromJson(Map<String, dynamic> json) => _PlayerMeta(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$PlayerMetaToJson(_PlayerMeta instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
    };

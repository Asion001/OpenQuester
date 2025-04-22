// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerMetaImpl _$$PlayerMetaImplFromJson(Map<String, dynamic> json) =>
    _$PlayerMetaImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$PlayerMetaImplToJson(_$PlayerMetaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar,
    };

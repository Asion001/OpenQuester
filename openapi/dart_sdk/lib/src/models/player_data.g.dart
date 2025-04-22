// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDataImpl _$$PlayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDataImpl(
      meta: PlayerMeta.fromJson(json['meta'] as Map<String, dynamic>),
      role: PlayerRole.fromJson(json['role'] as String),
      restrictionData: RestrictionsEventData.fromJson(
          json['restrictionData'] as Map<String, dynamic>),
      score: json['score'] as num,
      slot: json['slot'] as num?,
      status: PlayerDataStatus.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$PlayerDataImplToJson(_$PlayerDataImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'role': instance.role,
      'restrictionData': instance.restrictionData,
      'score': instance.score,
      'slot': instance.slot,
      'status': instance.status,
    };

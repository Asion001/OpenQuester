// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerDataImpl _$$PlayerDataImplFromJson(Map<String, dynamic> json) =>
    _$PlayerDataImpl(
      meta: PlayerMeta.fromJson(json['meta'] as Map<String, dynamic>),
      role: PlayerRole.fromJson(json['role'] as String),
      restrictions: RestrictionsEventData.fromJson(
          json['restrictions'] as Map<String, dynamic>),
      balance: json['balance'] as num,
      slot: json['slot'] as num?,
    );

Map<String, dynamic> _$$PlayerDataImplToJson(_$PlayerDataImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'role': instance.role,
      'restrictions': instance.restrictions,
      'balance': instance.balance,
      'slot': instance.slot,
    };

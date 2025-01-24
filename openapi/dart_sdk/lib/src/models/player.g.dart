// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      userId: (json['userId'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      role: PlayerRole.fromJson(json['role'] as String),
      connected: json['connected'] as bool,
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'score': instance.score,
      'role': instance.role,
      'connected': instance.connected,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IGameStateImpl _$$IGameStateImplFromJson(Map<String, dynamic> json) =>
    _$IGameStateImpl(
      id: json['id'] as String,
      createdBy: (json['createdBy'] as num).toInt(),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      currentRound: (json['currentRound'] as num).toInt(),
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      packageId: (json['packageId'] as num).toInt(),
      lastAnsweredUserId: (json['lastAnsweredUserId'] as num).toInt(),
      startedAt: DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$$IGameStateImplToJson(_$IGameStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'currentRound': instance.currentRound,
      'players': instance.players,
      'maxPlayers': instance.maxPlayers,
      'packageId': instance.packageId,
      'lastAnsweredUserId': instance.lastAnsweredUserId,
      'startedAt': instance.startedAt.toIso8601String(),
    };

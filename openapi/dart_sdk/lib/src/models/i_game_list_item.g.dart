// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_game_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IGameListItemImpl _$$IGameListItemImplFromJson(Map<String, dynamic> json) =>
    _$IGameListItemImpl(
      id: json['id'] as String,
      createdBy: (json['createdBy'] as num).toInt(),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      currentRound: (json['currentRound'] as num).toInt(),
      players: (json['players'] as num).toInt(),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      startedAt: DateTime.parse(json['startedAt'] as String),
      package: IPackageItem.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IGameListItemImplToJson(_$IGameListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'currentRound': instance.currentRound,
      'players': instance.players,
      'maxPlayers': instance.maxPlayers,
      'startedAt': instance.startedAt.toIso8601String(),
      'package': instance.package,
    };

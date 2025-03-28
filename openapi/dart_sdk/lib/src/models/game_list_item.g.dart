// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameListItemImpl _$$GameListItemImplFromJson(Map<String, dynamic> json) =>
    _$GameListItemImpl(
      id: json['id'] as String,
      createdBy:
          ShortUserInfo.fromJson(json['createdBy'] as Map<String, dynamic>),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      ageRestriction:
          GameListItemAgeRestriction.fromJson(json['ageRestriction'] as String),
      currentRound: (json['currentRound'] as num).toInt(),
      players: (json['players'] as num).toInt(),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      package: PackageItem.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameListItemImplToJson(_$GameListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'ageRestriction': instance.ageRestriction,
      'currentRound': instance.currentRound,
      'players': instance.players,
      'maxPlayers': instance.maxPlayers,
      'startedAt': instance.startedAt?.toIso8601String(),
      'package': instance.package,
    };

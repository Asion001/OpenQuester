// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameListItem _$GameListItemFromJson(Map<String, dynamic> json) =>
    _GameListItem(
      id: json['id'] as String,
      createdBy: ShortUserInfo.fromJson(
        json['createdBy'] as Map<String, dynamic>,
      ),
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      ageRestriction: AgeRestriction.fromJson(json['ageRestriction'] as String),
      isPrivate: json['isPrivate'] as bool,
      currentRound: (json['currentRound'] as num?)?.toInt(),
      playedQuestions: (json['playedQuestions'] as num?)?.toInt(),
      players: (json['players'] as num).toInt(),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      package: PackageItem.fromJson(json['package'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameListItemToJson(_GameListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'ageRestriction': instance.ageRestriction,
      'isPrivate': instance.isPrivate,
      'currentRound': instance.currentRound,
      'playedQuestions': instance.playedQuestions,
      'players': instance.players,
      'maxPlayers': instance.maxPlayers,
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'package': instance.package,
    };

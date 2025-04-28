// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_create_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameCreateData _$GameCreateDataFromJson(Map<String, dynamic> json) =>
    _GameCreateData(
      title: json['title'] as String,
      packageId: (json['packageId'] as num).toInt(),
      isPrivate: json['isPrivate'] as bool,
      ageRestriction: AgeRestriction.fromJson(json['ageRestriction'] as String),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
    );

Map<String, dynamic> _$GameCreateDataToJson(_GameCreateData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'packageId': instance.packageId,
      'isPrivate': instance.isPrivate,
      'ageRestriction': instance.ageRestriction,
      'maxPlayers': instance.maxPlayers,
    };

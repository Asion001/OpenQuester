// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_create_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameCreateDataImpl _$$GameCreateDataImplFromJson(Map<String, dynamic> json) =>
    _$GameCreateDataImpl(
      title: json['title'] as String,
      packageId: (json['packageId'] as num).toInt(),
      isPrivate: json['isPrivate'] as bool,
      ageRestriction: GameCreateDataAgeRestriction.fromJson(
          json['ageRestriction'] as String),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
    );

Map<String, dynamic> _$$GameCreateDataImplToJson(
        _$GameCreateDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'packageId': instance.packageId,
      'isPrivate': instance.isPrivate,
      'ageRestriction': instance.ageRestriction,
      'maxPlayers': instance.maxPlayers,
    };

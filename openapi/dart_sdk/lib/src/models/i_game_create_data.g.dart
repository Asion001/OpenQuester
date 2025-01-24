// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_game_create_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IGameCreateDataImpl _$$IGameCreateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$IGameCreateDataImpl(
      title: json['title'] as String,
      packageId: (json['packageId'] as num).toInt(),
      isPrivate: json['isPrivate'] as bool,
      ageRestriction: IGameCreateDataAgeRestriction.fromJson(
          json['ageRestriction'] as String),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
    );

Map<String, dynamic> _$$IGameCreateDataImplToJson(
        _$IGameCreateDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'packageId': instance.packageId,
      'isPrivate': instance.isPrivate,
      'ageRestriction': instance.ageRestriction,
      'maxPlayers': instance.maxPlayers,
    };

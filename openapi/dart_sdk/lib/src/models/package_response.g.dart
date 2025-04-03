// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageResponseImpl _$$PackageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageResponseImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      author: ShortUserInfo.fromJson(json['author'] as Map<String, dynamic>),
      ageRestriction: AgeRestriction.fromJson(json['ageRestriction'] as String),
      language: json['language'] as String,
      logo: PackageLogoFileItem.fromJson(json['logo'] as Map<String, dynamic>),
      rounds: (json['rounds'] as List<dynamic>)
          .map((e) => PackageRound.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => PackageTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageResponseImplToJson(
        _$PackageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'author': instance.author,
      'ageRestriction': instance.ageRestriction,
      'language': instance.language,
      'logo': instance.logo,
      'rounds': instance.rounds,
      'tags': instance.tags,
    };

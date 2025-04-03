// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageItemImpl _$$PackageItemImplFromJson(Map<String, dynamic> json) =>
    _$PackageItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      author: ShortUserInfo.fromJson(json['author'] as Map<String, dynamic>),
      ageRestriction: AgeRestriction.fromJson(json['ageRestriction'] as String),
      language: json['language'] as String,
      roundsCount: (json['roundsCount'] as num).toInt(),
      questionsCount: (json['questionsCount'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      logo: json['logo'] == null
          ? null
          : PackageLogoFileItem.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageItemImplToJson(_$PackageItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'author': instance.author,
      'ageRestriction': instance.ageRestriction,
      'language': instance.language,
      'roundsCount': instance.roundsCount,
      'questionsCount': instance.questionsCount,
      'tags': instance.tags,
      'logo': instance.logo,
    };

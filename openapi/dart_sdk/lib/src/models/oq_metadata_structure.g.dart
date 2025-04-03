// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_metadata_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQMetadataStructureImpl _$$OQMetadataStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQMetadataStructureImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      ageRestriction: OQMetadataStructureAgeRestriction.fromJson(
          json['ageRestriction'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      author: (json['author'] as num).toInt(),
      language: json['language'] as String?,
      comment: json['comment'] as String?,
      logo: json['logo'] == null
          ? null
          : OQLogoFile.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OQMetadataStructureImplToJson(
        _$OQMetadataStructureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'ageRestriction': instance.ageRestriction,
      'tags': instance.tags,
      'author': instance.author,
      'language': instance.language,
      'comment': instance.comment,
      'logo': instance.logo,
    };

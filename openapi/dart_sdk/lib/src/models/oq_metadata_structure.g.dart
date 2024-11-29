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
      date: json['date'] as String,
      publisher: json['publisher'] as String,
      logo: OQLogoFile.fromJson(json['logo'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      language: json['language'] as String,
      restriction: json['restriction'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$OQMetadataStructureImplToJson(
        _$OQMetadataStructureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'publisher': instance.publisher,
      'logo': instance.logo,
      'tags': instance.tags,
      'authors': instance.authors,
      'language': instance.language,
      'restriction': instance.restriction,
      'comment': instance.comment,
    };

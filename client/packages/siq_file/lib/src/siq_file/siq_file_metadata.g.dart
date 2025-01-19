// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileMetadataImpl _$$SiqFileMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$SiqFileMetadataImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      publisher: json['publisher'] as String?,
      logo: json['logo'] == null
          ? null
          : FileObject.fromJson(json['logo'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      language: json['language'] as String?,
      restriction: json['restriction'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$SiqFileMetadataImplToJson(
        _$SiqFileMetadataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.title case final value?) 'title': value,
      if (instance.date?.toIso8601String() case final value?) 'date': value,
      if (instance.publisher case final value?) 'publisher': value,
      if (instance.logo case final value?) 'logo': value,
      'tags': instance.tags,
      'authors': instance.authors,
      if (instance.language case final value?) 'language': value,
      if (instance.restriction case final value?) 'restriction': value,
      if (instance.comment case final value?) 'comment': value,
    };

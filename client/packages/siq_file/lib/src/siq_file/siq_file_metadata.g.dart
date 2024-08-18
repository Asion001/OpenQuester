// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileMetadataImpl _$$SiqFileMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$SiqFileMetadataImpl(
      title: json['name'] as String,
      version: json['version'] as String,
      id: json['id'] as String,
      date: const _DateTimeConverter().fromJson(json['date'] as String),
      publisher: json['publisher'] as String,
      logoPath: json['logo'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SiqFileMetadataImplToJson(
        _$SiqFileMetadataImpl instance) =>
    <String, dynamic>{
      'name': instance.title,
      'version': instance.version,
      'id': instance.id,
      'date': const _DateTimeConverter().toJson(instance.date),
      'publisher': instance.publisher,
      'logo': instance.logoPath,
      'tags': instance.tags,
      'authors': instance.authors,
    };

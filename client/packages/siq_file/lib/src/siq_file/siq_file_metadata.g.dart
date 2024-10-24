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
    _$SiqFileMetadataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('logo', instance.logo);
  val['tags'] = instance.tags;
  val['authors'] = instance.authors;
  writeNotNull('language', instance.language);
  writeNotNull('restriction', instance.restriction);
  writeNotNull('comment', instance.comment);
  return val;
}

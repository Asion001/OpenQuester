// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_create_input_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageCreateInputDataImpl _$$PackageCreateInputDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageCreateInputDataImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      language: json['language'] as String?,
      ageRestriction: AgeRestriction.fromJson(json['ageRestriction'] as String),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => PackageTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      rounds: (json['rounds'] as List<dynamic>)
          .map((e) => PackageRound.fromJson(e as Map<String, dynamic>))
          .toList(),
      logo: json['logo'] == null
          ? null
          : PackageLogoFileInput.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageCreateInputDataImplToJson(
        _$PackageCreateInputDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'language': instance.language,
      'ageRestriction': instance.ageRestriction,
      'tags': instance.tags,
      'rounds': instance.rounds,
      'logo': instance.logo,
    };

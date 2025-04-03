// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageThemeImpl _$$PackageThemeImplFromJson(Map<String, dynamic> json) =>
    _$PackageThemeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => PackageQuestionUnion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageThemeImplToJson(_$PackageThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'questions': instance.questions,
    };

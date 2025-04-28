// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageTheme _$PackageThemeFromJson(Map<String, dynamic> json) =>
    _PackageTheme(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => PackageQuestionUnion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackageThemeToJson(_PackageTheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'name': instance.name,
      'description': instance.description,
      'questions': instance.questions,
    };

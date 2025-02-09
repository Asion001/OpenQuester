// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_theme_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQThemeStructureImpl _$$OQThemeStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQThemeStructureImpl(
      name: json['name'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => OQQuestionsStructure.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$OQThemeStructureImplToJson(
        _$OQThemeStructureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'questions': instance.questions,
      'comment': instance.comment,
    };

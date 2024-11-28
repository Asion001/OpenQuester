// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_theme_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQThemeStructureImpl _$$OQThemeStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQThemeStructureImpl(
      name: json['name'] as String,
      comment: json['comment'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => OQQuestionsStructure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OQThemeStructureImplToJson(
        _$OQThemeStructureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'comment': instance.comment,
      'questions': instance.questions,
    };

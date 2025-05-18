// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_choice_answers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionChoiceAnswers _$QuestionChoiceAnswersFromJson(
        Map<String, dynamic> json) =>
    _QuestionChoiceAnswers(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      text: json['text'] as String?,
      file: json['file'] == null
          ? null
          : FileItem.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuestionChoiceAnswersToJson(
        _QuestionChoiceAnswers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'text': instance.text,
      'file': instance.file,
    };

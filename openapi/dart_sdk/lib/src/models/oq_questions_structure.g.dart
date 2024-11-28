// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_questions_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQQuestionsStructureImpl _$$OQQuestionsStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQQuestionsStructureImpl(
      price: json['price'] as num,
      type: json['type'] as String,
      text: json['text'] as String,
      hostHint: json['hostHint'] as String,
      playersHint: json['playersHint'] as String,
      answerText: json['answerText'] as String,
      questionFile:
          OQQuestionFile.fromJson(json['questionFile'] as Map<String, dynamic>),
      answerFile:
          OQAnswerFile.fromJson(json['answerFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OQQuestionsStructureImplToJson(
        _$OQQuestionsStructureImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'type': instance.type,
      'text': instance.text,
      'hostHint': instance.hostHint,
      'playersHint': instance.playersHint,
      'answerText': instance.answerText,
      'questionFile': instance.questionFile,
      'answerFile': instance.answerFile,
    };

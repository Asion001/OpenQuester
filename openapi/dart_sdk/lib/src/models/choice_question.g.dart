// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChoiceQuestion _$ChoiceQuestionFromJson(Map<String, dynamic> json) =>
    _ChoiceQuestion(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      answerText: json['answerText'] as String?,
      questionComment: json['questionComment'] as String?,
      questionFiles: (json['questionFiles'] as List<dynamic>?)
          ?.map((e) => PackageQuestionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerFiles: (json['answerFiles'] as List<dynamic>?)
          ?.map((e) => PackageAnswerFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: ChoiceQuestionType.fromJson(json['type'] as String),
      subType: json['subType'],
      showDelay: (json['showDelay'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$ChoiceQuestionToJson(_ChoiceQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'answerText': instance.answerText,
      'questionComment': instance.questionComment,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'type': instance.type,
      'subType': instance.subType,
      'showDelay': instance.showDelay,
      'answers': instance.answers,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

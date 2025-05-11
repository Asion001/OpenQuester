// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleQuestion _$SimpleQuestionFromJson(Map<String, dynamic> json) =>
    _SimpleQuestion(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: SimpleQuestionType.fromJson(json['type'] as String),
      answerText: json['answerText'] as String?,
      questionFiles: (json['questionFiles'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PackageQuestionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerFiles: (json['answerFiles'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PackageAnswerFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$SimpleQuestionToJson(_SimpleQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'type': instance.type,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

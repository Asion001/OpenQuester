// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_risk_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoRiskQuestionImpl _$$NoRiskQuestionImplFromJson(Map<String, dynamic> json) =>
    _$NoRiskQuestionImpl(
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
      type: NoRiskQuestionType.fromJson(json['type'] as String),
      subType: NoRiskQuestionSubType.fromJson(json['subType'] as String),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
      priceMultiplier: (json['priceMultiplier'] as num?)?.toDouble() ?? 1.5,
    );

Map<String, dynamic> _$$NoRiskQuestionImplToJson(
        _$NoRiskQuestionImpl instance) =>
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
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
      'priceMultiplier': instance.priceMultiplier,
    };

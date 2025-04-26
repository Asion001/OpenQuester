// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StakeQuestionImpl _$$StakeQuestionImplFromJson(Map<String, dynamic> json) =>
    _$StakeQuestionImpl(
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
      type: StakeQuestionType.fromJson(json['type'] as String),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
      subType: json['subType'] == null
          ? StakeQuestionSubType.simple
          : StakeQuestionSubType.fromJson(json['subType'] as String),
    );

Map<String, dynamic> _$$StakeQuestionImplToJson(_$StakeQuestionImpl instance) =>
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
      'maxPrice': instance.maxPrice,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
      'subType': instance.subType,
    };

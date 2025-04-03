// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecretQuestionImpl _$$SecretQuestionImplFromJson(Map<String, dynamic> json) =>
    _$SecretQuestionImpl(
      id: (json['id'] as num?)?.toInt(),
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
      type: SecretQuestionType.fromJson(json['type'] as String),
      subType: SecretQuestionSubType.fromJson(json['subType'] as String),
      allowedPrices: (json['allowedPrices'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      transferType:
          PackageQuestionTransferType.fromJson(json['transferType'] as String),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$$SecretQuestionImplToJson(
        _$SecretQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'answerText': instance.answerText,
      'questionComment': instance.questionComment,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'type': instance.type,
      'subType': instance.subType,
      'allowedPrices': instance.allowedPrices,
      'transferType': instance.transferType,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

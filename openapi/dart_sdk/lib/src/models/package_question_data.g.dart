// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageQuestionData _$PackageQuestionDataFromJson(Map<String, dynamic> json) =>
    _PackageQuestionData(
      id: (json['id'] as num?)?.toInt(),
      type: QuestionType.fromJson(json['type'] as String),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      subType: QuestionSubType.fromJson(json['subType'] as String),
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
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      allowedPrices: (json['allowedPrices'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      transferType: json['transferType'] == null
          ? null
          : QuestionTransferType.fromJson(json['transferType'] as String),
      priceMultiplier: json['priceMultiplier'] as String?,
      showDelay: (json['showDelay'] as num?)?.toInt(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : QuestionChoiceAnswers.fromJson(e as Map<String, dynamic>))
          .toList(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$PackageQuestionDataToJson(
        _PackageQuestionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'subType': instance.subType,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'maxPrice': instance.maxPrice,
      'allowedPrices': instance.allowedPrices,
      'transferType': instance.transferType,
      'priceMultiplier': instance.priceMultiplier,
      'showDelay': instance.showDelay,
      'answers': instance.answers,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

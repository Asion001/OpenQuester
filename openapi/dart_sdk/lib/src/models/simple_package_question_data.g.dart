// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_package_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimplePackageQuestionData _$SimplePackageQuestionDataFromJson(
        Map<String, dynamic> json) =>
    _SimplePackageQuestionData(
      id: (json['id'] as num?)?.toInt(),
      type: QuestionType.fromJson(json['type'] as String),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      questionComment: json['questionComment'] as String?,
      subType: QuestionSubType.fromJson(json['subType'] as String),
      questionFiles: (json['questionFiles'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PackageQuestionFile.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$SimplePackageQuestionDataToJson(
        _SimplePackageQuestionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'questionComment': instance.questionComment,
      'subType': instance.subType,
      'questionFiles': instance.questionFiles,
      'maxPrice': instance.maxPrice,
      'allowedPrices': instance.allowedPrices,
      'transferType': instance.transferType,
      'priceMultiplier': instance.priceMultiplier,
      'showDelay': instance.showDelay,
      'answers': instance.answers,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

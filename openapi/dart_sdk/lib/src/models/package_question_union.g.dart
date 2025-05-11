// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageQuestionUnionSimple _$PackageQuestionUnionSimpleFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionSimple(
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

Map<String, dynamic> _$PackageQuestionUnionSimpleToJson(
        PackageQuestionUnionSimple instance) =>
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

PackageQuestionUnionStake _$PackageQuestionUnionStakeFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionStake(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: StakeQuestionType.fromJson(json['type'] as String),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
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
      subType: json['subType'] == null
          ? StakeQuestionSubType.simple
          : StakeQuestionSubType.fromJson(json['subType'] as String),
    );

Map<String, dynamic> _$PackageQuestionUnionStakeToJson(
        PackageQuestionUnionStake instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'type': instance.type,
      'maxPrice': instance.maxPrice,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
      'subType': instance.subType,
    };

PackageQuestionUnionSecret _$PackageQuestionUnionSecretFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionSecret(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: SecretQuestionType.fromJson(json['type'] as String),
      subType: SecretQuestionSubType.fromJson(json['subType'] as String),
      allowedPrices: (json['allowedPrices'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      transferType:
          QuestionTransferType.fromJson(json['transferType'] as String),
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

Map<String, dynamic> _$PackageQuestionUnionSecretToJson(
        PackageQuestionUnionSecret instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'type': instance.type,
      'subType': instance.subType,
      'allowedPrices': instance.allowedPrices,
      'transferType': instance.transferType,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

PackageQuestionUnionNoRisk _$PackageQuestionUnionNoRiskFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionNoRisk(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: NoRiskQuestionType.fromJson(json['type'] as String),
      subType: NoRiskQuestionSubType.fromJson(json['subType'] as String),
      priceMultiplier: json['priceMultiplier'] as String,
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

Map<String, dynamic> _$PackageQuestionUnionNoRiskToJson(
        PackageQuestionUnionNoRisk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'type': instance.type,
      'subType': instance.subType,
      'priceMultiplier': instance.priceMultiplier,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

PackageQuestionUnionChoice _$PackageQuestionUnionChoiceFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionChoice(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: ChoiceQuestionType.fromJson(json['type'] as String),
      subType: json['subType'],
      showDelay: (json['showDelay'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => QuestionChoiceAnswers.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$PackageQuestionUnionChoiceToJson(
        PackageQuestionUnionChoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'type': instance.type,
      'subType': instance.subType,
      'showDelay': instance.showDelay,
      'answers': instance.answers,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

PackageQuestionUnionHidden _$PackageQuestionUnionHiddenFromJson(
        Map<String, dynamic> json) =>
    PackageQuestionUnionHidden(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      price: (json['price'] as num?)?.toInt(),
      text: json['text'] as String?,
      answerHint: json['answerHint'] as String?,
      questionComment: json['questionComment'] as String?,
      type: HiddenQuestionType.fromJson(json['type'] as String),
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

Map<String, dynamic> _$PackageQuestionUnionHiddenToJson(
        PackageQuestionUnionHidden instance) =>
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

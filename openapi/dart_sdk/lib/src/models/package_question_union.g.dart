// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageQuestionUnionSimpleImpl _$$PackageQuestionUnionSimpleImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionSimpleImpl(
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
      type: SimpleQuestionType.fromJson(json['type'] as String),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$$PackageQuestionUnionSimpleImplToJson(
        _$PackageQuestionUnionSimpleImpl instance) =>
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
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

_$PackageQuestionUnionStakeImpl _$$PackageQuestionUnionStakeImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionStakeImpl(
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
      type: StakeQuestionType.fromJson(json['type'] as String),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
      subType: json['subType'] == null
          ? StakeQuestionSubType.simple
          : StakeQuestionSubType.fromJson(json['subType'] as String),
    );

Map<String, dynamic> _$$PackageQuestionUnionStakeImplToJson(
        _$PackageQuestionUnionStakeImpl instance) =>
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
      'maxPrice': instance.maxPrice,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
      'subType': instance.subType,
    };

_$PackageQuestionUnionSecretImpl _$$PackageQuestionUnionSecretImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionSecretImpl(
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

Map<String, dynamic> _$$PackageQuestionUnionSecretImplToJson(
        _$PackageQuestionUnionSecretImpl instance) =>
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

_$PackageQuestionUnionNoRiskImpl _$$PackageQuestionUnionNoRiskImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionNoRiskImpl(
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
      type: NoRiskQuestionType.fromJson(json['type'] as String),
      subType: NoRiskQuestionSubType.fromJson(json['subType'] as String),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
      priceMultiplier: (json['priceMultiplier'] as num?)?.toDouble() ?? 1.5,
    );

Map<String, dynamic> _$$PackageQuestionUnionNoRiskImplToJson(
        _$PackageQuestionUnionNoRiskImpl instance) =>
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
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
      'priceMultiplier': instance.priceMultiplier,
    };

_$PackageQuestionUnionChoiceImpl _$$PackageQuestionUnionChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionChoiceImpl(
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
      type: ChoiceQuestionType.fromJson(json['type'] as String),
      subType: json['subType'],
      showDelay: (json['showDelay'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$$PackageQuestionUnionChoiceImplToJson(
        _$PackageQuestionUnionChoiceImpl instance) =>
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
      'showDelay': instance.showDelay,
      'answers': instance.answers,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

_$PackageQuestionUnionHiddenImpl _$$PackageQuestionUnionHiddenImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionUnionHiddenImpl(
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
      type: HiddenQuestionType.fromJson(json['type'] as String),
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$$PackageQuestionUnionHiddenImplToJson(
        _$PackageQuestionUnionHiddenImpl instance) =>
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
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

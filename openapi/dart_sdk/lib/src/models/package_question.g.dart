// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageQuestionImpl _$$PackageQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionImpl(
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
      isHidden: json['isHidden'] as bool? ?? false,
      answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
    );

Map<String, dynamic> _$$PackageQuestionImplToJson(
        _$PackageQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'answerText': instance.answerText,
      'questionComment': instance.questionComment,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

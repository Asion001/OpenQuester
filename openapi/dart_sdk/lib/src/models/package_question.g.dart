// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageQuestion _$PackageQuestionFromJson(
  Map<String, dynamic> json,
) => _PackageQuestion(
  id: (json['id'] as num?)?.toInt(),
  order: (json['order'] as num).toInt(),
  price: (json['price'] as num?)?.toInt(),
  text: json['text'] as String?,
  answerHint: json['answerHint'] as String?,
  questionComment: json['questionComment'] as String?,
  answerText: json['answerText'] as String?,
  questionFiles: (json['questionFiles'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PackageQuestionFile.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  answerFiles: (json['answerFiles'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : PackageQuestionFile.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  isHidden: json['isHidden'] as bool? ?? false,
  answerDelay: (json['answerDelay'] as num?)?.toInt() ?? 4000,
);

Map<String, dynamic> _$PackageQuestionToJson(_PackageQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'price': instance.price,
      'text': instance.text,
      'answerHint': instance.answerHint,
      'questionComment': instance.questionComment,
      'answerText': instance.answerText,
      'questionFiles': instance.questionFiles,
      'answerFiles': instance.answerFiles,
      'isHidden': instance.isHidden,
      'answerDelay': instance.answerDelay,
    };

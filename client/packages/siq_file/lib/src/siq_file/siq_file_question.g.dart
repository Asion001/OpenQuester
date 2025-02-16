// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileQuestionImpl _$$SiqFileQuestionImplFromJson(
  Map<String, dynamic> json,
) => _$SiqFileQuestionImpl(
  price: (json['price'] as num).toInt(),
  type:
      $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
      QuestionType.regular,
  text: json['text'] as String?,
  hostHint: json['hostHint'] as String?,
  playersHint: json['playersHint'] as String?,
  questionFile:
      json['questionFile'] == null
          ? null
          : SiqFileFileObject.fromJson(
            json['questionFile'] as Map<String, dynamic>,
          ),
  answerText: json['answerText'] as String?,
  answerFile:
      json['answerFile'] == null
          ? null
          : SiqFileFileObject.fromJson(
            json['answerFile'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$SiqFileQuestionImplToJson(
  _$SiqFileQuestionImpl instance,
) => <String, dynamic>{
  'price': instance.price,
  'type': _$QuestionTypeEnumMap[instance.type]!,
  if (instance.text case final value?) 'text': value,
  if (instance.hostHint case final value?) 'hostHint': value,
  if (instance.playersHint case final value?) 'playersHint': value,
  if (instance.questionFile case final value?) 'questionFile': value,
  if (instance.answerText case final value?) 'answerText': value,
  if (instance.answerFile case final value?) 'answerFile': value,
};

const _$QuestionTypeEnumMap = {
  QuestionType.regular: 'regular',
  QuestionType.stake: 'stake',
  QuestionType.noRisk: 'noRisk',
};

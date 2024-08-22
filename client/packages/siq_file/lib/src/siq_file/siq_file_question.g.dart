// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileQuestionImpl _$$SiqFileQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$SiqFileQuestionImpl(
      price: (json['price'] as num).toInt(),
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.regular,
      text: json['text'] as String?,
      hostHint: json['hostHint'] as String?,
      playersHint: json['playersHint'] as String?,
      questionFile: json['questionFile'] == null
          ? null
          : SiqFileFileObject.fromJson(
              json['questionFile'] as Map<String, dynamic>),
      answerText: json['answerText'] as String?,
      answerFile: json['answerFile'] == null
          ? null
          : SiqFileFileObject.fromJson(
              json['answerFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SiqFileQuestionImplToJson(
    _$SiqFileQuestionImpl instance) {
  final val = <String, dynamic>{
    'price': instance.price,
    'type': _$QuestionTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('hostHint', instance.hostHint);
  writeNotNull('playersHint', instance.playersHint);
  writeNotNull('questionFile', instance.questionFile);
  writeNotNull('answerText', instance.answerText);
  writeNotNull('answerFile', instance.answerFile);
  return val;
}

const _$QuestionTypeEnumMap = {
  QuestionType.regular: 'regular',
  QuestionType.stake: 'stake',
  QuestionType.noRisk: 'noRisk',
};

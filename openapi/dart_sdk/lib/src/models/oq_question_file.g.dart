// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_question_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQQuestionFileImpl _$$OQQuestionFileImplFromJson(Map<String, dynamic> json) =>
    _$OQQuestionFileImpl(
      file:
          OQFileContentStructure.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: json['displayTime'] as num,
      answerDelay: json['answerDelay'] as num,
    );

Map<String, dynamic> _$$OQQuestionFileImplToJson(
        _$OQQuestionFileImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'displayTime': instance.displayTime,
      'answerDelay': instance.answerDelay,
    };

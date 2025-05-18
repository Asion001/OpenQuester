// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameQuestionData _$GameQuestionDataFromJson(Map<String, dynamic> json) =>
    _GameQuestionData(
      text: json['text'] as String?,
      file: json['file'] == null
          ? null
          : PackageQuestionFile.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameQuestionDataToJson(_GameQuestionData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'file': instance.file,
    };

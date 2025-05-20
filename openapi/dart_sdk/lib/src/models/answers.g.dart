// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Answers _$AnswersFromJson(Map<String, dynamic> json) => _Answers(
  id: (json['id'] as num?)?.toInt(),
  order: (json['order'] as num).toInt(),
  text: json['text'] as String?,
  file: json['file'] == null
      ? null
      : FileItem.fromJson(json['file'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AnswersToJson(_Answers instance) => <String, dynamic>{
  'id': instance.id,
  'order': instance.order,
  'text': instance.text,
  'file': instance.file,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswersImpl _$$AnswersImplFromJson(Map<String, dynamic> json) =>
    _$AnswersImpl(
      id: (json['id'] as num?)?.toInt(),
      text: json['text'] as String?,
      file: json['file'] == null
          ? null
          : FileItem.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswersImplToJson(_$AnswersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'file': instance.file,
    };

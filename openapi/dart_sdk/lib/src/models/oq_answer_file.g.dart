// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_answer_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQAnswerFileImpl _$$OQAnswerFileImplFromJson(Map<String, dynamic> json) =>
    _$OQAnswerFileImpl(
      file:
          OQFileContentStructure.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: json['displayTime'] as num,
    );

Map<String, dynamic> _$$OQAnswerFileImplToJson(_$OQAnswerFileImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'displayTime': instance.displayTime,
    };

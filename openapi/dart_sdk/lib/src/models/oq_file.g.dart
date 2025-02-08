// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQFileImpl _$$OQFileImplFromJson(Map<String, dynamic> json) => _$OQFileImpl(
      file:
          OQFileContentStructure.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: (json['displayTime'] as num?)?.toInt(),
      answerDelay: (json['answerDelay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OQFileImplToJson(_$OQFileImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'displayTime': instance.displayTime,
      'answerDelay': instance.answerDelay,
    };

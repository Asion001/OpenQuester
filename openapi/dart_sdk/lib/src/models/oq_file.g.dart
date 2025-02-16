// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQFileImpl _$$OQFileImplFromJson(Map<String, dynamic> json) => _$OQFileImpl(
      file:
          OQFileContentStructure.fromJson(json['file'] as Map<String, dynamic>),
      answerDelay: (json['answerDelay'] as num).toInt(),
      displayTime: (json['displayTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OQFileImplToJson(_$OQFileImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'answerDelay': instance.answerDelay,
      'displayTime': instance.displayTime,
    };

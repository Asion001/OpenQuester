// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_answer_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageAnswerFile _$PackageAnswerFileFromJson(Map<String, dynamic> json) =>
    _PackageAnswerFile(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      file: FileItem.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: (json['displayTime'] as num?)?.toInt() ?? 5000,
    );

Map<String, dynamic> _$PackageAnswerFileToJson(_PackageAnswerFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'file': instance.file,
      'displayTime': instance.displayTime,
    };

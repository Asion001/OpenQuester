// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_question_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageQuestionFileImpl _$$PackageQuestionFileImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageQuestionFileImpl(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      file: FileItem.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: (json['displayTime'] as num?)?.toInt() ?? 5000,
    );

Map<String, dynamic> _$$PackageQuestionFileImplToJson(
        _$PackageQuestionFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'file': instance.file,
      'displayTime': instance.displayTime,
    };

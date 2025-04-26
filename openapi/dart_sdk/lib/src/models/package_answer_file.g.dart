// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_answer_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageAnswerFileImpl _$$PackageAnswerFileImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageAnswerFileImpl(
      id: (json['id'] as num?)?.toInt(),
      order: (json['order'] as num).toInt(),
      file: FileItem.fromJson(json['file'] as Map<String, dynamic>),
      displayTime: (json['displayTime'] as num?)?.toInt() ?? 5000,
    );

Map<String, dynamic> _$$PackageAnswerFileImplToJson(
        _$PackageAnswerFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'file': instance.file,
      'displayTime': instance.displayTime,
    };

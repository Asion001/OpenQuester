// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_file_content_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQFileContentStructureImpl _$$OQFileContentStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQFileContentStructureImpl(
      md5: json['md5'] as String,
      type: OQFileContentStructureType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$OQFileContentStructureImplToJson(
        _$OQFileContentStructureImpl instance) =>
    <String, dynamic>{
      'md5': instance.md5,
      'type': instance.type,
    };

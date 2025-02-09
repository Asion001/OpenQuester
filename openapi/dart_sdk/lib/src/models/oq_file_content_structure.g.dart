// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_file_content_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQFileContentStructureImpl _$$OQFileContentStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQFileContentStructureImpl(
      crc32: json['crc32'] as String,
      type: OQFileContentStructureType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$OQFileContentStructureImplToJson(
        _$OQFileContentStructureImpl instance) =>
    <String, dynamic>{
      'crc32': instance.crc32,
      'type': instance.type,
    };

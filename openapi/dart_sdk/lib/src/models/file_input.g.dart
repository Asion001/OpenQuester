// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileInput _$FileInputFromJson(Map<String, dynamic> json) => _FileInput(
      md5: json['md5'] as String,
      type: PackageFileType.fromJson(json['type'] as String?),
    );

Map<String, dynamic> _$FileInputToJson(_FileInput instance) =>
    <String, dynamic>{
      'md5': instance.md5,
      'type': instance.type,
    };

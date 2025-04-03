// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileInputImpl _$$FileInputImplFromJson(Map<String, dynamic> json) =>
    _$FileInputImpl(
      md5: json['md5'] as String,
      type: PackageFileType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$$FileInputImplToJson(_$FileInputImpl instance) =>
    <String, dynamic>{
      'md5': instance.md5,
      'type': instance.type,
    };

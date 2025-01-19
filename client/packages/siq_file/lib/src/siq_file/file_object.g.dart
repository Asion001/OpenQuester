// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileObjectImpl _$$FileObjectImplFromJson(Map<String, dynamic> json) =>
    _$FileObjectImpl(
      path: json['path'] as String,
      type: $enumDecode(_$FileTypeEnumMap, json['type']),
      sha256: json['sha256'] as String?,
    );

Map<String, dynamic> _$$FileObjectImplToJson(_$FileObjectImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'type': _$FileTypeEnumMap[instance.type]!,
      if (instance.sha256 case final value?) 'sha256': value,
    };

const _$FileTypeEnumMap = {
  FileType.image: 'image',
  FileType.video: 'video',
  FileType.audio: 'audio',
};

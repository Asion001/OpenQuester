// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileItemImpl _$$FileItemImplFromJson(Map<String, dynamic> json) =>
    _$FileItemImpl(
      id: (json['id'] as num?)?.toInt(),
      md5: json['md5'] as String,
      type: PackageFileType.fromJson(json['type'] as String?),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$FileItemImplToJson(_$FileItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'md5': instance.md5,
      'type': instance.type,
      'link': instance.link,
    };

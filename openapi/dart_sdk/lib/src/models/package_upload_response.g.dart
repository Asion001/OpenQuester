// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageUploadResponseImpl _$$PackageUploadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageUploadResponseImpl(
      id: (json['id'] as num).toInt(),
      uploadLinks: Map<String, String>.from(json['uploadLinks'] as Map),
    );

Map<String, dynamic> _$$PackageUploadResponseImplToJson(
        _$PackageUploadResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uploadLinks': instance.uploadLinks,
    };

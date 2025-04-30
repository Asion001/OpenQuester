// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageUploadResponse _$PackageUploadResponseFromJson(
        Map<String, dynamic> json) =>
    _PackageUploadResponse(
      id: (json['id'] as num).toInt(),
      uploadLinks: Map<String, String>.from(json['uploadLinks'] as Map),
    );

Map<String, dynamic> _$PackageUploadResponseToJson(
        _PackageUploadResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uploadLinks': instance.uploadLinks,
    };

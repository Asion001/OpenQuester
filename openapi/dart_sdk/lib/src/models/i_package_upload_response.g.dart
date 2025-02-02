// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_package_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IPackageUploadResponseImpl _$$IPackageUploadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$IPackageUploadResponseImpl(
      id: (json['id'] as num).toInt(),
      uploadLinks: Map<String, String>.from(json['uploadLinks'] as Map),
    );

Map<String, dynamic> _$$IPackageUploadResponseImplToJson(
        _$IPackageUploadResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uploadLinks': instance.uploadLinks,
    };

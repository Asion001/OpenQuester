// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_package_upload_response.freezed.dart';
part 'post_v1_package_upload_response.g.dart';

@Freezed()
class PostV1PackageUploadResponse with _$PostV1PackageUploadResponse {
  const factory PostV1PackageUploadResponse({
    required String filename,
  }) = _PostV1PackageUploadResponse;
  
  factory PostV1PackageUploadResponse.fromJson(Map<String, Object?> json) => _$PostV1PackageUploadResponseFromJson(json);
}

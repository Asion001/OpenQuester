// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_upload_response.freezed.dart';
part 'package_upload_response.g.dart';

@Freezed()
class PackageUploadResponse with _$PackageUploadResponse {
  const factory PackageUploadResponse({
    required int id,
    required Map<String, String> uploadLinks,
  }) = _PackageUploadResponse;
  
  factory PackageUploadResponse.fromJson(Map<String, Object?> json) => _$PackageUploadResponseFromJson(json);
}

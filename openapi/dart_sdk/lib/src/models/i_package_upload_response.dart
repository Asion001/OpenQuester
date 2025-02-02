// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_package_upload_response.freezed.dart';
part 'i_package_upload_response.g.dart';

@Freezed()
class IPackageUploadResponse with _$IPackageUploadResponse {
  const factory IPackageUploadResponse({
    required int id,
    required Map<String, String> uploadLinks,
  }) = _IPackageUploadResponse;
  
  factory IPackageUploadResponse.fromJson(Map<String, Object?> json) => _$IPackageUploadResponseFromJson(json);
}

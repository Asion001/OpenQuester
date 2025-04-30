// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_upload_link_response.freezed.dart';
part 'file_upload_link_response.g.dart';

@Freezed()
abstract class FileUploadLinkResponse with _$FileUploadLinkResponse {
  const factory FileUploadLinkResponse({
    required String url,
  }) = _FileUploadLinkResponse;
  
  factory FileUploadLinkResponse.fromJson(Map<String, Object?> json) => _$FileUploadLinkResponseFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_files_response.freezed.dart';
part 'get_v1_files_response.g.dart';

@Freezed()
class GetV1FilesResponse with _$GetV1FilesResponse {
  const factory GetV1FilesResponse({
    required String url,
  }) = _GetV1FilesResponse;
  
  factory GetV1FilesResponse.fromJson(Map<String, Object?> json) => _$GetV1FilesResponseFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_files_response.freezed.dart';
part 'post_v1_files_response.g.dart';

@Freezed()
class PostV1FilesResponse with _$PostV1FilesResponse {
  const factory PostV1FilesResponse({
    required String url,
  }) = _PostV1FilesResponse;
  
  factory PostV1FilesResponse.fromJson(Map<String, Object?> json) => _$PostV1FilesResponseFromJson(json);
}

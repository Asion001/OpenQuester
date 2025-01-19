// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_file_response.freezed.dart';
part 'post_v1_file_response.g.dart';

@Freezed()
class PostV1FileResponse with _$PostV1FileResponse {
  const factory PostV1FileResponse({
    required String url,
  }) = _PostV1FileResponse;
  
  factory PostV1FileResponse.fromJson(Map<String, Object?> json) => _$PostV1FileResponseFromJson(json);
}

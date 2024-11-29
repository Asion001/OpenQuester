// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_v1_file_response.freezed.dart';
part 'delete_v1_file_response.g.dart';

@Freezed()
class DeleteV1FileResponse with _$DeleteV1FileResponse {
  const factory DeleteV1FileResponse({
    required String message,
  }) = _DeleteV1FileResponse;
  
  factory DeleteV1FileResponse.fromJson(Map<String, Object?> json) => _$DeleteV1FileResponseFromJson(json);
}

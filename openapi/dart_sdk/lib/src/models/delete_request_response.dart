// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_request_response.freezed.dart';
part 'delete_request_response.g.dart';

@Freezed()
class DeleteRequestResponse with _$DeleteRequestResponse {
  const factory DeleteRequestResponse({
    required String message,
  }) = _DeleteRequestResponse;
  
  factory DeleteRequestResponse.fromJson(Map<String, Object?> json) => _$DeleteRequestResponseFromJson(json);
}

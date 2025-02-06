// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invalid_session_response.freezed.dart';
part 'invalid_session_response.g.dart';

@Freezed()
class InvalidSessionResponse with _$InvalidSessionResponse {
  const factory InvalidSessionResponse({
    required String error,
  }) = _InvalidSessionResponse;
  
  factory InvalidSessionResponse.fromJson(Map<String, Object?> json) => _$InvalidSessionResponseFromJson(json);
}

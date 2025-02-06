// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@Freezed()
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    required String message,
  }) = _LogoutResponse;
  
  factory LogoutResponse.fromJson(Map<String, Object?> json) => _$LogoutResponseFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_denied_response.freezed.dart';
part 'permission_denied_response.g.dart';

@Freezed()
class PermissionDeniedResponse with _$PermissionDeniedResponse {
  const factory PermissionDeniedResponse({
    required String error,
  }) = _PermissionDeniedResponse;
  
  factory PermissionDeniedResponse.fromJson(Map<String, Object?> json) => _$PermissionDeniedResponseFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_error_response.freezed.dart';
part 'general_error_response.g.dart';

@Freezed()
class GeneralErrorResponse with _$GeneralErrorResponse {
  const factory GeneralErrorResponse({
    required String error,
  }) = _GeneralErrorResponse;
  
  factory GeneralErrorResponse.fromJson(Map<String, Object?> json) => _$GeneralErrorResponseFromJson(json);
}

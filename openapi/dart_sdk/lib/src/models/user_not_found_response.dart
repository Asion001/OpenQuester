// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_not_found_response.freezed.dart';
part 'user_not_found_response.g.dart';

@Freezed()
abstract class UserNotFoundResponse with _$UserNotFoundResponse {
  const factory UserNotFoundResponse({
    required String error,
  }) = _UserNotFoundResponse;
  
  factory UserNotFoundResponse.fromJson(Map<String, Object?> json) => _$UserNotFoundResponseFromJson(json);
}

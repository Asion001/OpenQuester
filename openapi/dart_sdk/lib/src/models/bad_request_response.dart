// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bad_request_response.freezed.dart';
part 'bad_request_response.g.dart';

@Freezed()
abstract class BadRequestResponse with _$BadRequestResponse {
  const factory BadRequestResponse({
    required String error,
  }) = _BadRequestResponse;
  
  factory BadRequestResponse.fromJson(Map<String, Object?> json) => _$BadRequestResponseFromJson(json);
}

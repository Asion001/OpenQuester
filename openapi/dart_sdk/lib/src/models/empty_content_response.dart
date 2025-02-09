// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_content_response.freezed.dart';
part 'empty_content_response.g.dart';

@Freezed()
class EmptyContentResponse with _$EmptyContentResponse {
  const factory EmptyContentResponse({
    required String error,
  }) = _EmptyContentResponse;
  
  factory EmptyContentResponse.fromJson(Map<String, Object?> json) => _$EmptyContentResponseFromJson(json);
}

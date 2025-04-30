// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_not_found_response.freezed.dart';
part 'game_not_found_response.g.dart';

@Freezed()
abstract class GameNotFoundResponse with _$GameNotFoundResponse {
  const factory GameNotFoundResponse({
    required String error,
  }) = _GameNotFoundResponse;
  
  factory GameNotFoundResponse.fromJson(Map<String, Object?> json) => _$GameNotFoundResponseFromJson(json);
}

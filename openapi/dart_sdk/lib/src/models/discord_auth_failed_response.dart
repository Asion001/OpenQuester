// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'discord_auth_failed_response.freezed.dart';
part 'discord_auth_failed_response.g.dart';

@Freezed()
class DiscordAuthFailedResponse with _$DiscordAuthFailedResponse {
  const factory DiscordAuthFailedResponse({
    required String error,
  }) = _DiscordAuthFailedResponse;
  
  factory DiscordAuthFailedResponse.fromJson(Map<String, Object?> json) => _$DiscordAuthFailedResponseFromJson(json);
}

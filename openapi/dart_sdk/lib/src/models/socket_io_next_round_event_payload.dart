// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state.dart';

part 'socket_io_next_round_event_payload.freezed.dart';
part 'socket_io_next_round_event_payload.g.dart';

@Freezed()
abstract class SocketIONextRoundEventPayload with _$SocketIONextRoundEventPayload {
  const factory SocketIONextRoundEventPayload({
    required GameState gameState,
  }) = _SocketIONextRoundEventPayload;
  
  factory SocketIONextRoundEventPayload.fromJson(Map<String, Object?> json) => _$SocketIONextRoundEventPayloadFromJson(json);
}

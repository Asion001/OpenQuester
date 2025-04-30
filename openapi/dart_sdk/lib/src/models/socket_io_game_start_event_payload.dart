// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'socket_io_game_state_round_data.dart';

part 'socket_io_game_start_event_payload.freezed.dart';
part 'socket_io_game_start_event_payload.g.dart';

/// This data sent to all players in room when game is started
@Freezed()
abstract class SocketIOGameStartEventPayload with _$SocketIOGameStartEventPayload {
  const factory SocketIOGameStartEventPayload({
    required SocketIOGameStateRoundData currentRound,
  }) = _SocketIOGameStartEventPayload;
  
  factory SocketIOGameStartEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOGameStartEventPayloadFromJson(json);
}

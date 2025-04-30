// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state.dart';
import 'player_data.dart';
import 'socket_io_chat_message_event_payload.dart';
import 'socket_io_game_join_meta.dart';

part 'socket_io_game_join_event_payload.freezed.dart';
part 'socket_io_game_join_event_payload.g.dart';

/// This data sent to player when he joins game
@Freezed()
abstract class SocketIOGameJoinEventPayload with _$SocketIOGameJoinEventPayload {
  const factory SocketIOGameJoinEventPayload({
    required SocketIOGameJoinMeta meta,

    /// Players in the game
    required List<PlayerData> players,

    /// Current game state
    required GameState gameState,

    /// Last 100 chat messages, sorted 'DESC'
    required List<SocketIOChatMessageEventPayload> chatMessages,
  }) = _SocketIOGameJoinEventPayload;
  
  factory SocketIOGameJoinEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOGameJoinEventPayloadFromJson(json);
}

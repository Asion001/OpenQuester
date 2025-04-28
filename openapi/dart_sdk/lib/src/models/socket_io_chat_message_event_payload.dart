// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_chat_message_event_payload.freezed.dart';
part 'socket_io_chat_message_event_payload.g.dart';

/// Emitted to everyone in game, including sender. Data that sent to all players in room on chat message
@Freezed()
abstract class SocketIOChatMessageEventPayload with _$SocketIOChatMessageEventPayload {
  const factory SocketIOChatMessageEventPayload({
    required String message,

    /// ID of the user who sent the message
    required int user,
    required DateTime timestamp,
  }) = _SocketIOChatMessageEventPayload;
  
  factory SocketIOChatMessageEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOChatMessageEventPayloadFromJson(json);
}

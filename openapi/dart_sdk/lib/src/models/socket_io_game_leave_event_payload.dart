// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_game_leave_event_payload.freezed.dart';
part 'socket_io_game_leave_event_payload.g.dart';

@Freezed()
class SocketIOGameLeaveEventPayload with _$SocketIOGameLeaveEventPayload {
  const factory SocketIOGameLeaveEventPayload({
    /// Emitted to everyone in game, including sender. ID of the user who left the game
    required int user,
  }) = _SocketIOGameLeaveEventPayload;
  
  factory SocketIOGameLeaveEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOGameLeaveEventPayloadFromJson(json);
}

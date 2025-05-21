// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_pause_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGamePauseEventPayload _$SocketIOGamePauseEventPayloadFromJson(
  Map<String, dynamic> json,
) => _SocketIOGamePauseEventPayload(
  timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SocketIOGamePauseEventPayloadToJson(
  _SocketIOGamePauseEventPayload instance,
) => <String, dynamic>{'timer': instance.timer};

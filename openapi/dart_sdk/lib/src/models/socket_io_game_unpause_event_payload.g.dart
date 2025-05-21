// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_unpause_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGameUnpauseEventPayload _$SocketIOGameUnpauseEventPayloadFromJson(
  Map<String, dynamic> json,
) => _SocketIOGameUnpauseEventPayload(
  timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SocketIOGameUnpauseEventPayloadToJson(
  _SocketIOGameUnpauseEventPayload instance,
) => <String, dynamic>{'timer': instance.timer};

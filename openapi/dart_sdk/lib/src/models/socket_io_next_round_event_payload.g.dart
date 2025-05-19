// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_next_round_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIONextRoundEventPayload _$SocketIONextRoundEventPayloadFromJson(
        Map<String, dynamic> json) =>
    _SocketIONextRoundEventPayload(
      gameState: GameState.fromJson(json['gameState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocketIONextRoundEventPayloadToJson(
        _SocketIONextRoundEventPayload instance) =>
    <String, dynamic>{
      'gameState': instance.gameState,
    };

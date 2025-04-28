// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_start_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGameStartEventPayload _$SocketIOGameStartEventPayloadFromJson(
        Map<String, dynamic> json) =>
    _SocketIOGameStartEventPayload(
      currentRound: SocketIOGameStateRoundData.fromJson(
          json['currentRound'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocketIOGameStartEventPayloadToJson(
        _SocketIOGameStartEventPayload instance) =>
    <String, dynamic>{
      'currentRound': instance.currentRound,
    };

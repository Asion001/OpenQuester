// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_start_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOGameStartEventPayloadImpl
    _$$SocketIOGameStartEventPayloadImplFromJson(Map<String, dynamic> json) =>
        _$SocketIOGameStartEventPayloadImpl(
          currentRound: SocketIOGameStateRoundData.fromJson(
              json['currentRound'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SocketIOGameStartEventPayloadImplToJson(
        _$SocketIOGameStartEventPayloadImpl instance) =>
    <String, dynamic>{
      'currentRound': instance.currentRound,
    };

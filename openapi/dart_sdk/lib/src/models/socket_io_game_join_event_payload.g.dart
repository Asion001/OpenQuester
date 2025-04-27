// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_join_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOGameJoinEventPayloadImpl _$$SocketIOGameJoinEventPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketIOGameJoinEventPayloadImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameState: GameState.fromJson(json['gameState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocketIOGameJoinEventPayloadImplToJson(
        _$SocketIOGameJoinEventPayloadImpl instance) =>
    <String, dynamic>{
      'players': instance.players,
      'gameState': instance.gameState,
    };

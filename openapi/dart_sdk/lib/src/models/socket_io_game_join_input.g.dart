// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_join_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGameJoinInput _$SocketIOGameJoinInputFromJson(
        Map<String, dynamic> json) =>
    _SocketIOGameJoinInput(
      gameId: json['gameId'] as String,
      role: SocketIOGameJoinInputRole.fromJson(json['role'] as String),
    );

Map<String, dynamic> _$SocketIOGameJoinInputToJson(
        _SocketIOGameJoinInput instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'role': instance.role,
    };

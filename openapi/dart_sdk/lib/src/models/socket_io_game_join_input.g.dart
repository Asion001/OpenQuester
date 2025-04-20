// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_join_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOGameJoinInputImpl _$$SocketIOGameJoinInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketIOGameJoinInputImpl(
      gameId: json['gameId'] as String,
      role: SocketIOGameJoinInputRole.fromJson(json['role'] as String),
    );

Map<String, dynamic> _$$SocketIOGameJoinInputImplToJson(
        _$SocketIOGameJoinInputImpl instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'role': instance.role,
    };

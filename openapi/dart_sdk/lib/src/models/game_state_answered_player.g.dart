// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_answered_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStateAnsweredPlayer _$GameStateAnsweredPlayerFromJson(
        Map<String, dynamic> json) =>
    _GameStateAnsweredPlayer(
      player: (json['player'] as num).toInt(),
      result: (json['result'] as num).toInt(),
    );

Map<String, dynamic> _$GameStateAnsweredPlayerToJson(
        _GameStateAnsweredPlayer instance) =>
    <String, dynamic>{
      'player': instance.player,
      'result': instance.result,
    };

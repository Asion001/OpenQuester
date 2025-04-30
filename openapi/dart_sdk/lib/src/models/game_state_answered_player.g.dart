// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_answered_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateAnsweredPlayerImpl _$$GameStateAnsweredPlayerImplFromJson(
        Map<String, dynamic> json) =>
    _$GameStateAnsweredPlayerImpl(
      player: (json['player'] as num).toInt(),
      result: (json['result'] as num).toInt(),
    );

Map<String, dynamic> _$$GameStateAnsweredPlayerImplToJson(
        _$GameStateAnsweredPlayerImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'result': instance.result,
    };

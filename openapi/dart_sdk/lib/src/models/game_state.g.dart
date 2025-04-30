// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameState _$GameStateFromJson(Map<String, dynamic> json) => _GameState(
      questionState: json['questionState'] == null
          ? null
          : GameStateQuestionState.fromJson(json['questionState'] as String?),
      isPaused: json['isPaused'] as bool,
      currentQuestion: (json['currentQuestion'] as num?)?.toInt(),
      answeringPlayer: (json['answeringPlayer'] as num?)?.toInt(),
      answeredPlayers: (json['answeredPlayers'] as List<dynamic>?)
          ?.map((e) =>
              GameStateAnsweredPlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentRound: json['currentRound'] == null
          ? null
          : SocketIOGameStateRoundData.fromJson(
              json['currentRound'] as Map<String, dynamic>),
      timer: json['timer'] == null
          ? null
          : GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameStateToJson(_GameState instance) =>
    <String, dynamic>{
      'questionState': instance.questionState,
      'isPaused': instance.isPaused,
      'currentQuestion': instance.currentQuestion,
      'answeringPlayer': instance.answeringPlayer,
      'answeredPlayers': instance.answeredPlayers,
      'currentRound': instance.currentRound,
      'timer': instance.timer,
    };

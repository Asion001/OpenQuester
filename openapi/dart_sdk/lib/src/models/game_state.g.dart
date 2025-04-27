// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateImpl _$$GameStateImplFromJson(Map<String, dynamic> json) =>
    _$GameStateImpl(
      questionState: json['questionState'] == null
          ? null
          : GameStateQuestionState.fromJson(json['questionState'] as String?),
      isPaused: json['isPaused'] as bool,
      currentRound: SocketIOGameStateRoundData.fromJson(
          json['currentRound'] as Map<String, dynamic>),
      currentQuestion: (json['currentQuestion'] as num?)?.toInt(),
      answeringPlayer: (json['answeringPlayer'] as num?)?.toInt(),
      answeredPlayers: (json['answeredPlayers'] as List<dynamic>?)
          ?.map((e) =>
              GameStateAnsweredPlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
      timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameStateImplToJson(_$GameStateImpl instance) =>
    <String, dynamic>{
      'questionState': instance.questionState,
      'isPaused': instance.isPaused,
      'currentRound': instance.currentRound,
      'currentQuestion': instance.currentQuestion,
      'answeringPlayer': instance.answeringPlayer,
      'answeredPlayers': instance.answeredPlayers,
      'timer': instance.timer,
    };

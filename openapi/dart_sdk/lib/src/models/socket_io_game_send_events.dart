// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum SocketIOGameSendEvents {
  @JsonValue('join')
  join('join'),
  @JsonValue('user-leave')
  userLeave('user-leave'),
  @JsonValue('game-data')
  gameData('game-data'),
  @JsonValue('start')
  start('start'),
  @JsonValue('question-pick')
  questionPick('question-pick'),
  @JsonValue('question-answer')
  questionAnswer('question-answer'),
  @JsonValue('question-finish')
  questionFinish('question-finish'),
  @JsonValue('answer-submitted')
  answerSubmitted('answer-submitted'),
  @JsonValue('next-round')
  nextRound('next-round'),
  @JsonValue('answer-result')
  answerResult('answer-result'),
  @JsonValue('skip-question-force')
  skipQuestionForce('skip-question-force'),
  @JsonValue('game-pause')
  gamePause('game-pause'),
  @JsonValue('game-unpause')
  gameUnpause('game-unpause'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SocketIOGameSendEvents(this.json);

  factory SocketIOGameSendEvents.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}

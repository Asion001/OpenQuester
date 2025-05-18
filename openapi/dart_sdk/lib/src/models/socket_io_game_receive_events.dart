// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum SocketIOGameReceiveEvents {
  @JsonValue('join')
  join('join'),
  @JsonValue('start')
  start('start'),
  @JsonValue('user-leave')
  userLeave('user-leave'),
  @JsonValue('game-data')
  gameData('game-data'),
  @JsonValue('question-answer')
  questionAnswer('question-answer'),
  @JsonValue('question-data')
  questionData('question-data'),
  @JsonValue('question-finish')
  questionFinish('question-finish'),
  @JsonValue('answer-submitted')
  answerSubmitted('answer-submitted'),
  @JsonValue('answer-result')
  answerResult('answer-result'),
  @JsonValue('next-round')
  nextRound('next-round'),
  @JsonValue('game-finished')
  gameFinished('game-finished'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SocketIOGameReceiveEvents(this.json);

  factory SocketIOGameReceiveEvents.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}

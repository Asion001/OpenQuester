// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state_answered_player.dart';
import 'game_state_timer.dart';
import 'package_question_file.dart';
import 'question_answer_text.dart';

part 'socket_io_answer_result_event_payload.freezed.dart';
part 'socket_io_answer_result_event_payload.g.dart';

/// Data sent to all players when the showman evaluates an answer
@Freezed()
abstract class SocketIOAnswerResultEventPayload with _$SocketIOAnswerResultEventPayload {
  const factory SocketIOAnswerResultEventPayload({
    required GameStateAnsweredPlayer answerResult,
    GameStateTimer? timer,
    List<PackageQuestionFile?>? answerFiles,
    QuestionAnswerText? answerText,
  }) = _SocketIOAnswerResultEventPayload;
  
  factory SocketIOAnswerResultEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOAnswerResultEventPayloadFromJson(json);
}

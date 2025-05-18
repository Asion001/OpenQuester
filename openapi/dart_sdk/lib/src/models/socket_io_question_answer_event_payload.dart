// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state_timer.dart';

part 'socket_io_question_answer_event_payload.freezed.dart';
part 'socket_io_question_answer_event_payload.g.dart';

/// Data sent to all players when a player starts answering a question
@Freezed()
abstract class SocketIOQuestionAnswerEventPayload with _$SocketIOQuestionAnswerEventPayload {
  const factory SocketIOQuestionAnswerEventPayload({
    /// ID of the user who is answering
    required int userId,
    required GameStateTimer timer,
  }) = _SocketIOQuestionAnswerEventPayload;
  
  factory SocketIOQuestionAnswerEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOQuestionAnswerEventPayloadFromJson(json);
}

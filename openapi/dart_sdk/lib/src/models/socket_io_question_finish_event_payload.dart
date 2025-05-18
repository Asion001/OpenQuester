// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'question_answer_text.dart';

part 'socket_io_question_finish_event_payload.freezed.dart';
part 'socket_io_question_finish_event_payload.g.dart';

/// Data sent to all players when a question is finished with a correct answer or by answering timeout
@Freezed()
abstract class SocketIOQuestionFinishEventPayload with _$SocketIOQuestionFinishEventPayload {
  const factory SocketIOQuestionFinishEventPayload({
    List<List<PackageAnswerFile?>>? answerFiles,
    QuestionAnswerText? answerText,
  }) = _SocketIOQuestionFinishEventPayload;
  
  factory SocketIOQuestionFinishEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOQuestionFinishEventPayloadFromJson(json);
}

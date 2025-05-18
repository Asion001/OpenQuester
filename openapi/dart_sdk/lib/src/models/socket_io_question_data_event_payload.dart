// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state_timer.dart';
import 'package_question_data.dart';

part 'socket_io_question_data_event_payload.freezed.dart';
part 'socket_io_question_data_event_payload.g.dart';

/// Data sent to players when a question is picked, containing question details and timer
@Freezed()
abstract class SocketIOQuestionDataEventPayload with _$SocketIOQuestionDataEventPayload {
  const factory SocketIOQuestionDataEventPayload({
    required PackageQuestionData data,
    required GameStateTimer timer,
  }) = _SocketIOQuestionDataEventPayload;
  
  factory SocketIOQuestionDataEventPayload.fromJson(Map<String, Object?> json) => _$SocketIOQuestionDataEventPayloadFromJson(json);
}

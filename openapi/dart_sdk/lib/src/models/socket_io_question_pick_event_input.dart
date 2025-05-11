// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_question_pick_event_input.freezed.dart';
part 'socket_io_question_pick_event_input.g.dart';

/// Send this data to pick a question
@Freezed()
abstract class SocketIOQuestionPickEventInput with _$SocketIOQuestionPickEventInput {
  const factory SocketIOQuestionPickEventInput({
    /// ID of the picked question
    required int questionId,
  }) = _SocketIOQuestionPickEventInput;
  
  factory SocketIOQuestionPickEventInput.fromJson(Map<String, Object?> json) => _$SocketIOQuestionPickEventInputFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_answer_submitted_event_data.freezed.dart';
part 'socket_io_answer_submitted_event_data.g.dart';

/// Data sent to all players when a player submits an answer. Same data should be sent by answering player to the server
@Freezed()
abstract class SocketIOAnswerSubmittedEventData with _$SocketIOAnswerSubmittedEventData {
  const factory SocketIOAnswerSubmittedEventData({
    /// Player's answer text
    required String? answerText,
  }) = _SocketIOAnswerSubmittedEventData;
  
  factory SocketIOAnswerSubmittedEventData.fromJson(Map<String, Object?> json) => _$SocketIOAnswerSubmittedEventDataFromJson(json);
}

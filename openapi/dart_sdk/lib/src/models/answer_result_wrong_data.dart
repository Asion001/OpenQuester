// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state_answered_player.dart';
import 'game_state_timer.dart';

part 'answer_result_wrong_data.freezed.dart';
part 'answer_result_wrong_data.g.dart';

/// Data sent to all players when the showman evaluates an answer
@Freezed()
abstract class AnswerResultWrongData with _$AnswerResultWrongData {
  const factory AnswerResultWrongData({
    required GameStateAnsweredPlayer playerAnswerResult,
    required GameStateTimer timer,
  }) = _AnswerResultWrongData;
  
  factory AnswerResultWrongData.fromJson(Map<String, Object?> json) => _$AnswerResultWrongDataFromJson(json);
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_state_answered_player.dart';
import 'game_state_question_state.dart';
import 'game_state_timer.dart';
import 'package_question_data.dart';
import 'socket_io_game_state_round_data.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@Freezed()
abstract class GameState with _$GameState {
  const factory GameState({
    required GameStateQuestionState? questionState,
    required bool isPaused,

    /// Id of player who is currently answering
    required int? answeringPlayer,
    required List<GameStateAnsweredPlayer>? answeredPlayers,
    SocketIOGameStateRoundData? currentRound,
    PackageQuestionData? currentQuestion,
    GameStateTimer? timer,
  }) = _GameState;
  
  factory GameState.fromJson(Map<String, Object?> json) => _$GameStateFromJson(json);
}

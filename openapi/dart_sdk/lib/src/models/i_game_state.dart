// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'player.dart';

part 'i_game_state.freezed.dart';
part 'i_game_state.g.dart';

@Freezed()
class IGameState with _$IGameState {
  const factory IGameState({
    required String id,
    required int createdBy,
    required String title,
    required DateTime createdAt,
    required int currentRound,
    required List<Player> players,
    required int maxPlayers,
    required int packageId,
    required int lastAnsweredUserId,
    required DateTime startedAt,
  }) = _IGameState;
  
  factory IGameState.fromJson(Map<String, Object?> json) => _$IGameStateFromJson(json);
}

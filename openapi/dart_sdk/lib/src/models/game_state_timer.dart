// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state_timer.freezed.dart';
part 'game_state_timer.g.dart';

@Freezed()
abstract class GameStateTimer with _$GameStateTimer {
  const factory GameStateTimer({
    /// Describes when timer started
    required DateTime startedAt,

    /// Describes how long timer should last until it's ended
    required int durationMs,

    /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
    required int elapsedMs,
  }) = _GameStateTimer;
  
  factory GameStateTimer.fromJson(Map<String, Object?> json) => _$GameStateTimerFromJson(json);
}

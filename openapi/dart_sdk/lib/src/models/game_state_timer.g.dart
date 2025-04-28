// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_timer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameStateTimer _$GameStateTimerFromJson(Map<String, dynamic> json) =>
    _GameStateTimer(
      startedAt: DateTime.parse(json['startedAt'] as String),
      durationMs: (json['durationMs'] as num).toInt(),
      elapsedMs: (json['elapsedMs'] as num).toInt(),
    );

Map<String, dynamic> _$GameStateTimerToJson(_GameStateTimer instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt.toIso8601String(),
      'durationMs': instance.durationMs,
      'elapsedMs': instance.elapsedMs,
    };

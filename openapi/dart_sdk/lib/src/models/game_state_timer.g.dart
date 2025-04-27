// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state_timer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameStateTimerImpl _$$GameStateTimerImplFromJson(Map<String, dynamic> json) =>
    _$GameStateTimerImpl(
      startedAt: DateTime.parse(json['startedAt'] as String),
      durationMs: (json['durationMs'] as num).toInt(),
      elapsedMs: (json['elapsedMs'] as num).toInt(),
    );

Map<String, dynamic> _$$GameStateTimerImplToJson(
        _$GameStateTimerImpl instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt.toIso8601String(),
      'durationMs': instance.durationMs,
      'elapsedMs': instance.elapsedMs,
    };

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStateTimer {
  /// Describes when timer started
  DateTime get startedAt;

  /// Describes how long timer should last until it's ended
  int get durationMs;

  /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
  int get elapsedMs;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<GameStateTimer> get copyWith =>
      _$GameStateTimerCopyWithImpl<GameStateTimer>(
          this as GameStateTimer, _$identity);

  /// Serializes this GameStateTimer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameStateTimer &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.elapsedMs, elapsedMs) ||
                other.elapsedMs == elapsedMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startedAt, durationMs, elapsedMs);

  @override
  String toString() {
    return 'GameStateTimer(startedAt: $startedAt, durationMs: $durationMs, elapsedMs: $elapsedMs)';
  }
}

/// @nodoc
abstract mixin class $GameStateTimerCopyWith<$Res> {
  factory $GameStateTimerCopyWith(
          GameStateTimer value, $Res Function(GameStateTimer) _then) =
      _$GameStateTimerCopyWithImpl;
  @useResult
  $Res call({DateTime startedAt, int durationMs, int elapsedMs});
}

/// @nodoc
class _$GameStateTimerCopyWithImpl<$Res>
    implements $GameStateTimerCopyWith<$Res> {
  _$GameStateTimerCopyWithImpl(this._self, this._then);

  final GameStateTimer _self;
  final $Res Function(GameStateTimer) _then;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? durationMs = null,
    Object? elapsedMs = null,
  }) {
    return _then(_self.copyWith(
      startedAt: null == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMs: null == durationMs
          ? _self.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: null == elapsedMs
          ? _self.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GameStateTimer implements GameStateTimer {
  const _GameStateTimer(
      {required this.startedAt,
      required this.durationMs,
      required this.elapsedMs});
  factory _GameStateTimer.fromJson(Map<String, dynamic> json) =>
      _$GameStateTimerFromJson(json);

  /// Describes when timer started
  @override
  final DateTime startedAt;

  /// Describes how long timer should last until it's ended
  @override
  final int durationMs;

  /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
  @override
  final int elapsedMs;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameStateTimerCopyWith<_GameStateTimer> get copyWith =>
      __$GameStateTimerCopyWithImpl<_GameStateTimer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameStateTimerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameStateTimer &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.elapsedMs, elapsedMs) ||
                other.elapsedMs == elapsedMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startedAt, durationMs, elapsedMs);

  @override
  String toString() {
    return 'GameStateTimer(startedAt: $startedAt, durationMs: $durationMs, elapsedMs: $elapsedMs)';
  }
}

/// @nodoc
abstract mixin class _$GameStateTimerCopyWith<$Res>
    implements $GameStateTimerCopyWith<$Res> {
  factory _$GameStateTimerCopyWith(
          _GameStateTimer value, $Res Function(_GameStateTimer) _then) =
      __$GameStateTimerCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime startedAt, int durationMs, int elapsedMs});
}

/// @nodoc
class __$GameStateTimerCopyWithImpl<$Res>
    implements _$GameStateTimerCopyWith<$Res> {
  __$GameStateTimerCopyWithImpl(this._self, this._then);

  final _GameStateTimer _self;
  final $Res Function(_GameStateTimer) _then;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startedAt = null,
    Object? durationMs = null,
    Object? elapsedMs = null,
  }) {
    return _then(_GameStateTimer(
      startedAt: null == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMs: null == durationMs
          ? _self.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: null == elapsedMs
          ? _self.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

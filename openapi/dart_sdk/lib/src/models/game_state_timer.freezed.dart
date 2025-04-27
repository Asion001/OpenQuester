// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameStateTimer _$GameStateTimerFromJson(Map<String, dynamic> json) {
  return _GameStateTimer.fromJson(json);
}

/// @nodoc
mixin _$GameStateTimer {
  /// Describes when timer started
  DateTime get startedAt => throw _privateConstructorUsedError;

  /// Describes how long timer should last until it's ended
  int get durationMs => throw _privateConstructorUsedError;

  /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
  int get elapsedMs => throw _privateConstructorUsedError;

  /// Serializes this GameStateTimer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateTimerCopyWith<GameStateTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateTimerCopyWith<$Res> {
  factory $GameStateTimerCopyWith(
          GameStateTimer value, $Res Function(GameStateTimer) then) =
      _$GameStateTimerCopyWithImpl<$Res, GameStateTimer>;
  @useResult
  $Res call({DateTime startedAt, int durationMs, int elapsedMs});
}

/// @nodoc
class _$GameStateTimerCopyWithImpl<$Res, $Val extends GameStateTimer>
    implements $GameStateTimerCopyWith<$Res> {
  _$GameStateTimerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? durationMs = null,
    Object? elapsedMs = null,
  }) {
    return _then(_value.copyWith(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: null == elapsedMs
          ? _value.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameStateTimerImplCopyWith<$Res>
    implements $GameStateTimerCopyWith<$Res> {
  factory _$$GameStateTimerImplCopyWith(_$GameStateTimerImpl value,
          $Res Function(_$GameStateTimerImpl) then) =
      __$$GameStateTimerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startedAt, int durationMs, int elapsedMs});
}

/// @nodoc
class __$$GameStateTimerImplCopyWithImpl<$Res>
    extends _$GameStateTimerCopyWithImpl<$Res, _$GameStateTimerImpl>
    implements _$$GameStateTimerImplCopyWith<$Res> {
  __$$GameStateTimerImplCopyWithImpl(
      _$GameStateTimerImpl _value, $Res Function(_$GameStateTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? durationMs = null,
    Object? elapsedMs = null,
  }) {
    return _then(_$GameStateTimerImpl(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedMs: null == elapsedMs
          ? _value.elapsedMs
          : elapsedMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateTimerImpl implements _GameStateTimer {
  const _$GameStateTimerImpl(
      {required this.startedAt,
      required this.durationMs,
      required this.elapsedMs});

  factory _$GameStateTimerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateTimerImplFromJson(json);

  /// Describes when timer started
  @override
  final DateTime startedAt;

  /// Describes how long timer should last until it's ended
  @override
  final int durationMs;

  /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
  @override
  final int elapsedMs;

  @override
  String toString() {
    return 'GameStateTimer(startedAt: $startedAt, durationMs: $durationMs, elapsedMs: $elapsedMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateTimerImpl &&
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

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateTimerImplCopyWith<_$GameStateTimerImpl> get copyWith =>
      __$$GameStateTimerImplCopyWithImpl<_$GameStateTimerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateTimerImplToJson(
      this,
    );
  }
}

abstract class _GameStateTimer implements GameStateTimer {
  const factory _GameStateTimer(
      {required final DateTime startedAt,
      required final int durationMs,
      required final int elapsedMs}) = _$GameStateTimerImpl;

  factory _GameStateTimer.fromJson(Map<String, dynamic> json) =
      _$GameStateTimerImpl.fromJson;

  /// Describes when timer started
  @override
  DateTime get startedAt;

  /// Describes how long timer should last until it's ended
  @override
  int get durationMs;

  /// This value written only when timer paused because of something. Helps to track passed time and resume timer correctly
  @override
  int get elapsedMs;

  /// Create a copy of GameStateTimer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateTimerImplCopyWith<_$GameStateTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_pause_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGamePauseEventPayload {
  GameStateTimer get timer;

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOGamePauseEventPayloadCopyWith<SocketIOGamePauseEventPayload>
      get copyWith => _$SocketIOGamePauseEventPayloadCopyWithImpl<
              SocketIOGamePauseEventPayload>(
          this as SocketIOGamePauseEventPayload, _$identity);

  /// Serializes this SocketIOGamePauseEventPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOGamePauseEventPayload &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timer);

  @override
  String toString() {
    return 'SocketIOGamePauseEventPayload(timer: $timer)';
  }
}

/// @nodoc
abstract mixin class $SocketIOGamePauseEventPayloadCopyWith<$Res> {
  factory $SocketIOGamePauseEventPayloadCopyWith(
          SocketIOGamePauseEventPayload value,
          $Res Function(SocketIOGamePauseEventPayload) _then) =
      _$SocketIOGamePauseEventPayloadCopyWithImpl;
  @useResult
  $Res call({GameStateTimer timer});

  $GameStateTimerCopyWith<$Res> get timer;
}

/// @nodoc
class _$SocketIOGamePauseEventPayloadCopyWithImpl<$Res>
    implements $SocketIOGamePauseEventPayloadCopyWith<$Res> {
  _$SocketIOGamePauseEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOGamePauseEventPayload _self;
  final $Res Function(SocketIOGamePauseEventPayload) _then;

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = null,
  }) {
    return _then(_self.copyWith(
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer,
    ));
  }

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<$Res> get timer {
    return $GameStateTimerCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOGamePauseEventPayload implements SocketIOGamePauseEventPayload {
  const _SocketIOGamePauseEventPayload({required this.timer});
  factory _SocketIOGamePauseEventPayload.fromJson(Map<String, dynamic> json) =>
      _$SocketIOGamePauseEventPayloadFromJson(json);

  @override
  final GameStateTimer timer;

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOGamePauseEventPayloadCopyWith<_SocketIOGamePauseEventPayload>
      get copyWith => __$SocketIOGamePauseEventPayloadCopyWithImpl<
          _SocketIOGamePauseEventPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOGamePauseEventPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOGamePauseEventPayload &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timer);

  @override
  String toString() {
    return 'SocketIOGamePauseEventPayload(timer: $timer)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOGamePauseEventPayloadCopyWith<$Res>
    implements $SocketIOGamePauseEventPayloadCopyWith<$Res> {
  factory _$SocketIOGamePauseEventPayloadCopyWith(
          _SocketIOGamePauseEventPayload value,
          $Res Function(_SocketIOGamePauseEventPayload) _then) =
      __$SocketIOGamePauseEventPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({GameStateTimer timer});

  @override
  $GameStateTimerCopyWith<$Res> get timer;
}

/// @nodoc
class __$SocketIOGamePauseEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOGamePauseEventPayloadCopyWith<$Res> {
  __$SocketIOGamePauseEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOGamePauseEventPayload _self;
  final $Res Function(_SocketIOGamePauseEventPayload) _then;

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timer = null,
  }) {
    return _then(_SocketIOGamePauseEventPayload(
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer,
    ));
  }

  /// Create a copy of SocketIOGamePauseEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<$Res> get timer {
    return $GameStateTimerCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

// dart format on

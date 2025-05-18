// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_next_round_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIONextRoundEventPayload {
  GameState get gameState;

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIONextRoundEventPayloadCopyWith<SocketIONextRoundEventPayload>
      get copyWith => _$SocketIONextRoundEventPayloadCopyWithImpl<
              SocketIONextRoundEventPayload>(
          this as SocketIONextRoundEventPayload, _$identity);

  /// Serializes this SocketIONextRoundEventPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIONextRoundEventPayload &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameState);

  @override
  String toString() {
    return 'SocketIONextRoundEventPayload(gameState: $gameState)';
  }
}

/// @nodoc
abstract mixin class $SocketIONextRoundEventPayloadCopyWith<$Res> {
  factory $SocketIONextRoundEventPayloadCopyWith(
          SocketIONextRoundEventPayload value,
          $Res Function(SocketIONextRoundEventPayload) _then) =
      _$SocketIONextRoundEventPayloadCopyWithImpl;
  @useResult
  $Res call({GameState gameState});

  $GameStateCopyWith<$Res> get gameState;
}

/// @nodoc
class _$SocketIONextRoundEventPayloadCopyWithImpl<$Res>
    implements $SocketIONextRoundEventPayloadCopyWith<$Res> {
  _$SocketIONextRoundEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIONextRoundEventPayload _self;
  final $Res Function(SocketIONextRoundEventPayload) _then;

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameState = null,
  }) {
    return _then(_self.copyWith(
      gameState: null == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<$Res> get gameState {
    return $GameStateCopyWith<$Res>(_self.gameState, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIONextRoundEventPayload implements SocketIONextRoundEventPayload {
  const _SocketIONextRoundEventPayload({required this.gameState});
  factory _SocketIONextRoundEventPayload.fromJson(Map<String, dynamic> json) =>
      _$SocketIONextRoundEventPayloadFromJson(json);

  @override
  final GameState gameState;

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIONextRoundEventPayloadCopyWith<_SocketIONextRoundEventPayload>
      get copyWith => __$SocketIONextRoundEventPayloadCopyWithImpl<
          _SocketIONextRoundEventPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIONextRoundEventPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIONextRoundEventPayload &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameState);

  @override
  String toString() {
    return 'SocketIONextRoundEventPayload(gameState: $gameState)';
  }
}

/// @nodoc
abstract mixin class _$SocketIONextRoundEventPayloadCopyWith<$Res>
    implements $SocketIONextRoundEventPayloadCopyWith<$Res> {
  factory _$SocketIONextRoundEventPayloadCopyWith(
          _SocketIONextRoundEventPayload value,
          $Res Function(_SocketIONextRoundEventPayload) _then) =
      __$SocketIONextRoundEventPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({GameState gameState});

  @override
  $GameStateCopyWith<$Res> get gameState;
}

/// @nodoc
class __$SocketIONextRoundEventPayloadCopyWithImpl<$Res>
    implements _$SocketIONextRoundEventPayloadCopyWith<$Res> {
  __$SocketIONextRoundEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIONextRoundEventPayload _self;
  final $Res Function(_SocketIONextRoundEventPayload) _then;

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gameState = null,
  }) {
    return _then(_SocketIONextRoundEventPayload(
      gameState: null == gameState
          ? _self.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }

  /// Create a copy of SocketIONextRoundEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<$Res> get gameState {
    return $GameStateCopyWith<$Res>(_self.gameState, (value) {
      return _then(_self.copyWith(gameState: value));
    });
  }
}

// dart format on

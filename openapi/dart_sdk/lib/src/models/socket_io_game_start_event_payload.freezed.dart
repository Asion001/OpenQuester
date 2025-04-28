// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_start_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameStartEventPayload {
  SocketIOGameStateRoundData get currentRound;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOGameStartEventPayloadCopyWith<SocketIOGameStartEventPayload>
      get copyWith => _$SocketIOGameStartEventPayloadCopyWithImpl<
              SocketIOGameStartEventPayload>(
          this as SocketIOGameStartEventPayload, _$identity);

  /// Serializes this SocketIOGameStartEventPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOGameStartEventPayload &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentRound);

  @override
  String toString() {
    return 'SocketIOGameStartEventPayload(currentRound: $currentRound)';
  }
}

/// @nodoc
abstract mixin class $SocketIOGameStartEventPayloadCopyWith<$Res> {
  factory $SocketIOGameStartEventPayloadCopyWith(
          SocketIOGameStartEventPayload value,
          $Res Function(SocketIOGameStartEventPayload) _then) =
      _$SocketIOGameStartEventPayloadCopyWithImpl;
  @useResult
  $Res call({SocketIOGameStateRoundData currentRound});

  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound;
}

/// @nodoc
class _$SocketIOGameStartEventPayloadCopyWithImpl<$Res>
    implements $SocketIOGameStartEventPayloadCopyWith<$Res> {
  _$SocketIOGameStartEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOGameStartEventPayload _self;
  final $Res Function(SocketIOGameStartEventPayload) _then;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRound = null,
  }) {
    return _then(_self.copyWith(
      currentRound: null == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData,
    ));
  }

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound {
    return $SocketIOGameStateRoundDataCopyWith<$Res>(_self.currentRound,
        (value) {
      return _then(_self.copyWith(currentRound: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOGameStartEventPayload implements SocketIOGameStartEventPayload {
  const _SocketIOGameStartEventPayload({required this.currentRound});
  factory _SocketIOGameStartEventPayload.fromJson(Map<String, dynamic> json) =>
      _$SocketIOGameStartEventPayloadFromJson(json);

  @override
  final SocketIOGameStateRoundData currentRound;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOGameStartEventPayloadCopyWith<_SocketIOGameStartEventPayload>
      get copyWith => __$SocketIOGameStartEventPayloadCopyWithImpl<
          _SocketIOGameStartEventPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOGameStartEventPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOGameStartEventPayload &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentRound);

  @override
  String toString() {
    return 'SocketIOGameStartEventPayload(currentRound: $currentRound)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOGameStartEventPayloadCopyWith<$Res>
    implements $SocketIOGameStartEventPayloadCopyWith<$Res> {
  factory _$SocketIOGameStartEventPayloadCopyWith(
          _SocketIOGameStartEventPayload value,
          $Res Function(_SocketIOGameStartEventPayload) _then) =
      __$SocketIOGameStartEventPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({SocketIOGameStateRoundData currentRound});

  @override
  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound;
}

/// @nodoc
class __$SocketIOGameStartEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOGameStartEventPayloadCopyWith<$Res> {
  __$SocketIOGameStartEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOGameStartEventPayload _self;
  final $Res Function(_SocketIOGameStartEventPayload) _then;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentRound = null,
  }) {
    return _then(_SocketIOGameStartEventPayload(
      currentRound: null == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData,
    ));
  }

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound {
    return $SocketIOGameStateRoundDataCopyWith<$Res>(_self.currentRound,
        (value) {
      return _then(_self.copyWith(currentRound: value));
    });
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_join_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameJoinEventPayload _$SocketIOGameJoinEventPayloadFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameJoinEventPayload.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameJoinEventPayload {
  /// Players in the game
  List<PlayerData> get players => throw _privateConstructorUsedError;

  /// !!! Work in progress, will be changed with actual game state component
  GameListItem get gameState => throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameJoinEventPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameJoinEventPayloadCopyWith<SocketIOGameJoinEventPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameJoinEventPayloadCopyWith<$Res> {
  factory $SocketIOGameJoinEventPayloadCopyWith(
          SocketIOGameJoinEventPayload value,
          $Res Function(SocketIOGameJoinEventPayload) then) =
      _$SocketIOGameJoinEventPayloadCopyWithImpl<$Res,
          SocketIOGameJoinEventPayload>;
  @useResult
  $Res call({List<PlayerData> players, GameListItem gameState});

  $GameListItemCopyWith<$Res> get gameState;
}

/// @nodoc
class _$SocketIOGameJoinEventPayloadCopyWithImpl<$Res,
        $Val extends SocketIOGameJoinEventPayload>
    implements $SocketIOGameJoinEventPayloadCopyWith<$Res> {
  _$SocketIOGameJoinEventPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? gameState = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerData>,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ) as $Val);
  }

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get gameState {
    return $GameListItemCopyWith<$Res>(_value.gameState, (value) {
      return _then(_value.copyWith(gameState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketIOGameJoinEventPayloadImplCopyWith<$Res>
    implements $SocketIOGameJoinEventPayloadCopyWith<$Res> {
  factory _$$SocketIOGameJoinEventPayloadImplCopyWith(
          _$SocketIOGameJoinEventPayloadImpl value,
          $Res Function(_$SocketIOGameJoinEventPayloadImpl) then) =
      __$$SocketIOGameJoinEventPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlayerData> players, GameListItem gameState});

  @override
  $GameListItemCopyWith<$Res> get gameState;
}

/// @nodoc
class __$$SocketIOGameJoinEventPayloadImplCopyWithImpl<$Res>
    extends _$SocketIOGameJoinEventPayloadCopyWithImpl<$Res,
        _$SocketIOGameJoinEventPayloadImpl>
    implements _$$SocketIOGameJoinEventPayloadImplCopyWith<$Res> {
  __$$SocketIOGameJoinEventPayloadImplCopyWithImpl(
      _$SocketIOGameJoinEventPayloadImpl _value,
      $Res Function(_$SocketIOGameJoinEventPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? gameState = null,
  }) {
    return _then(_$SocketIOGameJoinEventPayloadImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerData>,
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameJoinEventPayloadImpl
    implements _SocketIOGameJoinEventPayload {
  const _$SocketIOGameJoinEventPayloadImpl(
      {required final List<PlayerData> players, required this.gameState})
      : _players = players;

  factory _$SocketIOGameJoinEventPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOGameJoinEventPayloadImplFromJson(json);

  /// Players in the game
  final List<PlayerData> _players;

  /// Players in the game
  @override
  List<PlayerData> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  /// !!! Work in progress, will be changed with actual game state component
  @override
  final GameListItem gameState;

  @override
  String toString() {
    return 'SocketIOGameJoinEventPayload(players: $players, gameState: $gameState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameJoinEventPayloadImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_players), gameState);

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameJoinEventPayloadImplCopyWith<
          _$SocketIOGameJoinEventPayloadImpl>
      get copyWith => __$$SocketIOGameJoinEventPayloadImplCopyWithImpl<
          _$SocketIOGameJoinEventPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameJoinEventPayloadImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameJoinEventPayload
    implements SocketIOGameJoinEventPayload {
  const factory _SocketIOGameJoinEventPayload(
          {required final List<PlayerData> players,
          required final GameListItem gameState}) =
      _$SocketIOGameJoinEventPayloadImpl;

  factory _SocketIOGameJoinEventPayload.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameJoinEventPayloadImpl.fromJson;

  /// Players in the game
  @override
  List<PlayerData> get players;

  /// !!! Work in progress, will be changed with actual game state component
  @override
  GameListItem get gameState;

  /// Create a copy of SocketIOGameJoinEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameJoinEventPayloadImplCopyWith<
          _$SocketIOGameJoinEventPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

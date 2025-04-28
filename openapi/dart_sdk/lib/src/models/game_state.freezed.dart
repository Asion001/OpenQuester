// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  return _GameState.fromJson(json);
}

/// @nodoc
mixin _$GameState {
  GameStateQuestionState? get questionState =>
      throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;

  /// Last chosen / current question number out of all
  int? get currentQuestion => throw _privateConstructorUsedError;

  /// Id of player who is currently answering
  int? get answeringPlayer => throw _privateConstructorUsedError;
  List<GameStateAnsweredPlayer>? get answeredPlayers =>
      throw _privateConstructorUsedError;
  SocketIOGameStateRoundData? get currentRound =>
      throw _privateConstructorUsedError;
  GameStateTimer? get timer => throw _privateConstructorUsedError;

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {GameStateQuestionState? questionState,
      bool isPaused,
      int? currentQuestion,
      int? answeringPlayer,
      List<GameStateAnsweredPlayer>? answeredPlayers,
      SocketIOGameStateRoundData? currentRound,
      GameStateTimer? timer});

  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound;
  $GameStateTimerCopyWith<$Res>? get timer;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionState = freezed,
    Object? isPaused = null,
    Object? currentQuestion = freezed,
    Object? answeringPlayer = freezed,
    Object? answeredPlayers = freezed,
    Object? currentRound = freezed,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      questionState: freezed == questionState
          ? _value.questionState
          : questionState // ignore: cast_nullable_to_non_nullable
              as GameStateQuestionState?,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestion: freezed == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      answeringPlayer: freezed == answeringPlayer
          ? _value.answeringPlayer
          : answeringPlayer // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredPlayers: freezed == answeredPlayers
          ? _value.answeredPlayers
          : answeredPlayers // ignore: cast_nullable_to_non_nullable
              as List<GameStateAnsweredPlayer>?,
      currentRound: freezed == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer?,
    ) as $Val);
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound {
    if (_value.currentRound == null) {
      return null;
    }

    return $SocketIOGameStateRoundDataCopyWith<$Res>(_value.currentRound!,
        (value) {
      return _then(_value.copyWith(currentRound: value) as $Val);
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<$Res>? get timer {
    if (_value.timer == null) {
      return null;
    }

    return $GameStateTimerCopyWith<$Res>(_value.timer!, (value) {
      return _then(_value.copyWith(timer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameStateQuestionState? questionState,
      bool isPaused,
      int? currentQuestion,
      int? answeringPlayer,
      List<GameStateAnsweredPlayer>? answeredPlayers,
      SocketIOGameStateRoundData? currentRound,
      GameStateTimer? timer});

  @override
  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound;
  @override
  $GameStateTimerCopyWith<$Res>? get timer;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionState = freezed,
    Object? isPaused = null,
    Object? currentQuestion = freezed,
    Object? answeringPlayer = freezed,
    Object? answeredPlayers = freezed,
    Object? currentRound = freezed,
    Object? timer = freezed,
  }) {
    return _then(_$GameStateImpl(
      questionState: freezed == questionState
          ? _value.questionState
          : questionState // ignore: cast_nullable_to_non_nullable
              as GameStateQuestionState?,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      currentQuestion: freezed == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      answeringPlayer: freezed == answeringPlayer
          ? _value.answeringPlayer
          : answeringPlayer // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredPlayers: freezed == answeredPlayers
          ? _value._answeredPlayers
          : answeredPlayers // ignore: cast_nullable_to_non_nullable
              as List<GameStateAnsweredPlayer>?,
      currentRound: freezed == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {required this.questionState,
      required this.isPaused,
      required this.currentQuestion,
      required this.answeringPlayer,
      required final List<GameStateAnsweredPlayer>? answeredPlayers,
      this.currentRound,
      this.timer})
      : _answeredPlayers = answeredPlayers;

  factory _$GameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameStateImplFromJson(json);

  @override
  final GameStateQuestionState? questionState;
  @override
  final bool isPaused;

  /// Last chosen / current question number out of all
  @override
  final int? currentQuestion;

  /// Id of player who is currently answering
  @override
  final int? answeringPlayer;
  final List<GameStateAnsweredPlayer>? _answeredPlayers;
  @override
  List<GameStateAnsweredPlayer>? get answeredPlayers {
    final value = _answeredPlayers;
    if (value == null) return null;
    if (_answeredPlayers is EqualUnmodifiableListView) return _answeredPlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SocketIOGameStateRoundData? currentRound;
  @override
  final GameStateTimer? timer;

  @override
  String toString() {
    return 'GameState(questionState: $questionState, isPaused: $isPaused, currentQuestion: $currentQuestion, answeringPlayer: $answeringPlayer, answeredPlayers: $answeredPlayers, currentRound: $currentRound, timer: $timer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.questionState, questionState) ||
                other.questionState == questionState) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.answeringPlayer, answeringPlayer) ||
                other.answeringPlayer == answeringPlayer) &&
            const DeepCollectionEquality()
                .equals(other._answeredPlayers, _answeredPlayers) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionState,
      isPaused,
      currentQuestion,
      answeringPlayer,
      const DeepCollectionEquality().hash(_answeredPlayers),
      currentRound,
      timer);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameStateImplToJson(
      this,
    );
  }
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final GameStateQuestionState? questionState,
      required final bool isPaused,
      required final int? currentQuestion,
      required final int? answeringPlayer,
      required final List<GameStateAnsweredPlayer>? answeredPlayers,
      final SocketIOGameStateRoundData? currentRound,
      final GameStateTimer? timer}) = _$GameStateImpl;

  factory _GameState.fromJson(Map<String, dynamic> json) =
      _$GameStateImpl.fromJson;

  @override
  GameStateQuestionState? get questionState;
  @override
  bool get isPaused;

  /// Last chosen / current question number out of all
  @override
  int? get currentQuestion;

  /// Id of player who is currently answering
  @override
  int? get answeringPlayer;
  @override
  List<GameStateAnsweredPlayer>? get answeredPlayers;
  @override
  SocketIOGameStateRoundData? get currentRound;
  @override
  GameStateTimer? get timer;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

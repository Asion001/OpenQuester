// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameState {
  GameStateQuestionState? get questionState;
  bool get isPaused;

  /// Id of player who is currently answering
  int? get answeringPlayer;
  List<GameStateAnsweredPlayer>? get answeredPlayers;
  SocketIOGameStateRoundData? get currentRound;
  PackageQuestionData? get currentQuestion;
  GameStateTimer? get timer;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<GameState> get copyWith =>
      _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);

  /// Serializes this GameState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameState &&
            (identical(other.questionState, questionState) ||
                other.questionState == questionState) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.answeringPlayer, answeringPlayer) ||
                other.answeringPlayer == answeringPlayer) &&
            const DeepCollectionEquality()
                .equals(other.answeredPlayers, answeredPlayers) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionState,
      isPaused,
      answeringPlayer,
      const DeepCollectionEquality().hash(answeredPlayers),
      currentRound,
      currentQuestion,
      timer);

  @override
  String toString() {
    return 'GameState(questionState: $questionState, isPaused: $isPaused, answeringPlayer: $answeringPlayer, answeredPlayers: $answeredPlayers, currentRound: $currentRound, currentQuestion: $currentQuestion, timer: $timer)';
  }
}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) =
      _$GameStateCopyWithImpl;
  @useResult
  $Res call(
      {GameStateQuestionState? questionState,
      bool isPaused,
      int? answeringPlayer,
      List<GameStateAnsweredPlayer>? answeredPlayers,
      SocketIOGameStateRoundData? currentRound,
      PackageQuestionData? currentQuestion,
      GameStateTimer? timer});

  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound;
  $PackageQuestionDataCopyWith<$Res>? get currentQuestion;
  $GameStateTimerCopyWith<$Res>? get timer;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionState = freezed,
    Object? isPaused = null,
    Object? answeringPlayer = freezed,
    Object? answeredPlayers = freezed,
    Object? currentRound = freezed,
    Object? currentQuestion = freezed,
    Object? timer = freezed,
  }) {
    return _then(_self.copyWith(
      questionState: freezed == questionState
          ? _self.questionState
          : questionState // ignore: cast_nullable_to_non_nullable
              as GameStateQuestionState?,
      isPaused: null == isPaused
          ? _self.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      answeringPlayer: freezed == answeringPlayer
          ? _self.answeringPlayer
          : answeringPlayer // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredPlayers: freezed == answeredPlayers
          ? _self.answeredPlayers
          : answeredPlayers // ignore: cast_nullable_to_non_nullable
              as List<GameStateAnsweredPlayer>?,
      currentRound: freezed == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData?,
      currentQuestion: freezed == currentQuestion
          ? _self.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as PackageQuestionData?,
      timer: freezed == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer?,
    ));
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound {
    if (_self.currentRound == null) {
      return null;
    }

    return $SocketIOGameStateRoundDataCopyWith<$Res>(_self.currentRound!,
        (value) {
      return _then(_self.copyWith(currentRound: value));
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageQuestionDataCopyWith<$Res>? get currentQuestion {
    if (_self.currentQuestion == null) {
      return null;
    }

    return $PackageQuestionDataCopyWith<$Res>(_self.currentQuestion!, (value) {
      return _then(_self.copyWith(currentQuestion: value));
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<$Res>? get timer {
    if (_self.timer == null) {
      return null;
    }

    return $GameStateTimerCopyWith<$Res>(_self.timer!, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GameState implements GameState {
  const _GameState(
      {required this.questionState,
      required this.isPaused,
      required this.answeringPlayer,
      required final List<GameStateAnsweredPlayer>? answeredPlayers,
      this.currentRound,
      this.currentQuestion,
      this.timer})
      : _answeredPlayers = answeredPlayers;
  factory _GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);

  @override
  final GameStateQuestionState? questionState;
  @override
  final bool isPaused;

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
  final PackageQuestionData? currentQuestion;
  @override
  final GameStateTimer? timer;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameStateCopyWith<_GameState> get copyWith =>
      __$GameStateCopyWithImpl<_GameState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameState &&
            (identical(other.questionState, questionState) ||
                other.questionState == questionState) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.answeringPlayer, answeringPlayer) ||
                other.answeringPlayer == answeringPlayer) &&
            const DeepCollectionEquality()
                .equals(other._answeredPlayers, _answeredPlayers) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionState,
      isPaused,
      answeringPlayer,
      const DeepCollectionEquality().hash(_answeredPlayers),
      currentRound,
      currentQuestion,
      timer);

  @override
  String toString() {
    return 'GameState(questionState: $questionState, isPaused: $isPaused, answeringPlayer: $answeringPlayer, answeredPlayers: $answeredPlayers, currentRound: $currentRound, currentQuestion: $currentQuestion, timer: $timer)';
  }
}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(
          _GameState value, $Res Function(_GameState) _then) =
      __$GameStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GameStateQuestionState? questionState,
      bool isPaused,
      int? answeringPlayer,
      List<GameStateAnsweredPlayer>? answeredPlayers,
      SocketIOGameStateRoundData? currentRound,
      PackageQuestionData? currentQuestion,
      GameStateTimer? timer});

  @override
  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound;
  @override
  $PackageQuestionDataCopyWith<$Res>? get currentQuestion;
  @override
  $GameStateTimerCopyWith<$Res>? get timer;
}

/// @nodoc
class __$GameStateCopyWithImpl<$Res> implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionState = freezed,
    Object? isPaused = null,
    Object? answeringPlayer = freezed,
    Object? answeredPlayers = freezed,
    Object? currentRound = freezed,
    Object? currentQuestion = freezed,
    Object? timer = freezed,
  }) {
    return _then(_GameState(
      questionState: freezed == questionState
          ? _self.questionState
          : questionState // ignore: cast_nullable_to_non_nullable
              as GameStateQuestionState?,
      isPaused: null == isPaused
          ? _self.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      answeringPlayer: freezed == answeringPlayer
          ? _self.answeringPlayer
          : answeringPlayer // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredPlayers: freezed == answeredPlayers
          ? _self._answeredPlayers
          : answeredPlayers // ignore: cast_nullable_to_non_nullable
              as List<GameStateAnsweredPlayer>?,
      currentRound: freezed == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData?,
      currentQuestion: freezed == currentQuestion
          ? _self.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as PackageQuestionData?,
      timer: freezed == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer?,
    ));
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res>? get currentRound {
    if (_self.currentRound == null) {
      return null;
    }

    return $SocketIOGameStateRoundDataCopyWith<$Res>(_self.currentRound!,
        (value) {
      return _then(_self.copyWith(currentRound: value));
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageQuestionDataCopyWith<$Res>? get currentQuestion {
    if (_self.currentQuestion == null) {
      return null;
    }

    return $PackageQuestionDataCopyWith<$Res>(_self.currentQuestion!, (value) {
      return _then(_self.copyWith(currentQuestion: value));
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateTimerCopyWith<$Res>? get timer {
    if (_self.timer == null) {
      return null;
    }

    return $GameStateTimerCopyWith<$Res>(_self.timer!, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

// dart format on

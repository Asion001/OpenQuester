// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_result_wrong_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnswerResultWrongData {
  GameStateAnsweredPlayer get playerAnswerResult;
  GameStateTimer get timer;

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnswerResultWrongDataCopyWith<AnswerResultWrongData> get copyWith =>
      _$AnswerResultWrongDataCopyWithImpl<AnswerResultWrongData>(
          this as AnswerResultWrongData, _$identity);

  /// Serializes this AnswerResultWrongData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnswerResultWrongData &&
            (identical(other.playerAnswerResult, playerAnswerResult) ||
                other.playerAnswerResult == playerAnswerResult) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerAnswerResult, timer);

  @override
  String toString() {
    return 'AnswerResultWrongData(playerAnswerResult: $playerAnswerResult, timer: $timer)';
  }
}

/// @nodoc
abstract mixin class $AnswerResultWrongDataCopyWith<$Res> {
  factory $AnswerResultWrongDataCopyWith(AnswerResultWrongData value,
          $Res Function(AnswerResultWrongData) _then) =
      _$AnswerResultWrongDataCopyWithImpl;
  @useResult
  $Res call({GameStateAnsweredPlayer playerAnswerResult, GameStateTimer timer});

  $GameStateAnsweredPlayerCopyWith<$Res> get playerAnswerResult;
  $GameStateTimerCopyWith<$Res> get timer;
}

/// @nodoc
class _$AnswerResultWrongDataCopyWithImpl<$Res>
    implements $AnswerResultWrongDataCopyWith<$Res> {
  _$AnswerResultWrongDataCopyWithImpl(this._self, this._then);

  final AnswerResultWrongData _self;
  final $Res Function(AnswerResultWrongData) _then;

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerAnswerResult = null,
    Object? timer = null,
  }) {
    return _then(_self.copyWith(
      playerAnswerResult: null == playerAnswerResult
          ? _self.playerAnswerResult
          : playerAnswerResult // ignore: cast_nullable_to_non_nullable
              as GameStateAnsweredPlayer,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer,
    ));
  }

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateAnsweredPlayerCopyWith<$Res> get playerAnswerResult {
    return $GameStateAnsweredPlayerCopyWith<$Res>(_self.playerAnswerResult,
        (value) {
      return _then(_self.copyWith(playerAnswerResult: value));
    });
  }

  /// Create a copy of AnswerResultWrongData
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
class _AnswerResultWrongData implements AnswerResultWrongData {
  const _AnswerResultWrongData(
      {required this.playerAnswerResult, required this.timer});
  factory _AnswerResultWrongData.fromJson(Map<String, dynamic> json) =>
      _$AnswerResultWrongDataFromJson(json);

  @override
  final GameStateAnsweredPlayer playerAnswerResult;
  @override
  final GameStateTimer timer;

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnswerResultWrongDataCopyWith<_AnswerResultWrongData> get copyWith =>
      __$AnswerResultWrongDataCopyWithImpl<_AnswerResultWrongData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnswerResultWrongDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerResultWrongData &&
            (identical(other.playerAnswerResult, playerAnswerResult) ||
                other.playerAnswerResult == playerAnswerResult) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, playerAnswerResult, timer);

  @override
  String toString() {
    return 'AnswerResultWrongData(playerAnswerResult: $playerAnswerResult, timer: $timer)';
  }
}

/// @nodoc
abstract mixin class _$AnswerResultWrongDataCopyWith<$Res>
    implements $AnswerResultWrongDataCopyWith<$Res> {
  factory _$AnswerResultWrongDataCopyWith(_AnswerResultWrongData value,
          $Res Function(_AnswerResultWrongData) _then) =
      __$AnswerResultWrongDataCopyWithImpl;
  @override
  @useResult
  $Res call({GameStateAnsweredPlayer playerAnswerResult, GameStateTimer timer});

  @override
  $GameStateAnsweredPlayerCopyWith<$Res> get playerAnswerResult;
  @override
  $GameStateTimerCopyWith<$Res> get timer;
}

/// @nodoc
class __$AnswerResultWrongDataCopyWithImpl<$Res>
    implements _$AnswerResultWrongDataCopyWith<$Res> {
  __$AnswerResultWrongDataCopyWithImpl(this._self, this._then);

  final _AnswerResultWrongData _self;
  final $Res Function(_AnswerResultWrongData) _then;

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? playerAnswerResult = null,
    Object? timer = null,
  }) {
    return _then(_AnswerResultWrongData(
      playerAnswerResult: null == playerAnswerResult
          ? _self.playerAnswerResult
          : playerAnswerResult // ignore: cast_nullable_to_non_nullable
              as GameStateAnsweredPlayer,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as GameStateTimer,
    ));
  }

  /// Create a copy of AnswerResultWrongData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateAnsweredPlayerCopyWith<$Res> get playerAnswerResult {
    return $GameStateAnsweredPlayerCopyWith<$Res>(_self.playerAnswerResult,
        (value) {
      return _then(_self.copyWith(playerAnswerResult: value));
    });
  }

  /// Create a copy of AnswerResultWrongData
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

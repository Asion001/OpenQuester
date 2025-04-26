// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LobbyRound {
  String get name;
  List<LobbyTheme> get themes;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LobbyRoundCopyWith<LobbyRound> get copyWith =>
      _$LobbyRoundCopyWithImpl<LobbyRound>(this as LobbyRound, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LobbyRound &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.themes, themes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(themes));

  @override
  String toString() {
    return 'LobbyRound(name: $name, themes: $themes)';
  }
}

/// @nodoc
abstract mixin class $LobbyRoundCopyWith<$Res> {
  factory $LobbyRoundCopyWith(
          LobbyRound value, $Res Function(LobbyRound) _then) =
      _$LobbyRoundCopyWithImpl;
  @useResult
  $Res call({String name, List<LobbyTheme> themes});
}

/// @nodoc
class _$LobbyRoundCopyWithImpl<$Res> implements $LobbyRoundCopyWith<$Res> {
  _$LobbyRoundCopyWithImpl(this._self, this._then);

  final LobbyRound _self;
  final $Res Function(LobbyRound) _then;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _self.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<LobbyTheme>,
    ));
  }
}

/// @nodoc

class _LobbyRound implements LobbyRound {
  const _LobbyRound(
      {required this.name, required final List<LobbyTheme> themes})
      : _themes = themes;

  @override
  final String name;
  final List<LobbyTheme> _themes;
  @override
  List<LobbyTheme> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LobbyRoundCopyWith<_LobbyRound> get copyWith =>
      __$LobbyRoundCopyWithImpl<_LobbyRound>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LobbyRound &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_themes));

  @override
  String toString() {
    return 'LobbyRound(name: $name, themes: $themes)';
  }
}

/// @nodoc
abstract mixin class _$LobbyRoundCopyWith<$Res>
    implements $LobbyRoundCopyWith<$Res> {
  factory _$LobbyRoundCopyWith(
          _LobbyRound value, $Res Function(_LobbyRound) _then) =
      __$LobbyRoundCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<LobbyTheme> themes});
}

/// @nodoc
class __$LobbyRoundCopyWithImpl<$Res> implements _$LobbyRoundCopyWith<$Res> {
  __$LobbyRoundCopyWithImpl(this._self, this._then);

  final _LobbyRound _self;
  final $Res Function(_LobbyRound) _then;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_LobbyRound(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _self._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<LobbyTheme>,
    ));
  }
}

// dart format on

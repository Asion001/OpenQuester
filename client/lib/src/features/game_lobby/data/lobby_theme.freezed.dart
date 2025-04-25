// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LobbyTheme {
  String get name;
  List<LobbyQuestion> get questions;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LobbyThemeCopyWith<LobbyTheme> get copyWith =>
      _$LobbyThemeCopyWithImpl<LobbyTheme>(this as LobbyTheme, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LobbyTheme &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(questions));

  @override
  String toString() {
    return 'LobbyTheme(name: $name, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class $LobbyThemeCopyWith<$Res> {
  factory $LobbyThemeCopyWith(
          LobbyTheme value, $Res Function(LobbyTheme) _then) =
      _$LobbyThemeCopyWithImpl;
  @useResult
  $Res call({String name, List<LobbyQuestion> questions});
}

/// @nodoc
class _$LobbyThemeCopyWithImpl<$Res> implements $LobbyThemeCopyWith<$Res> {
  _$LobbyThemeCopyWithImpl(this._self, this._then);

  final LobbyTheme _self;
  final $Res Function(LobbyTheme) _then;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<LobbyQuestion>,
    ));
  }
}

/// @nodoc

class _LobbyTheme implements LobbyTheme {
  const _LobbyTheme(
      {required this.name, required final List<LobbyQuestion> questions})
      : _questions = questions;

  @override
  final String name;
  final List<LobbyQuestion> _questions;
  @override
  List<LobbyQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LobbyThemeCopyWith<_LobbyTheme> get copyWith =>
      __$LobbyThemeCopyWithImpl<_LobbyTheme>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LobbyTheme &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_questions));

  @override
  String toString() {
    return 'LobbyTheme(name: $name, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class _$LobbyThemeCopyWith<$Res>
    implements $LobbyThemeCopyWith<$Res> {
  factory _$LobbyThemeCopyWith(
          _LobbyTheme value, $Res Function(_LobbyTheme) _then) =
      __$LobbyThemeCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<LobbyQuestion> questions});
}

/// @nodoc
class __$LobbyThemeCopyWithImpl<$Res> implements _$LobbyThemeCopyWith<$Res> {
  __$LobbyThemeCopyWithImpl(this._self, this._then);

  final _LobbyTheme _self;
  final $Res Function(_LobbyTheme) _then;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_LobbyTheme(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<LobbyQuestion>,
    ));
  }
}

// dart format on

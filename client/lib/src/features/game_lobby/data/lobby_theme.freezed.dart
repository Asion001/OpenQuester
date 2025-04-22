// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LobbyTheme {
  String get name => throw _privateConstructorUsedError;
  List<LobbyQuestion> get questions => throw _privateConstructorUsedError;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LobbyThemeCopyWith<LobbyTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyThemeCopyWith<$Res> {
  factory $LobbyThemeCopyWith(
          LobbyTheme value, $Res Function(LobbyTheme) then) =
      _$LobbyThemeCopyWithImpl<$Res, LobbyTheme>;
  @useResult
  $Res call({String name, List<LobbyQuestion> questions});
}

/// @nodoc
class _$LobbyThemeCopyWithImpl<$Res, $Val extends LobbyTheme>
    implements $LobbyThemeCopyWith<$Res> {
  _$LobbyThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<LobbyQuestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LobbyThemeImplCopyWith<$Res>
    implements $LobbyThemeCopyWith<$Res> {
  factory _$$LobbyThemeImplCopyWith(
          _$LobbyThemeImpl value, $Res Function(_$LobbyThemeImpl) then) =
      __$$LobbyThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<LobbyQuestion> questions});
}

/// @nodoc
class __$$LobbyThemeImplCopyWithImpl<$Res>
    extends _$LobbyThemeCopyWithImpl<$Res, _$LobbyThemeImpl>
    implements _$$LobbyThemeImplCopyWith<$Res> {
  __$$LobbyThemeImplCopyWithImpl(
      _$LobbyThemeImpl _value, $Res Function(_$LobbyThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_$LobbyThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<LobbyQuestion>,
    ));
  }
}

/// @nodoc

class _$LobbyThemeImpl implements _LobbyTheme {
  const _$LobbyThemeImpl(
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

  @override
  String toString() {
    return 'LobbyTheme(name: $name, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_questions));

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LobbyThemeImplCopyWith<_$LobbyThemeImpl> get copyWith =>
      __$$LobbyThemeImplCopyWithImpl<_$LobbyThemeImpl>(this, _$identity);
}

abstract class _LobbyTheme implements LobbyTheme {
  const factory _LobbyTheme(
      {required final String name,
      required final List<LobbyQuestion> questions}) = _$LobbyThemeImpl;

  @override
  String get name;
  @override
  List<LobbyQuestion> get questions;

  /// Create a copy of LobbyTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LobbyThemeImplCopyWith<_$LobbyThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

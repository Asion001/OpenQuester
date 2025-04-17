// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LobbyRound {
  String get name => throw _privateConstructorUsedError;
  List<LobbyTheme> get themes => throw _privateConstructorUsedError;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LobbyRoundCopyWith<LobbyRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyRoundCopyWith<$Res> {
  factory $LobbyRoundCopyWith(
          LobbyRound value, $Res Function(LobbyRound) then) =
      _$LobbyRoundCopyWithImpl<$Res, LobbyRound>;
  @useResult
  $Res call({String name, List<LobbyTheme> themes});
}

/// @nodoc
class _$LobbyRoundCopyWithImpl<$Res, $Val extends LobbyRound>
    implements $LobbyRoundCopyWith<$Res> {
  _$LobbyRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<LobbyTheme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LobbyRoundImplCopyWith<$Res>
    implements $LobbyRoundCopyWith<$Res> {
  factory _$$LobbyRoundImplCopyWith(
          _$LobbyRoundImpl value, $Res Function(_$LobbyRoundImpl) then) =
      __$$LobbyRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<LobbyTheme> themes});
}

/// @nodoc
class __$$LobbyRoundImplCopyWithImpl<$Res>
    extends _$LobbyRoundCopyWithImpl<$Res, _$LobbyRoundImpl>
    implements _$$LobbyRoundImplCopyWith<$Res> {
  __$$LobbyRoundImplCopyWithImpl(
      _$LobbyRoundImpl _value, $Res Function(_$LobbyRoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_$LobbyRoundImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<LobbyTheme>,
    ));
  }
}

/// @nodoc

class _$LobbyRoundImpl implements _LobbyRound {
  const _$LobbyRoundImpl(
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

  @override
  String toString() {
    return 'LobbyRound(name: $name, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyRoundImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_themes));

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LobbyRoundImplCopyWith<_$LobbyRoundImpl> get copyWith =>
      __$$LobbyRoundImplCopyWithImpl<_$LobbyRoundImpl>(this, _$identity);
}

abstract class _LobbyRound implements LobbyRound {
  const factory _LobbyRound(
      {required final String name,
      required final List<LobbyTheme> themes}) = _$LobbyRoundImpl;

  @override
  String get name;
  @override
  List<LobbyTheme> get themes;

  /// Create a copy of LobbyRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LobbyRoundImplCopyWith<_$LobbyRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

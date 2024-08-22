// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiqFileRound _$SiqFileRoundFromJson(Map<String, dynamic> json) {
  return _SiqFileRound.fromJson(json);
}

/// @nodoc
mixin _$SiqFileRound {
  String get name => throw _privateConstructorUsedError;
  List<SiqFileTheme> get themes => throw _privateConstructorUsedError;

  /// Serializes this SiqFileRound to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFileRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileRoundCopyWith<SiqFileRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileRoundCopyWith<$Res> {
  factory $SiqFileRoundCopyWith(
          SiqFileRound value, $Res Function(SiqFileRound) then) =
      _$SiqFileRoundCopyWithImpl<$Res, SiqFileRound>;
  @useResult
  $Res call({String name, List<SiqFileTheme> themes});
}

/// @nodoc
class _$SiqFileRoundCopyWithImpl<$Res, $Val extends SiqFileRound>
    implements $SiqFileRoundCopyWith<$Res> {
  _$SiqFileRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFileRound
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
              as List<SiqFileTheme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SiqFileRoundImplCopyWith<$Res>
    implements $SiqFileRoundCopyWith<$Res> {
  factory _$$SiqFileRoundImplCopyWith(
          _$SiqFileRoundImpl value, $Res Function(_$SiqFileRoundImpl) then) =
      __$$SiqFileRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<SiqFileTheme> themes});
}

/// @nodoc
class __$$SiqFileRoundImplCopyWithImpl<$Res>
    extends _$SiqFileRoundCopyWithImpl<$Res, _$SiqFileRoundImpl>
    implements _$$SiqFileRoundImplCopyWith<$Res> {
  __$$SiqFileRoundImplCopyWithImpl(
      _$SiqFileRoundImpl _value, $Res Function(_$SiqFileRoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiqFileRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_$SiqFileRoundImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<SiqFileTheme>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileRoundImpl implements _SiqFileRound {
  _$SiqFileRoundImpl(
      {required this.name, final List<SiqFileTheme> themes = const []})
      : _themes = themes;

  factory _$SiqFileRoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileRoundImplFromJson(json);

  @override
  final String name;
  final List<SiqFileTheme> _themes;
  @override
  @JsonKey()
  List<SiqFileTheme> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  @override
  String toString() {
    return 'SiqFileRound(name: $name, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileRoundImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_themes));

  /// Create a copy of SiqFileRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileRoundImplCopyWith<_$SiqFileRoundImpl> get copyWith =>
      __$$SiqFileRoundImplCopyWithImpl<_$SiqFileRoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileRoundImplToJson(
      this,
    );
  }
}

abstract class _SiqFileRound implements SiqFileRound {
  factory _SiqFileRound(
      {required final String name,
      final List<SiqFileTheme> themes}) = _$SiqFileRoundImpl;

  factory _SiqFileRound.fromJson(Map<String, dynamic> json) =
      _$SiqFileRoundImpl.fromJson;

  @override
  String get name;
  @override
  List<SiqFileTheme> get themes;

  /// Create a copy of SiqFileRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileRoundImplCopyWith<_$SiqFileRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

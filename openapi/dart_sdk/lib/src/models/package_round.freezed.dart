// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageRound _$PackageRoundFromJson(Map<String, dynamic> json) {
  return _PackageRound.fromJson(json);
}

/// @nodoc
mixin _$PackageRound {
  int? get id => throw _privateConstructorUsedError;

  /// Name of the round
  String get name => throw _privateConstructorUsedError;

  /// Description of the round
  String? get description => throw _privateConstructorUsedError;

  /// Themes in the round
  List<PackageTheme> get themes => throw _privateConstructorUsedError;

  /// Serializes this PackageRound to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageRoundCopyWith<PackageRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageRoundCopyWith<$Res> {
  factory $PackageRoundCopyWith(
          PackageRound value, $Res Function(PackageRound) then) =
      _$PackageRoundCopyWithImpl<$Res, PackageRound>;
  @useResult
  $Res call(
      {int? id, String name, String? description, List<PackageTheme> themes});
}

/// @nodoc
class _$PackageRoundCopyWithImpl<$Res, $Val extends PackageRound>
    implements $PackageRoundCopyWith<$Res> {
  _$PackageRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? themes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<PackageTheme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageRoundImplCopyWith<$Res>
    implements $PackageRoundCopyWith<$Res> {
  factory _$$PackageRoundImplCopyWith(
          _$PackageRoundImpl value, $Res Function(_$PackageRoundImpl) then) =
      __$$PackageRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String name, String? description, List<PackageTheme> themes});
}

/// @nodoc
class __$$PackageRoundImplCopyWithImpl<$Res>
    extends _$PackageRoundCopyWithImpl<$Res, _$PackageRoundImpl>
    implements _$$PackageRoundImplCopyWith<$Res> {
  __$$PackageRoundImplCopyWithImpl(
      _$PackageRoundImpl _value, $Res Function(_$PackageRoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageRound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? themes = null,
  }) {
    return _then(_$PackageRoundImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<PackageTheme>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageRoundImpl implements _PackageRound {
  const _$PackageRoundImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<PackageTheme> themes})
      : _themes = themes;

  factory _$PackageRoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageRoundImplFromJson(json);

  @override
  final int? id;

  /// Name of the round
  @override
  final String name;

  /// Description of the round
  @override
  final String? description;

  /// Themes in the round
  final List<PackageTheme> _themes;

  /// Themes in the round
  @override
  List<PackageTheme> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  @override
  String toString() {
    return 'PackageRound(id: $id, name: $name, description: $description, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageRoundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_themes));

  /// Create a copy of PackageRound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageRoundImplCopyWith<_$PackageRoundImpl> get copyWith =>
      __$$PackageRoundImplCopyWithImpl<_$PackageRoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageRoundImplToJson(
      this,
    );
  }
}

abstract class _PackageRound implements PackageRound {
  const factory _PackageRound(
      {required final int? id,
      required final String name,
      required final String? description,
      required final List<PackageTheme> themes}) = _$PackageRoundImpl;

  factory _PackageRound.fromJson(Map<String, dynamic> json) =
      _$PackageRoundImpl.fromJson;

  @override
  int? get id;

  /// Name of the round
  @override
  String get name;

  /// Description of the round
  @override
  String? get description;

  /// Themes in the round
  @override
  List<PackageTheme> get themes;

  /// Create a copy of PackageRound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageRoundImplCopyWith<_$PackageRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

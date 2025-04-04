// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageTheme _$PackageThemeFromJson(Map<String, dynamic> json) {
  return _PackageTheme.fromJson(json);
}

/// @nodoc
mixin _$PackageTheme {
  int? get id => throw _privateConstructorUsedError;

  /// Name of the theme
  String get name => throw _privateConstructorUsedError;

  /// Description of the theme
  String? get description => throw _privateConstructorUsedError;

  /// Questions in the theme
  List<PackageQuestionUnion> get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this PackageTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageThemeCopyWith<PackageTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageThemeCopyWith<$Res> {
  factory $PackageThemeCopyWith(
          PackageTheme value, $Res Function(PackageTheme) then) =
      _$PackageThemeCopyWithImpl<$Res, PackageTheme>;
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      List<PackageQuestionUnion> questions});
}

/// @nodoc
class _$PackageThemeCopyWithImpl<$Res, $Val extends PackageTheme>
    implements $PackageThemeCopyWith<$Res> {
  _$PackageThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
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
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionUnion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageThemeImplCopyWith<$Res>
    implements $PackageThemeCopyWith<$Res> {
  factory _$$PackageThemeImplCopyWith(
          _$PackageThemeImpl value, $Res Function(_$PackageThemeImpl) then) =
      __$$PackageThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String name,
      String? description,
      List<PackageQuestionUnion> questions});
}

/// @nodoc
class __$$PackageThemeImplCopyWithImpl<$Res>
    extends _$PackageThemeCopyWithImpl<$Res, _$PackageThemeImpl>
    implements _$$PackageThemeImplCopyWith<$Res> {
  __$$PackageThemeImplCopyWithImpl(
      _$PackageThemeImpl _value, $Res Function(_$PackageThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
  }) {
    return _then(_$PackageThemeImpl(
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
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionUnion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageThemeImpl implements _PackageTheme {
  const _$PackageThemeImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<PackageQuestionUnion> questions})
      : _questions = questions;

  factory _$PackageThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageThemeImplFromJson(json);

  @override
  final int? id;

  /// Name of the theme
  @override
  final String name;

  /// Description of the theme
  @override
  final String? description;

  /// Questions in the theme
  final List<PackageQuestionUnion> _questions;

  /// Questions in the theme
  @override
  List<PackageQuestionUnion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'PackageTheme(id: $id, name: $name, description: $description, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageThemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageThemeImplCopyWith<_$PackageThemeImpl> get copyWith =>
      __$$PackageThemeImplCopyWithImpl<_$PackageThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageThemeImplToJson(
      this,
    );
  }
}

abstract class _PackageTheme implements PackageTheme {
  const factory _PackageTheme(
          {required final int? id,
          required final String name,
          required final String? description,
          required final List<PackageQuestionUnion> questions}) =
      _$PackageThemeImpl;

  factory _PackageTheme.fromJson(Map<String, dynamic> json) =
      _$PackageThemeImpl.fromJson;

  @override
  int? get id;

  /// Name of the theme
  @override
  String get name;

  /// Description of the theme
  @override
  String? get description;

  /// Questions in the theme
  @override
  List<PackageQuestionUnion> get questions;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageThemeImplCopyWith<_$PackageThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

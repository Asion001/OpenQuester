// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageTheme {
  int? get id;
  PackageEntitiesOrder get order;

  /// Name of the theme
  String get name;

  /// Description of the theme
  String? get description;

  /// Questions in the theme
  List<PackageQuestionUnion> get questions;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageThemeCopyWith<PackageTheme> get copyWith =>
      _$PackageThemeCopyWithImpl<PackageTheme>(
          this as PackageTheme, _$identity);

  /// Serializes this PackageTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageTheme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, name, description,
      const DeepCollectionEquality().hash(questions));

  @override
  String toString() {
    return 'PackageTheme(id: $id, order: $order, name: $name, description: $description, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class $PackageThemeCopyWith<$Res> {
  factory $PackageThemeCopyWith(
          PackageTheme value, $Res Function(PackageTheme) _then) =
      _$PackageThemeCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      String name,
      String? description,
      List<PackageQuestionUnion> questions});
}

/// @nodoc
class _$PackageThemeCopyWithImpl<$Res> implements $PackageThemeCopyWith<$Res> {
  _$PackageThemeCopyWithImpl(this._self, this._then);

  final PackageTheme _self;
  final $Res Function(PackageTheme) _then;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionUnion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PackageTheme implements PackageTheme {
  const _PackageTheme(
      {required this.id,
      required this.order,
      required this.name,
      required this.description,
      required final List<PackageQuestionUnion> questions})
      : _questions = questions;
  factory _PackageTheme.fromJson(Map<String, dynamic> json) =>
      _$PackageThemeFromJson(json);

  @override
  final int? id;
  @override
  final PackageEntitiesOrder order;

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

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageThemeCopyWith<_PackageTheme> get copyWith =>
      __$PackageThemeCopyWithImpl<_PackageTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageTheme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, name, description,
      const DeepCollectionEquality().hash(_questions));

  @override
  String toString() {
    return 'PackageTheme(id: $id, order: $order, name: $name, description: $description, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class _$PackageThemeCopyWith<$Res>
    implements $PackageThemeCopyWith<$Res> {
  factory _$PackageThemeCopyWith(
          _PackageTheme value, $Res Function(_PackageTheme) _then) =
      __$PackageThemeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      String name,
      String? description,
      List<PackageQuestionUnion> questions});
}

/// @nodoc
class __$PackageThemeCopyWithImpl<$Res>
    implements _$PackageThemeCopyWith<$Res> {
  __$PackageThemeCopyWithImpl(this._self, this._then);

  final _PackageTheme _self;
  final $Res Function(_PackageTheme) _then;

  /// Create a copy of PackageTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
  }) {
    return _then(_PackageTheme(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionUnion>,
    ));
  }
}

// dart format on

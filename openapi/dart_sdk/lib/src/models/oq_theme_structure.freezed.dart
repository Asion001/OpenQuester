// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_theme_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQThemeStructure _$OQThemeStructureFromJson(Map<String, dynamic> json) {
  return _OQThemeStructure.fromJson(json);
}

/// @nodoc
mixin _$OQThemeStructure {
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<OQQuestionsStructure> get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this OQThemeStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQThemeStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQThemeStructureCopyWith<OQThemeStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQThemeStructureCopyWith<$Res> {
  factory $OQThemeStructureCopyWith(
          OQThemeStructure value, $Res Function(OQThemeStructure) then) =
      _$OQThemeStructureCopyWithImpl<$Res, OQThemeStructure>;
  @useResult
  $Res call(
      {String name, String comment, List<OQQuestionsStructure> questions});
}

/// @nodoc
class _$OQThemeStructureCopyWithImpl<$Res, $Val extends OQThemeStructure>
    implements $OQThemeStructureCopyWith<$Res> {
  _$OQThemeStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQThemeStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? comment = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<OQQuestionsStructure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OQThemeStructureImplCopyWith<$Res>
    implements $OQThemeStructureCopyWith<$Res> {
  factory _$$OQThemeStructureImplCopyWith(_$OQThemeStructureImpl value,
          $Res Function(_$OQThemeStructureImpl) then) =
      __$$OQThemeStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String comment, List<OQQuestionsStructure> questions});
}

/// @nodoc
class __$$OQThemeStructureImplCopyWithImpl<$Res>
    extends _$OQThemeStructureCopyWithImpl<$Res, _$OQThemeStructureImpl>
    implements _$$OQThemeStructureImplCopyWith<$Res> {
  __$$OQThemeStructureImplCopyWithImpl(_$OQThemeStructureImpl _value,
      $Res Function(_$OQThemeStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQThemeStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? comment = null,
    Object? questions = null,
  }) {
    return _then(_$OQThemeStructureImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<OQQuestionsStructure>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQThemeStructureImpl implements _OQThemeStructure {
  const _$OQThemeStructureImpl(
      {required this.name,
      required this.comment,
      required final List<OQQuestionsStructure> questions})
      : _questions = questions;

  factory _$OQThemeStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQThemeStructureImplFromJson(json);

  @override
  final String name;
  @override
  final String comment;
  final List<OQQuestionsStructure> _questions;
  @override
  List<OQQuestionsStructure> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'OQThemeStructure(name: $name, comment: $comment, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQThemeStructureImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, comment,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of OQThemeStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQThemeStructureImplCopyWith<_$OQThemeStructureImpl> get copyWith =>
      __$$OQThemeStructureImplCopyWithImpl<_$OQThemeStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQThemeStructureImplToJson(
      this,
    );
  }
}

abstract class _OQThemeStructure implements OQThemeStructure {
  const factory _OQThemeStructure(
          {required final String name,
          required final String comment,
          required final List<OQQuestionsStructure> questions}) =
      _$OQThemeStructureImpl;

  factory _OQThemeStructure.fromJson(Map<String, dynamic> json) =
      _$OQThemeStructureImpl.fromJson;

  @override
  String get name;
  @override
  String get comment;
  @override
  List<OQQuestionsStructure> get questions;

  /// Create a copy of OQThemeStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQThemeStructureImplCopyWith<_$OQThemeStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

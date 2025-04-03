// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_metadata_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQMetadataStructure _$OQMetadataStructureFromJson(Map<String, dynamic> json) {
  return _OQMetadataStructure.fromJson(json);
}

/// @nodoc
mixin _$OQMetadataStructure {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  OQMetadataStructureAgeRestriction get ageRestriction =>
      throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get author => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  OQLogoFile? get logo => throw _privateConstructorUsedError;

  /// Serializes this OQMetadataStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQMetadataStructureCopyWith<OQMetadataStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQMetadataStructureCopyWith<$Res> {
  factory $OQMetadataStructureCopyWith(
          OQMetadataStructure value, $Res Function(OQMetadataStructure) then) =
      _$OQMetadataStructureCopyWithImpl<$Res, OQMetadataStructure>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime createdAt,
      OQMetadataStructureAgeRestriction ageRestriction,
      List<String> tags,
      int author,
      String? language,
      String? comment,
      OQLogoFile? logo});

  $OQLogoFileCopyWith<$Res>? get logo;
}

/// @nodoc
class _$OQMetadataStructureCopyWithImpl<$Res, $Val extends OQMetadataStructure>
    implements $OQMetadataStructureCopyWith<$Res> {
  _$OQMetadataStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? tags = null,
    Object? author = null,
    Object? language = freezed,
    Object? comment = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as OQMetadataStructureAgeRestriction,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as OQLogoFile?,
    ) as $Val);
  }

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQLogoFileCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $OQLogoFileCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OQMetadataStructureImplCopyWith<$Res>
    implements $OQMetadataStructureCopyWith<$Res> {
  factory _$$OQMetadataStructureImplCopyWith(_$OQMetadataStructureImpl value,
          $Res Function(_$OQMetadataStructureImpl) then) =
      __$$OQMetadataStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime createdAt,
      OQMetadataStructureAgeRestriction ageRestriction,
      List<String> tags,
      int author,
      String? language,
      String? comment,
      OQLogoFile? logo});

  @override
  $OQLogoFileCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$OQMetadataStructureImplCopyWithImpl<$Res>
    extends _$OQMetadataStructureCopyWithImpl<$Res, _$OQMetadataStructureImpl>
    implements _$$OQMetadataStructureImplCopyWith<$Res> {
  __$$OQMetadataStructureImplCopyWithImpl(_$OQMetadataStructureImpl _value,
      $Res Function(_$OQMetadataStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? tags = null,
    Object? author = null,
    Object? language = freezed,
    Object? comment = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$OQMetadataStructureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as OQMetadataStructureAgeRestriction,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as OQLogoFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQMetadataStructureImpl implements _OQMetadataStructure {
  const _$OQMetadataStructureImpl(
      {required this.id,
      required this.title,
      required this.createdAt,
      required this.ageRestriction,
      required final List<String> tags,
      required this.author,
      required this.language,
      required this.comment,
      this.logo})
      : _tags = tags;

  factory _$OQMetadataStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQMetadataStructureImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final OQMetadataStructureAgeRestriction ageRestriction;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int author;
  @override
  final String? language;
  @override
  final String? comment;
  @override
  final OQLogoFile? logo;

  @override
  String toString() {
    return 'OQMetadataStructure(id: $id, title: $title, createdAt: $createdAt, ageRestriction: $ageRestriction, tags: $tags, author: $author, language: $language, comment: $comment, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQMetadataStructureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      createdAt,
      ageRestriction,
      const DeepCollectionEquality().hash(_tags),
      author,
      language,
      comment,
      logo);

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQMetadataStructureImplCopyWith<_$OQMetadataStructureImpl> get copyWith =>
      __$$OQMetadataStructureImplCopyWithImpl<_$OQMetadataStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQMetadataStructureImplToJson(
      this,
    );
  }
}

abstract class _OQMetadataStructure implements OQMetadataStructure {
  const factory _OQMetadataStructure(
      {required final String id,
      required final String title,
      required final DateTime createdAt,
      required final OQMetadataStructureAgeRestriction ageRestriction,
      required final List<String> tags,
      required final int author,
      required final String? language,
      required final String? comment,
      final OQLogoFile? logo}) = _$OQMetadataStructureImpl;

  factory _OQMetadataStructure.fromJson(Map<String, dynamic> json) =
      _$OQMetadataStructureImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  OQMetadataStructureAgeRestriction get ageRestriction;
  @override
  List<String> get tags;
  @override
  int get author;
  @override
  String? get language;
  @override
  String? get comment;
  @override
  OQLogoFile? get logo;

  /// Create a copy of OQMetadataStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQMetadataStructureImplCopyWith<_$OQMetadataStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

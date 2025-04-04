// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageResponse _$PackageResponseFromJson(Map<String, dynamic> json) {
  return _PackageResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ShortUserInfo get author => throw _privateConstructorUsedError;

  /// Package age restriction
  AgeRestriction get ageRestriction => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  /// Rounds in the package
  List<PackageRound> get rounds => throw _privateConstructorUsedError;

  /// Tags for the package. Can be null or an array of tag objects
  List<PackageTag>? get tags => throw _privateConstructorUsedError;

  /// Logo file for the package
  PackageLogoFileItem? get logo => throw _privateConstructorUsedError;

  /// Serializes this PackageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageResponseCopyWith<PackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageResponseCopyWith<$Res> {
  factory $PackageResponseCopyWith(
          PackageResponse value, $Res Function(PackageResponse) then) =
      _$PackageResponseCopyWithImpl<$Res, PackageResponse>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime createdAt,
      ShortUserInfo author,
      AgeRestriction ageRestriction,
      String? language,
      List<PackageRound> rounds,
      List<PackageTag>? tags,
      PackageLogoFileItem? logo});

  $ShortUserInfoCopyWith<$Res> get author;
  $PackageLogoFileItemCopyWith<$Res>? get logo;
}

/// @nodoc
class _$PackageResponseCopyWithImpl<$Res, $Val extends PackageResponse>
    implements $PackageResponseCopyWith<$Res> {
  _$PackageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? author = null,
    Object? ageRestriction = null,
    Object? language = freezed,
    Object? rounds = null,
    Object? tags = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<PackageRound>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PackageTag>?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as PackageLogoFileItem?,
    ) as $Val);
  }

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<$Res> get author {
    return $ShortUserInfoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageLogoFileItemCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $PackageLogoFileItemCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageResponseImplCopyWith<$Res>
    implements $PackageResponseCopyWith<$Res> {
  factory _$$PackageResponseImplCopyWith(_$PackageResponseImpl value,
          $Res Function(_$PackageResponseImpl) then) =
      __$$PackageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime createdAt,
      ShortUserInfo author,
      AgeRestriction ageRestriction,
      String? language,
      List<PackageRound> rounds,
      List<PackageTag>? tags,
      PackageLogoFileItem? logo});

  @override
  $ShortUserInfoCopyWith<$Res> get author;
  @override
  $PackageLogoFileItemCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$PackageResponseImplCopyWithImpl<$Res>
    extends _$PackageResponseCopyWithImpl<$Res, _$PackageResponseImpl>
    implements _$$PackageResponseImplCopyWith<$Res> {
  __$$PackageResponseImplCopyWithImpl(
      _$PackageResponseImpl _value, $Res Function(_$PackageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? author = null,
    Object? ageRestriction = null,
    Object? language = freezed,
    Object? rounds = null,
    Object? tags = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$PackageResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      rounds: null == rounds
          ? _value._rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<PackageRound>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PackageTag>?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as PackageLogoFileItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageResponseImpl implements _PackageResponse {
  const _$PackageResponseImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.createdAt,
      required this.author,
      required this.ageRestriction,
      required this.language,
      required final List<PackageRound> rounds,
      required final List<PackageTag>? tags,
      this.logo})
      : _rounds = rounds,
        _tags = tags;

  factory _$PackageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final ShortUserInfo author;

  /// Package age restriction
  @override
  final AgeRestriction ageRestriction;
  @override
  final String? language;

  /// Rounds in the package
  final List<PackageRound> _rounds;

  /// Rounds in the package
  @override
  List<PackageRound> get rounds {
    if (_rounds is EqualUnmodifiableListView) return _rounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rounds);
  }

  /// Tags for the package. Can be null or an array of tag objects
  final List<PackageTag>? _tags;

  /// Tags for the package. Can be null or an array of tag objects
  @override
  List<PackageTag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Logo file for the package
  @override
  final PackageLogoFileItem? logo;

  @override
  String toString() {
    return 'PackageResponse(id: $id, title: $title, description: $description, createdAt: $createdAt, author: $author, ageRestriction: $ageRestriction, language: $language, rounds: $rounds, tags: $tags, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._rounds, _rounds) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      createdAt,
      author,
      ageRestriction,
      language,
      const DeepCollectionEquality().hash(_rounds),
      const DeepCollectionEquality().hash(_tags),
      logo);

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageResponseImplCopyWith<_$PackageResponseImpl> get copyWith =>
      __$$PackageResponseImplCopyWithImpl<_$PackageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageResponseImplToJson(
      this,
    );
  }
}

abstract class _PackageResponse implements PackageResponse {
  const factory _PackageResponse(
      {required final int id,
      required final String title,
      required final String? description,
      required final DateTime createdAt,
      required final ShortUserInfo author,
      required final AgeRestriction ageRestriction,
      required final String? language,
      required final List<PackageRound> rounds,
      required final List<PackageTag>? tags,
      final PackageLogoFileItem? logo}) = _$PackageResponseImpl;

  factory _PackageResponse.fromJson(Map<String, dynamic> json) =
      _$PackageResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  ShortUserInfo get author;

  /// Package age restriction
  @override
  AgeRestriction get ageRestriction;
  @override
  String? get language;

  /// Rounds in the package
  @override
  List<PackageRound> get rounds;

  /// Tags for the package. Can be null or an array of tag objects
  @override
  List<PackageTag>? get tags;

  /// Logo file for the package
  @override
  PackageLogoFileItem? get logo;

  /// Create a copy of PackageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageResponseImplCopyWith<_$PackageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

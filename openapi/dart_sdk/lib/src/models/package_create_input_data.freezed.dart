// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_create_input_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageCreateInputData _$PackageCreateInputDataFromJson(
    Map<String, dynamic> json) {
  return _PackageCreateInputData.fromJson(json);
}

/// @nodoc
mixin _$PackageCreateInputData {
  /// Title of the package
  String get title => throw _privateConstructorUsedError;

  /// Description of the package
  String? get description => throw _privateConstructorUsedError;

  /// Language of the package
  String? get language => throw _privateConstructorUsedError;

  /// Age restriction
  AgeRestriction get ageRestriction => throw _privateConstructorUsedError;

  /// Tags for the package. Can be null or an array of tag objects
  List<PackageTag>? get tags => throw _privateConstructorUsedError;

  /// Rounds in the package
  List<PackageRound> get rounds => throw _privateConstructorUsedError;

  /// Logo file for the package
  PackageLogoFileInput? get logo => throw _privateConstructorUsedError;

  /// Serializes this PackageCreateInputData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCreateInputDataCopyWith<PackageCreateInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCreateInputDataCopyWith<$Res> {
  factory $PackageCreateInputDataCopyWith(PackageCreateInputData value,
          $Res Function(PackageCreateInputData) then) =
      _$PackageCreateInputDataCopyWithImpl<$Res, PackageCreateInputData>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String? language,
      AgeRestriction ageRestriction,
      List<PackageTag>? tags,
      List<PackageRound> rounds,
      PackageLogoFileInput? logo});

  $PackageLogoFileInputCopyWith<$Res>? get logo;
}

/// @nodoc
class _$PackageCreateInputDataCopyWithImpl<$Res,
        $Val extends PackageCreateInputData>
    implements $PackageCreateInputDataCopyWith<$Res> {
  _$PackageCreateInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? ageRestriction = null,
    Object? tags = freezed,
    Object? rounds = null,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PackageTag>?,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<PackageRound>,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as PackageLogoFileInput?,
    ) as $Val);
  }

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageLogoFileInputCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $PackageLogoFileInputCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageCreateInputDataImplCopyWith<$Res>
    implements $PackageCreateInputDataCopyWith<$Res> {
  factory _$$PackageCreateInputDataImplCopyWith(
          _$PackageCreateInputDataImpl value,
          $Res Function(_$PackageCreateInputDataImpl) then) =
      __$$PackageCreateInputDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      String? language,
      AgeRestriction ageRestriction,
      List<PackageTag>? tags,
      List<PackageRound> rounds,
      PackageLogoFileInput? logo});

  @override
  $PackageLogoFileInputCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$PackageCreateInputDataImplCopyWithImpl<$Res>
    extends _$PackageCreateInputDataCopyWithImpl<$Res,
        _$PackageCreateInputDataImpl>
    implements _$$PackageCreateInputDataImplCopyWith<$Res> {
  __$$PackageCreateInputDataImplCopyWithImpl(
      _$PackageCreateInputDataImpl _value,
      $Res Function(_$PackageCreateInputDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? language = freezed,
    Object? ageRestriction = null,
    Object? tags = freezed,
    Object? rounds = null,
    Object? logo = freezed,
  }) {
    return _then(_$PackageCreateInputDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<PackageTag>?,
      rounds: null == rounds
          ? _value._rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<PackageRound>,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as PackageLogoFileInput?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageCreateInputDataImpl implements _PackageCreateInputData {
  const _$PackageCreateInputDataImpl(
      {required this.title,
      required this.description,
      required this.language,
      required this.ageRestriction,
      required final List<PackageTag>? tags,
      required final List<PackageRound> rounds,
      this.logo})
      : _tags = tags,
        _rounds = rounds;

  factory _$PackageCreateInputDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageCreateInputDataImplFromJson(json);

  /// Title of the package
  @override
  final String title;

  /// Description of the package
  @override
  final String? description;

  /// Language of the package
  @override
  final String? language;

  /// Age restriction
  @override
  final AgeRestriction ageRestriction;

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

  /// Rounds in the package
  final List<PackageRound> _rounds;

  /// Rounds in the package
  @override
  List<PackageRound> get rounds {
    if (_rounds is EqualUnmodifiableListView) return _rounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rounds);
  }

  /// Logo file for the package
  @override
  final PackageLogoFileInput? logo;

  @override
  String toString() {
    return 'PackageCreateInputData(title: $title, description: $description, language: $language, ageRestriction: $ageRestriction, tags: $tags, rounds: $rounds, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageCreateInputDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._rounds, _rounds) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      language,
      ageRestriction,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_rounds),
      logo);

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageCreateInputDataImplCopyWith<_$PackageCreateInputDataImpl>
      get copyWith => __$$PackageCreateInputDataImplCopyWithImpl<
          _$PackageCreateInputDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageCreateInputDataImplToJson(
      this,
    );
  }
}

abstract class _PackageCreateInputData implements PackageCreateInputData {
  const factory _PackageCreateInputData(
      {required final String title,
      required final String? description,
      required final String? language,
      required final AgeRestriction ageRestriction,
      required final List<PackageTag>? tags,
      required final List<PackageRound> rounds,
      final PackageLogoFileInput? logo}) = _$PackageCreateInputDataImpl;

  factory _PackageCreateInputData.fromJson(Map<String, dynamic> json) =
      _$PackageCreateInputDataImpl.fromJson;

  /// Title of the package
  @override
  String get title;

  /// Description of the package
  @override
  String? get description;

  /// Language of the package
  @override
  String? get language;

  /// Age restriction
  @override
  AgeRestriction get ageRestriction;

  /// Tags for the package. Can be null or an array of tag objects
  @override
  List<PackageTag>? get tags;

  /// Rounds in the package
  @override
  List<PackageRound> get rounds;

  /// Logo file for the package
  @override
  PackageLogoFileInput? get logo;

  /// Create a copy of PackageCreateInputData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageCreateInputDataImplCopyWith<_$PackageCreateInputDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

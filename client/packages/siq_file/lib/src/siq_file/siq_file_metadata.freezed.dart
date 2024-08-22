// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiqFileMetadata _$SiqFileMetadataFromJson(Map<String, dynamic> json) {
  return _SiqFileMetadata.fromJson(json);
}

/// @nodoc
mixin _$SiqFileMetadata {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  FileObject? get logo => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get restriction => throw _privateConstructorUsedError;

  /// Serializes this SiqFileMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileMetadataCopyWith<SiqFileMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileMetadataCopyWith<$Res> {
  factory $SiqFileMetadataCopyWith(
          SiqFileMetadata value, $Res Function(SiqFileMetadata) then) =
      _$SiqFileMetadataCopyWithImpl<$Res, SiqFileMetadata>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      String publisher,
      FileObject? logo,
      List<String> tags,
      List<String> authors,
      String? language,
      String? restriction});

  $FileObjectCopyWith<$Res>? get logo;
}

/// @nodoc
class _$SiqFileMetadataCopyWithImpl<$Res, $Val extends SiqFileMetadata>
    implements $SiqFileMetadataCopyWith<$Res> {
  _$SiqFileMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? publisher = null,
    Object? logo = freezed,
    Object? tags = null,
    Object? authors = null,
    Object? language = freezed,
    Object? restriction = freezed,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as FileObject?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileObjectCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $FileObjectCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiqFileMetadataImplCopyWith<$Res>
    implements $SiqFileMetadataCopyWith<$Res> {
  factory _$$SiqFileMetadataImplCopyWith(_$SiqFileMetadataImpl value,
          $Res Function(_$SiqFileMetadataImpl) then) =
      __$$SiqFileMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      String publisher,
      FileObject? logo,
      List<String> tags,
      List<String> authors,
      String? language,
      String? restriction});

  @override
  $FileObjectCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$SiqFileMetadataImplCopyWithImpl<$Res>
    extends _$SiqFileMetadataCopyWithImpl<$Res, _$SiqFileMetadataImpl>
    implements _$$SiqFileMetadataImplCopyWith<$Res> {
  __$$SiqFileMetadataImplCopyWithImpl(
      _$SiqFileMetadataImpl _value, $Res Function(_$SiqFileMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? publisher = null,
    Object? logo = freezed,
    Object? tags = null,
    Object? authors = null,
    Object? language = freezed,
    Object? restriction = freezed,
  }) {
    return _then(_$SiqFileMetadataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as FileObject?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileMetadataImpl implements _SiqFileMetadata {
  _$SiqFileMetadataImpl(
      {required this.id,
      required this.title,
      required this.date,
      required this.publisher,
      this.logo,
      final List<String> tags = const [],
      final List<String> authors = const [],
      this.language,
      this.restriction})
      : _tags = tags,
        _authors = authors;

  factory _$SiqFileMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileMetadataImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String publisher;
  @override
  final FileObject? logo;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _authors;
  @override
  @JsonKey()
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  final String? language;
  @override
  final String? restriction;

  @override
  String toString() {
    return 'SiqFileMetadata(id: $id, title: $title, date: $date, publisher: $publisher, logo: $logo, tags: $tags, authors: $authors, language: $language, restriction: $restriction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileMetadataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.restriction, restriction) ||
                other.restriction == restriction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      date,
      publisher,
      logo,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_authors),
      language,
      restriction);

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileMetadataImplCopyWith<_$SiqFileMetadataImpl> get copyWith =>
      __$$SiqFileMetadataImplCopyWithImpl<_$SiqFileMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileMetadataImplToJson(
      this,
    );
  }
}

abstract class _SiqFileMetadata implements SiqFileMetadata {
  factory _SiqFileMetadata(
      {required final String id,
      required final String title,
      required final DateTime date,
      required final String publisher,
      final FileObject? logo,
      final List<String> tags,
      final List<String> authors,
      final String? language,
      final String? restriction}) = _$SiqFileMetadataImpl;

  factory _SiqFileMetadata.fromJson(Map<String, dynamic> json) =
      _$SiqFileMetadataImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  String get publisher;
  @override
  FileObject? get logo;
  @override
  List<String> get tags;
  @override
  List<String> get authors;
  @override
  String? get language;
  @override
  String? get restriction;

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileMetadataImplCopyWith<_$SiqFileMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

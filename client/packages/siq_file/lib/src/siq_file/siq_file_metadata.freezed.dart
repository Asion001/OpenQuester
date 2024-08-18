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
  @JsonKey(name: 'name')
  String get title => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @_DateTimeConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logoPath => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'name') String title,
      String version,
      String id,
      @_DateTimeConverter() DateTime date,
      String publisher,
      @JsonKey(name: 'logo') String? logoPath,
      List<String> tags,
      List<String> authors});
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
    Object? title = null,
    Object? version = null,
    Object? id = null,
    Object? date = null,
    Object? publisher = null,
    Object? logoPath = freezed,
    Object? tags = null,
    Object? authors = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
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
      {@JsonKey(name: 'name') String title,
      String version,
      String id,
      @_DateTimeConverter() DateTime date,
      String publisher,
      @JsonKey(name: 'logo') String? logoPath,
      List<String> tags,
      List<String> authors});
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
    Object? title = null,
    Object? version = null,
    Object? id = null,
    Object? date = null,
    Object? publisher = null,
    Object? logoPath = freezed,
    Object? tags = null,
    Object? authors = null,
  }) {
    return _then(_$SiqFileMetadataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileMetadataImpl implements _SiqFileMetadata {
  _$SiqFileMetadataImpl(
      {@JsonKey(name: 'name') required this.title,
      required this.version,
      required this.id,
      @_DateTimeConverter() required this.date,
      required this.publisher,
      @JsonKey(name: 'logo') this.logoPath,
      final List<String> tags = const [],
      final List<String> authors = const []})
      : _tags = tags,
        _authors = authors;

  factory _$SiqFileMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String title;
  @override
  final String version;
  @override
  final String id;
  @override
  @_DateTimeConverter()
  final DateTime date;
  @override
  final String publisher;
  @override
  @JsonKey(name: 'logo')
  final String? logoPath;
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
  String toString() {
    return 'SiqFileMetadata(title: $title, version: $version, id: $id, date: $date, publisher: $publisher, logoPath: $logoPath, tags: $tags, authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      version,
      id,
      date,
      publisher,
      logoPath,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_authors));

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
      {@JsonKey(name: 'name') required final String title,
      required final String version,
      required final String id,
      @_DateTimeConverter() required final DateTime date,
      required final String publisher,
      @JsonKey(name: 'logo') final String? logoPath,
      final List<String> tags,
      final List<String> authors}) = _$SiqFileMetadataImpl;

  factory _SiqFileMetadata.fromJson(Map<String, dynamic> json) =
      _$SiqFileMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get title;
  @override
  String get version;
  @override
  String get id;
  @override
  @_DateTimeConverter()
  DateTime get date;
  @override
  String get publisher;
  @override
  @JsonKey(name: 'logo')
  String? get logoPath;
  @override
  List<String> get tags;
  @override
  List<String> get authors;

  /// Create a copy of SiqFileMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileMetadataImplCopyWith<_$SiqFileMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

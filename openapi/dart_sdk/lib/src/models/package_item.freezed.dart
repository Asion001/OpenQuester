// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageItem _$PackageItemFromJson(Map<String, dynamic> json) {
  return _PackageItem.fromJson(json);
}

/// @nodoc
mixin _$PackageItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  PackageItemAgeRestriction get ageRestriction =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get rounds => throw _privateConstructorUsedError;
  ShortUserInfo get author => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this PackageItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageItemCopyWith<PackageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageItemCopyWith<$Res> {
  factory $PackageItemCopyWith(
          PackageItem value, $Res Function(PackageItem) then) =
      _$PackageItemCopyWithImpl<$Res, PackageItem>;
  @useResult
  $Res call(
      {int id,
      String title,
      PackageItemAgeRestriction ageRestriction,
      DateTime createdAt,
      int rounds,
      ShortUserInfo author,
      List<String> tags});

  $ShortUserInfoCopyWith<$Res> get author;
}

/// @nodoc
class _$PackageItemCopyWithImpl<$Res, $Val extends PackageItem>
    implements $PackageItemCopyWith<$Res> {
  _$PackageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ageRestriction = null,
    Object? createdAt = null,
    Object? rounds = null,
    Object? author = null,
    Object? tags = null,
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
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as PackageItemAgeRestriction,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<$Res> get author {
    return $ShortUserInfoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageItemImplCopyWith<$Res>
    implements $PackageItemCopyWith<$Res> {
  factory _$$PackageItemImplCopyWith(
          _$PackageItemImpl value, $Res Function(_$PackageItemImpl) then) =
      __$$PackageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      PackageItemAgeRestriction ageRestriction,
      DateTime createdAt,
      int rounds,
      ShortUserInfo author,
      List<String> tags});

  @override
  $ShortUserInfoCopyWith<$Res> get author;
}

/// @nodoc
class __$$PackageItemImplCopyWithImpl<$Res>
    extends _$PackageItemCopyWithImpl<$Res, _$PackageItemImpl>
    implements _$$PackageItemImplCopyWith<$Res> {
  __$$PackageItemImplCopyWithImpl(
      _$PackageItemImpl _value, $Res Function(_$PackageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ageRestriction = null,
    Object? createdAt = null,
    Object? rounds = null,
    Object? author = null,
    Object? tags = null,
  }) {
    return _then(_$PackageItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as PackageItemAgeRestriction,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageItemImpl implements _PackageItem {
  const _$PackageItemImpl(
      {required this.id,
      required this.title,
      required this.ageRestriction,
      required this.createdAt,
      required this.rounds,
      required this.author,
      required final List<String> tags})
      : _tags = tags;

  factory _$PackageItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final PackageItemAgeRestriction ageRestriction;
  @override
  final DateTime createdAt;
  @override
  final int rounds;
  @override
  final ShortUserInfo author;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'PackageItem(id: $id, title: $title, ageRestriction: $ageRestriction, createdAt: $createdAt, rounds: $rounds, author: $author, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.rounds, rounds) || other.rounds == rounds) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, ageRestriction,
      createdAt, rounds, author, const DeepCollectionEquality().hash(_tags));

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageItemImplCopyWith<_$PackageItemImpl> get copyWith =>
      __$$PackageItemImplCopyWithImpl<_$PackageItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageItemImplToJson(
      this,
    );
  }
}

abstract class _PackageItem implements PackageItem {
  const factory _PackageItem(
      {required final int id,
      required final String title,
      required final PackageItemAgeRestriction ageRestriction,
      required final DateTime createdAt,
      required final int rounds,
      required final ShortUserInfo author,
      required final List<String> tags}) = _$PackageItemImpl;

  factory _PackageItem.fromJson(Map<String, dynamic> json) =
      _$PackageItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  PackageItemAgeRestriction get ageRestriction;
  @override
  DateTime get createdAt;
  @override
  int get rounds;
  @override
  ShortUserInfo get author;
  @override
  List<String> get tags;

  /// Create a copy of PackageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageItemImplCopyWith<_$PackageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

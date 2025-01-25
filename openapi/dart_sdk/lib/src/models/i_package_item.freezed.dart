// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_package_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IPackageItem _$IPackageItemFromJson(Map<String, dynamic> json) {
  return _IPackageItem.fromJson(json);
}

/// @nodoc
mixin _$IPackageItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  IPackageItemAgeRestriction get ageRestriction =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get rounds => throw _privateConstructorUsedError;
  IShortUserInfo get author => throw _privateConstructorUsedError;

  /// Serializes this IPackageItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IPackageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IPackageItemCopyWith<IPackageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPackageItemCopyWith<$Res> {
  factory $IPackageItemCopyWith(
          IPackageItem value, $Res Function(IPackageItem) then) =
      _$IPackageItemCopyWithImpl<$Res, IPackageItem>;
  @useResult
  $Res call(
      {int id,
      String title,
      IPackageItemAgeRestriction ageRestriction,
      DateTime createdAt,
      int rounds,
      IShortUserInfo author});

  $IShortUserInfoCopyWith<$Res> get author;
}

/// @nodoc
class _$IPackageItemCopyWithImpl<$Res, $Val extends IPackageItem>
    implements $IPackageItemCopyWith<$Res> {
  _$IPackageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IPackageItem
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
              as IPackageItemAgeRestriction,
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
              as IShortUserInfo,
    ) as $Val);
  }

  /// Create a copy of IPackageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IShortUserInfoCopyWith<$Res> get author {
    return $IShortUserInfoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IPackageItemImplCopyWith<$Res>
    implements $IPackageItemCopyWith<$Res> {
  factory _$$IPackageItemImplCopyWith(
          _$IPackageItemImpl value, $Res Function(_$IPackageItemImpl) then) =
      __$$IPackageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      IPackageItemAgeRestriction ageRestriction,
      DateTime createdAt,
      int rounds,
      IShortUserInfo author});

  @override
  $IShortUserInfoCopyWith<$Res> get author;
}

/// @nodoc
class __$$IPackageItemImplCopyWithImpl<$Res>
    extends _$IPackageItemCopyWithImpl<$Res, _$IPackageItemImpl>
    implements _$$IPackageItemImplCopyWith<$Res> {
  __$$IPackageItemImplCopyWithImpl(
      _$IPackageItemImpl _value, $Res Function(_$IPackageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of IPackageItem
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
  }) {
    return _then(_$IPackageItemImpl(
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
              as IPackageItemAgeRestriction,
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
              as IShortUserInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IPackageItemImpl implements _IPackageItem {
  const _$IPackageItemImpl(
      {required this.id,
      required this.title,
      required this.ageRestriction,
      required this.createdAt,
      required this.rounds,
      required this.author});

  factory _$IPackageItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$IPackageItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final IPackageItemAgeRestriction ageRestriction;
  @override
  final DateTime createdAt;
  @override
  final int rounds;
  @override
  final IShortUserInfo author;

  @override
  String toString() {
    return 'IPackageItem(id: $id, title: $title, ageRestriction: $ageRestriction, createdAt: $createdAt, rounds: $rounds, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IPackageItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.rounds, rounds) || other.rounds == rounds) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, ageRestriction, createdAt, rounds, author);

  /// Create a copy of IPackageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IPackageItemImplCopyWith<_$IPackageItemImpl> get copyWith =>
      __$$IPackageItemImplCopyWithImpl<_$IPackageItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IPackageItemImplToJson(
      this,
    );
  }
}

abstract class _IPackageItem implements IPackageItem {
  const factory _IPackageItem(
      {required final int id,
      required final String title,
      required final IPackageItemAgeRestriction ageRestriction,
      required final DateTime createdAt,
      required final int rounds,
      required final IShortUserInfo author}) = _$IPackageItemImpl;

  factory _IPackageItem.fromJson(Map<String, dynamic> json) =
      _$IPackageItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  IPackageItemAgeRestriction get ageRestriction;
  @override
  DateTime get createdAt;
  @override
  int get rounds;
  @override
  IShortUserInfo get author;

  /// Create a copy of IPackageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IPackageItemImplCopyWith<_$IPackageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

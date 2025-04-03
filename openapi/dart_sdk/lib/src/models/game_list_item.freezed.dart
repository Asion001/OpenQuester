// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameListItem _$GameListItemFromJson(Map<String, dynamic> json) {
  return _GameListItem.fromJson(json);
}

/// @nodoc
mixin _$GameListItem {
  String get id => throw _privateConstructorUsedError;
  ShortUserInfo get createdBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  AgeRestriction get ageRestriction => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  int get currentRound => throw _privateConstructorUsedError;
  int get players => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  PackageItem get package => throw _privateConstructorUsedError;

  /// Serializes this GameListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameListItemCopyWith<GameListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListItemCopyWith<$Res> {
  factory $GameListItemCopyWith(
          GameListItem value, $Res Function(GameListItem) then) =
      _$GameListItemCopyWithImpl<$Res, GameListItem>;
  @useResult
  $Res call(
      {String id,
      ShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      AgeRestriction ageRestriction,
      bool isPrivate,
      int currentRound,
      int players,
      int maxPlayers,
      DateTime? startedAt,
      PackageItem package});

  $ShortUserInfoCopyWith<$Res> get createdBy;
  $PackageItemCopyWith<$Res> get package;
}

/// @nodoc
class _$GameListItemCopyWithImpl<$Res, $Val extends GameListItem>
    implements $GameListItemCopyWith<$Res> {
  _$GameListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? isPrivate = null,
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = freezed,
    Object? package = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
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
              as AgeRestriction,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem,
    ) as $Val);
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<$Res> get createdBy {
    return $ShortUserInfoCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageItemCopyWith<$Res> get package {
    return $PackageItemCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameListItemImplCopyWith<$Res>
    implements $GameListItemCopyWith<$Res> {
  factory _$$GameListItemImplCopyWith(
          _$GameListItemImpl value, $Res Function(_$GameListItemImpl) then) =
      __$$GameListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      AgeRestriction ageRestriction,
      bool isPrivate,
      int currentRound,
      int players,
      int maxPlayers,
      DateTime? startedAt,
      PackageItem package});

  @override
  $ShortUserInfoCopyWith<$Res> get createdBy;
  @override
  $PackageItemCopyWith<$Res> get package;
}

/// @nodoc
class __$$GameListItemImplCopyWithImpl<$Res>
    extends _$GameListItemCopyWithImpl<$Res, _$GameListItemImpl>
    implements _$$GameListItemImplCopyWith<$Res> {
  __$$GameListItemImplCopyWithImpl(
      _$GameListItemImpl _value, $Res Function(_$GameListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? isPrivate = null,
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = freezed,
    Object? package = null,
  }) {
    return _then(_$GameListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
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
              as AgeRestriction,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameListItemImpl implements _GameListItem {
  const _$GameListItemImpl(
      {required this.id,
      required this.createdBy,
      required this.title,
      required this.createdAt,
      required this.ageRestriction,
      required this.isPrivate,
      required this.currentRound,
      required this.players,
      required this.maxPlayers,
      required this.startedAt,
      required this.package});

  factory _$GameListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameListItemImplFromJson(json);

  @override
  final String id;
  @override
  final ShortUserInfo createdBy;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final AgeRestriction ageRestriction;
  @override
  final bool isPrivate;
  @override
  final int currentRound;
  @override
  final int players;
  @override
  final int maxPlayers;
  @override
  final DateTime? startedAt;
  @override
  final PackageItem package;

  @override
  String toString() {
    return 'GameListItem(id: $id, createdBy: $createdBy, title: $title, createdAt: $createdAt, ageRestriction: $ageRestriction, isPrivate: $isPrivate, currentRound: $currentRound, players: $players, maxPlayers: $maxPlayers, startedAt: $startedAt, package: $package)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdBy,
      title,
      createdAt,
      ageRestriction,
      isPrivate,
      currentRound,
      players,
      maxPlayers,
      startedAt,
      package);

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameListItemImplCopyWith<_$GameListItemImpl> get copyWith =>
      __$$GameListItemImplCopyWithImpl<_$GameListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameListItemImplToJson(
      this,
    );
  }
}

abstract class _GameListItem implements GameListItem {
  const factory _GameListItem(
      {required final String id,
      required final ShortUserInfo createdBy,
      required final String title,
      required final DateTime createdAt,
      required final AgeRestriction ageRestriction,
      required final bool isPrivate,
      required final int currentRound,
      required final int players,
      required final int maxPlayers,
      required final DateTime? startedAt,
      required final PackageItem package}) = _$GameListItemImpl;

  factory _GameListItem.fromJson(Map<String, dynamic> json) =
      _$GameListItemImpl.fromJson;

  @override
  String get id;
  @override
  ShortUserInfo get createdBy;
  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  AgeRestriction get ageRestriction;
  @override
  bool get isPrivate;
  @override
  int get currentRound;
  @override
  int get players;
  @override
  int get maxPlayers;
  @override
  DateTime? get startedAt;
  @override
  PackageItem get package;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameListItemImplCopyWith<_$GameListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

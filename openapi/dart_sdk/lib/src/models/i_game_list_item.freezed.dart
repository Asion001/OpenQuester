// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_game_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IGameListItem _$IGameListItemFromJson(Map<String, dynamic> json) {
  return _IGameListItem.fromJson(json);
}

/// @nodoc
mixin _$IGameListItem {
  String get id => throw _privateConstructorUsedError;
  IShortUserInfo get createdBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  IGameListItemAgeRestriction get ageRestriction =>
      throw _privateConstructorUsedError;
  int get currentRound => throw _privateConstructorUsedError;
  int get players => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;
  IPackageItem get package => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;

  /// Serializes this IGameListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IGameListItemCopyWith<IGameListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGameListItemCopyWith<$Res> {
  factory $IGameListItemCopyWith(
          IGameListItem value, $Res Function(IGameListItem) then) =
      _$IGameListItemCopyWithImpl<$Res, IGameListItem>;
  @useResult
  $Res call(
      {String id,
      IShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      IGameListItemAgeRestriction ageRestriction,
      int currentRound,
      int players,
      int maxPlayers,
      IPackageItem package,
      DateTime? startedAt});

  $IShortUserInfoCopyWith<$Res> get createdBy;
  $IPackageItemCopyWith<$Res> get package;
}

/// @nodoc
class _$IGameListItemCopyWithImpl<$Res, $Val extends IGameListItem>
    implements $IGameListItemCopyWith<$Res> {
  _$IGameListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? package = null,
    Object? startedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as IShortUserInfo,
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
              as IGameListItemAgeRestriction,
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as IPackageItem,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IShortUserInfoCopyWith<$Res> get createdBy {
    return $IShortUserInfoCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IPackageItemCopyWith<$Res> get package {
    return $IPackageItemCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IGameListItemImplCopyWith<$Res>
    implements $IGameListItemCopyWith<$Res> {
  factory _$$IGameListItemImplCopyWith(
          _$IGameListItemImpl value, $Res Function(_$IGameListItemImpl) then) =
      __$$IGameListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      IShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      IGameListItemAgeRestriction ageRestriction,
      int currentRound,
      int players,
      int maxPlayers,
      IPackageItem package,
      DateTime? startedAt});

  @override
  $IShortUserInfoCopyWith<$Res> get createdBy;
  @override
  $IPackageItemCopyWith<$Res> get package;
}

/// @nodoc
class __$$IGameListItemImplCopyWithImpl<$Res>
    extends _$IGameListItemCopyWithImpl<$Res, _$IGameListItemImpl>
    implements _$$IGameListItemImplCopyWith<$Res> {
  __$$IGameListItemImplCopyWithImpl(
      _$IGameListItemImpl _value, $Res Function(_$IGameListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? package = null,
    Object? startedAt = freezed,
  }) {
    return _then(_$IGameListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as IShortUserInfo,
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
              as IGameListItemAgeRestriction,
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as IPackageItem,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IGameListItemImpl implements _IGameListItem {
  const _$IGameListItemImpl(
      {required this.id,
      required this.createdBy,
      required this.title,
      required this.createdAt,
      required this.ageRestriction,
      required this.currentRound,
      required this.players,
      required this.maxPlayers,
      required this.package,
      this.startedAt});

  factory _$IGameListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$IGameListItemImplFromJson(json);

  @override
  final String id;
  @override
  final IShortUserInfo createdBy;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final IGameListItemAgeRestriction ageRestriction;
  @override
  final int currentRound;
  @override
  final int players;
  @override
  final int maxPlayers;
  @override
  final IPackageItem package;
  @override
  final DateTime? startedAt;

  @override
  String toString() {
    return 'IGameListItem(id: $id, createdBy: $createdBy, title: $title, createdAt: $createdAt, ageRestriction: $ageRestriction, currentRound: $currentRound, players: $players, maxPlayers: $maxPlayers, package: $package, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IGameListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdBy, title, createdAt,
      ageRestriction, currentRound, players, maxPlayers, package, startedAt);

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IGameListItemImplCopyWith<_$IGameListItemImpl> get copyWith =>
      __$$IGameListItemImplCopyWithImpl<_$IGameListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IGameListItemImplToJson(
      this,
    );
  }
}

abstract class _IGameListItem implements IGameListItem {
  const factory _IGameListItem(
      {required final String id,
      required final IShortUserInfo createdBy,
      required final String title,
      required final DateTime createdAt,
      required final IGameListItemAgeRestriction ageRestriction,
      required final int currentRound,
      required final int players,
      required final int maxPlayers,
      required final IPackageItem package,
      final DateTime? startedAt}) = _$IGameListItemImpl;

  factory _IGameListItem.fromJson(Map<String, dynamic> json) =
      _$IGameListItemImpl.fromJson;

  @override
  String get id;
  @override
  IShortUserInfo get createdBy;
  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  IGameListItemAgeRestriction get ageRestriction;
  @override
  int get currentRound;
  @override
  int get players;
  @override
  int get maxPlayers;
  @override
  IPackageItem get package;
  @override
  DateTime? get startedAt;

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IGameListItemImplCopyWith<_$IGameListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

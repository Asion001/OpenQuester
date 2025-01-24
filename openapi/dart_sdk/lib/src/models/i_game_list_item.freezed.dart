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
  int get createdBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get currentRound => throw _privateConstructorUsedError;
  int get players => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  IPackageItem get package => throw _privateConstructorUsedError;

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
      int createdBy,
      String title,
      DateTime createdAt,
      int currentRound,
      int players,
      int maxPlayers,
      DateTime startedAt,
      IPackageItem package});

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
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = null,
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
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as IPackageItem,
    ) as $Val);
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
      int createdBy,
      String title,
      DateTime createdAt,
      int currentRound,
      int players,
      int maxPlayers,
      DateTime startedAt,
      IPackageItem package});

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
    Object? currentRound = null,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = null,
    Object? package = null,
  }) {
    return _then(_$IGameListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as IPackageItem,
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
      required this.currentRound,
      required this.players,
      required this.maxPlayers,
      required this.startedAt,
      required this.package});

  factory _$IGameListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$IGameListItemImplFromJson(json);

  @override
  final String id;
  @override
  final int createdBy;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final int currentRound;
  @override
  final int players;
  @override
  final int maxPlayers;
  @override
  final DateTime startedAt;
  @override
  final IPackageItem package;

  @override
  String toString() {
    return 'IGameListItem(id: $id, createdBy: $createdBy, title: $title, createdAt: $createdAt, currentRound: $currentRound, players: $players, maxPlayers: $maxPlayers, startedAt: $startedAt, package: $package)';
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
  int get hashCode => Object.hash(runtimeType, id, createdBy, title, createdAt,
      currentRound, players, maxPlayers, startedAt, package);

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
      required final int createdBy,
      required final String title,
      required final DateTime createdAt,
      required final int currentRound,
      required final int players,
      required final int maxPlayers,
      required final DateTime startedAt,
      required final IPackageItem package}) = _$IGameListItemImpl;

  factory _IGameListItem.fromJson(Map<String, dynamic> json) =
      _$IGameListItemImpl.fromJson;

  @override
  String get id;
  @override
  int get createdBy;
  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  int get currentRound;
  @override
  int get players;
  @override
  int get maxPlayers;
  @override
  DateTime get startedAt;
  @override
  IPackageItem get package;

  /// Create a copy of IGameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IGameListItemImplCopyWith<_$IGameListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

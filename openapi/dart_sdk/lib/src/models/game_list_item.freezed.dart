// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameListItem {
  String get id;
  ShortUserInfo get createdBy;
  String get title;
  DateTime get createdAt;
  AgeRestriction get ageRestriction;
  bool get isPrivate;
  int? get currentRound;
  int? get currentQuestion;
  int get players;
  int get maxPlayers;
  DateTime? get startedAt;
  DateTime? get finishedAt;
  PackageItem get package;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<GameListItem> get copyWith =>
      _$GameListItemCopyWithImpl<GameListItem>(
          this as GameListItem, _$identity);

  /// Serializes this GameListItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameListItem &&
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
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
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
      currentQuestion,
      players,
      maxPlayers,
      startedAt,
      finishedAt,
      package);

  @override
  String toString() {
    return 'GameListItem(id: $id, createdBy: $createdBy, title: $title, createdAt: $createdAt, ageRestriction: $ageRestriction, isPrivate: $isPrivate, currentRound: $currentRound, currentQuestion: $currentQuestion, players: $players, maxPlayers: $maxPlayers, startedAt: $startedAt, finishedAt: $finishedAt, package: $package)';
  }
}

/// @nodoc
abstract mixin class $GameListItemCopyWith<$Res> {
  factory $GameListItemCopyWith(
          GameListItem value, $Res Function(GameListItem) _then) =
      _$GameListItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      ShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      AgeRestriction ageRestriction,
      bool isPrivate,
      int? currentRound,
      int? currentQuestion,
      int players,
      int maxPlayers,
      DateTime? startedAt,
      DateTime? finishedAt,
      PackageItem package});

  $ShortUserInfoCopyWith<$Res> get createdBy;
  $PackageItemCopyWith<$Res> get package;
}

/// @nodoc
class _$GameListItemCopyWithImpl<$Res> implements $GameListItemCopyWith<$Res> {
  _$GameListItemCopyWithImpl(this._self, this._then);

  final GameListItem _self;
  final $Res Function(GameListItem) _then;

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
    Object? currentRound = freezed,
    Object? currentQuestion = freezed,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? package = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageRestriction: null == ageRestriction
          ? _self.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: freezed == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int?,
      currentQuestion: freezed == currentQuestion
          ? _self.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      players: null == players
          ? _self.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
      maxPlayers: null == maxPlayers
          ? _self.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _self.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      package: null == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem,
    ));
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<$Res> get createdBy {
    return $ShortUserInfoCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageItemCopyWith<$Res> get package {
    return $PackageItemCopyWith<$Res>(_self.package, (value) {
      return _then(_self.copyWith(package: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GameListItem implements GameListItem {
  const _GameListItem(
      {required this.id,
      required this.createdBy,
      required this.title,
      required this.createdAt,
      required this.ageRestriction,
      required this.isPrivate,
      required this.currentRound,
      required this.currentQuestion,
      required this.players,
      required this.maxPlayers,
      required this.startedAt,
      required this.finishedAt,
      required this.package});
  factory _GameListItem.fromJson(Map<String, dynamic> json) =>
      _$GameListItemFromJson(json);

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
  final int? currentRound;
  @override
  final int? currentQuestion;
  @override
  final int players;
  @override
  final int maxPlayers;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final PackageItem package;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameListItemCopyWith<_GameListItem> get copyWith =>
      __$GameListItemCopyWithImpl<_GameListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameListItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameListItem &&
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
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
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
      currentQuestion,
      players,
      maxPlayers,
      startedAt,
      finishedAt,
      package);

  @override
  String toString() {
    return 'GameListItem(id: $id, createdBy: $createdBy, title: $title, createdAt: $createdAt, ageRestriction: $ageRestriction, isPrivate: $isPrivate, currentRound: $currentRound, currentQuestion: $currentQuestion, players: $players, maxPlayers: $maxPlayers, startedAt: $startedAt, finishedAt: $finishedAt, package: $package)';
  }
}

/// @nodoc
abstract mixin class _$GameListItemCopyWith<$Res>
    implements $GameListItemCopyWith<$Res> {
  factory _$GameListItemCopyWith(
          _GameListItem value, $Res Function(_GameListItem) _then) =
      __$GameListItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      ShortUserInfo createdBy,
      String title,
      DateTime createdAt,
      AgeRestriction ageRestriction,
      bool isPrivate,
      int? currentRound,
      int? currentQuestion,
      int players,
      int maxPlayers,
      DateTime? startedAt,
      DateTime? finishedAt,
      PackageItem package});

  @override
  $ShortUserInfoCopyWith<$Res> get createdBy;
  @override
  $PackageItemCopyWith<$Res> get package;
}

/// @nodoc
class __$GameListItemCopyWithImpl<$Res>
    implements _$GameListItemCopyWith<$Res> {
  __$GameListItemCopyWithImpl(this._self, this._then);

  final _GameListItem _self;
  final $Res Function(_GameListItem) _then;

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? title = null,
    Object? createdAt = null,
    Object? ageRestriction = null,
    Object? isPrivate = null,
    Object? currentRound = freezed,
    Object? currentQuestion = freezed,
    Object? players = null,
    Object? maxPlayers = null,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? package = null,
  }) {
    return _then(_GameListItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ShortUserInfo,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ageRestriction: null == ageRestriction
          ? _self.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: freezed == currentRound
          ? _self.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as int?,
      currentQuestion: freezed == currentQuestion
          ? _self.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int?,
      players: null == players
          ? _self.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
      maxPlayers: null == maxPlayers
          ? _self.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _self.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      package: null == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem,
    ));
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<$Res> get createdBy {
    return $ShortUserInfoCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }

  /// Create a copy of GameListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageItemCopyWith<$Res> get package {
    return $PackageItemCopyWith<$Res>(_self.package, (value) {
      return _then(_self.copyWith(package: value));
    });
  }
}

// dart format on

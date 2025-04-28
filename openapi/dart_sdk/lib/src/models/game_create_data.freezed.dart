// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_create_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameCreateData {
  String get title;
  int get packageId;
  bool get isPrivate;
  AgeRestriction get ageRestriction;
  int get maxPlayers;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameCreateDataCopyWith<GameCreateData> get copyWith =>
      _$GameCreateDataCopyWithImpl<GameCreateData>(
          this as GameCreateData, _$identity);

  /// Serializes this GameCreateData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameCreateData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, packageId, isPrivate, ageRestriction, maxPlayers);

  @override
  String toString() {
    return 'GameCreateData(title: $title, packageId: $packageId, isPrivate: $isPrivate, ageRestriction: $ageRestriction, maxPlayers: $maxPlayers)';
  }
}

/// @nodoc
abstract mixin class $GameCreateDataCopyWith<$Res> {
  factory $GameCreateDataCopyWith(
          GameCreateData value, $Res Function(GameCreateData) _then) =
      _$GameCreateDataCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      AgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class _$GameCreateDataCopyWithImpl<$Res>
    implements $GameCreateDataCopyWith<$Res> {
  _$GameCreateDataCopyWithImpl(this._self, this._then);

  final GameCreateData _self;
  final $Res Function(GameCreateData) _then;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? packageId = null,
    Object? isPrivate = null,
    Object? ageRestriction = null,
    Object? maxPlayers = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      ageRestriction: null == ageRestriction
          ? _self.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      maxPlayers: null == maxPlayers
          ? _self.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GameCreateData implements GameCreateData {
  const _GameCreateData(
      {required this.title,
      required this.packageId,
      required this.isPrivate,
      required this.ageRestriction,
      required this.maxPlayers});
  factory _GameCreateData.fromJson(Map<String, dynamic> json) =>
      _$GameCreateDataFromJson(json);

  @override
  final String title;
  @override
  final int packageId;
  @override
  final bool isPrivate;
  @override
  final AgeRestriction ageRestriction;
  @override
  final int maxPlayers;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameCreateDataCopyWith<_GameCreateData> get copyWith =>
      __$GameCreateDataCopyWithImpl<_GameCreateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameCreateDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameCreateData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, packageId, isPrivate, ageRestriction, maxPlayers);

  @override
  String toString() {
    return 'GameCreateData(title: $title, packageId: $packageId, isPrivate: $isPrivate, ageRestriction: $ageRestriction, maxPlayers: $maxPlayers)';
  }
}

/// @nodoc
abstract mixin class _$GameCreateDataCopyWith<$Res>
    implements $GameCreateDataCopyWith<$Res> {
  factory _$GameCreateDataCopyWith(
          _GameCreateData value, $Res Function(_GameCreateData) _then) =
      __$GameCreateDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      AgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class __$GameCreateDataCopyWithImpl<$Res>
    implements _$GameCreateDataCopyWith<$Res> {
  __$GameCreateDataCopyWithImpl(this._self, this._then);

  final _GameCreateData _self;
  final $Res Function(_GameCreateData) _then;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? packageId = null,
    Object? isPrivate = null,
    Object? ageRestriction = null,
    Object? maxPlayers = null,
  }) {
    return _then(_GameCreateData(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      ageRestriction: null == ageRestriction
          ? _self.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      maxPlayers: null == maxPlayers
          ? _self.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

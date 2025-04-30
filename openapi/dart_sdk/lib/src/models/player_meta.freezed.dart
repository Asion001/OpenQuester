// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerMeta {
  int get id;
  String get username;
  String? get avatar;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlayerMetaCopyWith<PlayerMeta> get copyWith =>
      _$PlayerMetaCopyWithImpl<PlayerMeta>(this as PlayerMeta, _$identity);

  /// Serializes this PlayerMeta to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlayerMeta &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar);

  @override
  String toString() {
    return 'PlayerMeta(id: $id, username: $username, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class $PlayerMetaCopyWith<$Res> {
  factory $PlayerMetaCopyWith(
          PlayerMeta value, $Res Function(PlayerMeta) _then) =
      _$PlayerMetaCopyWithImpl;
  @useResult
  $Res call({int id, String username, String? avatar});
}

/// @nodoc
class _$PlayerMetaCopyWithImpl<$Res> implements $PlayerMetaCopyWith<$Res> {
  _$PlayerMetaCopyWithImpl(this._self, this._then);

  final PlayerMeta _self;
  final $Res Function(PlayerMeta) _then;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlayerMeta implements PlayerMeta {
  const _PlayerMeta(
      {required this.id, required this.username, required this.avatar});
  factory _PlayerMeta.fromJson(Map<String, dynamic> json) =>
      _$PlayerMetaFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? avatar;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlayerMetaCopyWith<_PlayerMeta> get copyWith =>
      __$PlayerMetaCopyWithImpl<_PlayerMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlayerMetaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerMeta &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar);

  @override
  String toString() {
    return 'PlayerMeta(id: $id, username: $username, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class _$PlayerMetaCopyWith<$Res>
    implements $PlayerMetaCopyWith<$Res> {
  factory _$PlayerMetaCopyWith(
          _PlayerMeta value, $Res Function(_PlayerMeta) _then) =
      __$PlayerMetaCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String username, String? avatar});
}

/// @nodoc
class __$PlayerMetaCopyWithImpl<$Res> implements _$PlayerMetaCopyWith<$Res> {
  __$PlayerMetaCopyWithImpl(this._self, this._then);

  final _PlayerMeta _self;
  final $Res Function(_PlayerMeta) _then;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_PlayerMeta(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

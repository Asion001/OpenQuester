// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShortUserInfo {
  int get id;
  String get username;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShortUserInfoCopyWith<ShortUserInfo> get copyWith =>
      _$ShortUserInfoCopyWithImpl<ShortUserInfo>(
          this as ShortUserInfo, _$identity);

  /// Serializes this ShortUserInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortUserInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @override
  String toString() {
    return 'ShortUserInfo(id: $id, username: $username)';
  }
}

/// @nodoc
abstract mixin class $ShortUserInfoCopyWith<$Res> {
  factory $ShortUserInfoCopyWith(
          ShortUserInfo value, $Res Function(ShortUserInfo) _then) =
      _$ShortUserInfoCopyWithImpl;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class _$ShortUserInfoCopyWithImpl<$Res>
    implements $ShortUserInfoCopyWith<$Res> {
  _$ShortUserInfoCopyWithImpl(this._self, this._then);

  final ShortUserInfo _self;
  final $Res Function(ShortUserInfo) _then;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ShortUserInfo implements ShortUserInfo {
  const _ShortUserInfo({required this.id, required this.username});
  factory _ShortUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ShortUserInfoFromJson(json);

  @override
  final int id;
  @override
  final String username;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShortUserInfoCopyWith<_ShortUserInfo> get copyWith =>
      __$ShortUserInfoCopyWithImpl<_ShortUserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShortUserInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortUserInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @override
  String toString() {
    return 'ShortUserInfo(id: $id, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$ShortUserInfoCopyWith<$Res>
    implements $ShortUserInfoCopyWith<$Res> {
  factory _$ShortUserInfoCopyWith(
          _ShortUserInfo value, $Res Function(_ShortUserInfo) _then) =
      __$ShortUserInfoCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$ShortUserInfoCopyWithImpl<$Res>
    implements _$ShortUserInfoCopyWith<$Res> {
  __$ShortUserInfoCopyWithImpl(this._self, this._then);

  final _ShortUserInfo _self;
  final $Res Function(_ShortUserInfo) _then;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_ShortUserInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseUser {
  int get id;
  String get username;
  String? get email;
  String? get discordId;
  DateTime? get birthday;

  /// link on file GET
  String? get avatar;
  DateTime get createdAt;
  DateTime get updatedAt;
  bool get isDeleted;
  List<Permissions> get permissions;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseUserCopyWith<ResponseUser> get copyWith =>
      _$ResponseUserCopyWithImpl<ResponseUser>(
          this as ResponseUser, _$identity);

  /// Serializes this ResponseUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      discordId,
      birthday,
      avatar,
      createdAt,
      updatedAt,
      isDeleted,
      const DeepCollectionEquality().hash(permissions));

  @override
  String toString() {
    return 'ResponseUser(id: $id, username: $username, email: $email, discordId: $discordId, birthday: $birthday, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted, permissions: $permissions)';
  }
}

/// @nodoc
abstract mixin class $ResponseUserCopyWith<$Res> {
  factory $ResponseUserCopyWith(
          ResponseUser value, $Res Function(ResponseUser) _then) =
      _$ResponseUserCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String username,
      String? email,
      String? discordId,
      DateTime? birthday,
      String? avatar,
      DateTime createdAt,
      DateTime updatedAt,
      bool isDeleted,
      List<Permissions> permissions});
}

/// @nodoc
class _$ResponseUserCopyWithImpl<$Res> implements $ResponseUserCopyWith<$Res> {
  _$ResponseUserCopyWithImpl(this._self, this._then);

  final ResponseUser _self;
  final $Res Function(ResponseUser) _then;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? discordId = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
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
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _self.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseUser implements ResponseUser {
  const _ResponseUser(
      {required this.id,
      required this.username,
      required this.email,
      required this.discordId,
      required this.birthday,
      required this.avatar,
      required this.createdAt,
      required this.updatedAt,
      required this.isDeleted,
      required final List<Permissions> permissions})
      : _permissions = permissions;
  factory _ResponseUser.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? discordId;
  @override
  final DateTime? birthday;

  /// link on file GET
  @override
  final String? avatar;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool isDeleted;
  final List<Permissions> _permissions;
  @override
  List<Permissions> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseUserCopyWith<_ResponseUser> get copyWith =>
      __$ResponseUserCopyWithImpl<_ResponseUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      discordId,
      birthday,
      avatar,
      createdAt,
      updatedAt,
      isDeleted,
      const DeepCollectionEquality().hash(_permissions));

  @override
  String toString() {
    return 'ResponseUser(id: $id, username: $username, email: $email, discordId: $discordId, birthday: $birthday, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted, permissions: $permissions)';
  }
}

/// @nodoc
abstract mixin class _$ResponseUserCopyWith<$Res>
    implements $ResponseUserCopyWith<$Res> {
  factory _$ResponseUserCopyWith(
          _ResponseUser value, $Res Function(_ResponseUser) _then) =
      __$ResponseUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String? email,
      String? discordId,
      DateTime? birthday,
      String? avatar,
      DateTime createdAt,
      DateTime updatedAt,
      bool isDeleted,
      List<Permissions> permissions});
}

/// @nodoc
class __$ResponseUserCopyWithImpl<$Res>
    implements _$ResponseUserCopyWith<$Res> {
  __$ResponseUserCopyWithImpl(this._self, this._then);

  final _ResponseUser _self;
  final $Res Function(_ResponseUser) _then;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? discordId = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
  }) {
    return _then(_ResponseUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _self.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ));
  }
}

// dart format on

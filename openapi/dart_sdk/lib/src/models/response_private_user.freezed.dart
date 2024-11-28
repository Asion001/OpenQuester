// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_private_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponsePrivateUser _$ResponsePrivateUserFromJson(Map<String, dynamic> json) {
  return _ResponsePrivateUser.fromJson(json);
}

/// @nodoc
mixin _$ResponsePrivateUser {
  num get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  List<Permissions> get permissions => throw _privateConstructorUsedError;

  /// Serializes this ResponsePrivateUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsePrivateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsePrivateUserCopyWith<ResponsePrivateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePrivateUserCopyWith<$Res> {
  factory $ResponsePrivateUserCopyWith(
          ResponsePrivateUser value, $Res Function(ResponsePrivateUser) then) =
      _$ResponsePrivateUserCopyWithImpl<$Res, ResponsePrivateUser>;
  @useResult
  $Res call(
      {num id,
      String name,
      String email,
      DateTime birthday,
      String avatar,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      List<Permissions> permissions});
}

/// @nodoc
class _$ResponsePrivateUserCopyWithImpl<$Res, $Val extends ResponsePrivateUser>
    implements $ResponsePrivateUserCopyWith<$Res> {
  _$ResponsePrivateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsePrivateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? birthday = null,
    Object? avatar = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsePrivateUserImplCopyWith<$Res>
    implements $ResponsePrivateUserCopyWith<$Res> {
  factory _$$ResponsePrivateUserImplCopyWith(_$ResponsePrivateUserImpl value,
          $Res Function(_$ResponsePrivateUserImpl) then) =
      __$$ResponsePrivateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      String name,
      String email,
      DateTime birthday,
      String avatar,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      List<Permissions> permissions});
}

/// @nodoc
class __$$ResponsePrivateUserImplCopyWithImpl<$Res>
    extends _$ResponsePrivateUserCopyWithImpl<$Res, _$ResponsePrivateUserImpl>
    implements _$$ResponsePrivateUserImplCopyWith<$Res> {
  __$$ResponsePrivateUserImplCopyWithImpl(_$ResponsePrivateUserImpl _value,
      $Res Function(_$ResponsePrivateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsePrivateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? birthday = null,
    Object? avatar = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
  }) {
    return _then(_$ResponsePrivateUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permissions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePrivateUserImpl implements _ResponsePrivateUser {
  const _$ResponsePrivateUserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.birthday,
      required this.avatar,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      required final List<Permissions> permissions})
      : _permissions = permissions;

  factory _$ResponsePrivateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePrivateUserImplFromJson(json);

  @override
  final num id;
  @override
  final String name;
  @override
  final String email;
  @override
  final DateTime birthday;
  @override
  final String avatar;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;
  final List<Permissions> _permissions;
  @override
  List<Permissions> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'ResponsePrivateUser(id: $id, name: $name, email: $email, birthday: $birthday, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePrivateUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
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
      name,
      email,
      birthday,
      avatar,
      createdAt,
      updatedAt,
      isDeleted,
      const DeepCollectionEquality().hash(_permissions));

  /// Create a copy of ResponsePrivateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePrivateUserImplCopyWith<_$ResponsePrivateUserImpl> get copyWith =>
      __$$ResponsePrivateUserImplCopyWithImpl<_$ResponsePrivateUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePrivateUserImplToJson(
      this,
    );
  }
}

abstract class _ResponsePrivateUser implements ResponsePrivateUser {
  const factory _ResponsePrivateUser(
          {required final num id,
          required final String name,
          required final String email,
          required final DateTime birthday,
          required final String avatar,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'is_deleted') required final bool isDeleted,
          required final List<Permissions> permissions}) =
      _$ResponsePrivateUserImpl;

  factory _ResponsePrivateUser.fromJson(Map<String, dynamic> json) =
      _$ResponsePrivateUserImpl.fromJson;

  @override
  num get id;
  @override
  String get name;
  @override
  String get email;
  @override
  DateTime get birthday;
  @override
  String get avatar;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;
  @override
  List<Permissions> get permissions;

  /// Create a copy of ResponsePrivateUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsePrivateUserImplCopyWith<_$ResponsePrivateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

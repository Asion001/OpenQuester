// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUser _$ResponseUserFromJson(Map<String, dynamic> json) {
  return _ResponseUser.fromJson(json);
}

/// @nodoc
mixin _$ResponseUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  List<Permissions> get permissions => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this ResponseUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUserCopyWith<ResponseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUserCopyWith<$Res> {
  factory $ResponseUserCopyWith(
          ResponseUser value, $Res Function(ResponseUser) then) =
      _$ResponseUserCopyWithImpl<$Res, ResponseUser>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      List<Permissions> permissions,
      DateTime? birthday,
      String? avatar});
}

/// @nodoc
class _$ResponseUserCopyWithImpl<$Res, $Val extends ResponseUser>
    implements $ResponseUserCopyWith<$Res> {
  _$ResponseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
    Object? birthday = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUserImplCopyWith<$Res>
    implements $ResponseUserCopyWith<$Res> {
  factory _$$ResponseUserImplCopyWith(
          _$ResponseUserImpl value, $Res Function(_$ResponseUserImpl) then) =
      __$$ResponseUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      List<Permissions> permissions,
      DateTime? birthday,
      String? avatar});
}

/// @nodoc
class __$$ResponseUserImplCopyWithImpl<$Res>
    extends _$ResponseUserCopyWithImpl<$Res, _$ResponseUserImpl>
    implements _$$ResponseUserImplCopyWith<$Res> {
  __$$ResponseUserImplCopyWithImpl(
      _$ResponseUserImpl _value, $Res Function(_$ResponseUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isDeleted = null,
    Object? permissions = null,
    Object? birthday = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$ResponseUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUserImpl implements _ResponseUser {
  const _$ResponseUserImpl(
      {required this.id,
      required this.name,
      required this.email,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      required final List<Permissions> permissions,
      this.birthday,
      this.avatar})
      : _permissions = permissions;

  factory _$ResponseUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
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
  final DateTime? birthday;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'ResponseUser(id: $id, name: $name, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, isDeleted: $isDeleted, permissions: $permissions, birthday: $birthday, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      createdAt,
      updatedAt,
      isDeleted,
      const DeepCollectionEquality().hash(_permissions),
      birthday,
      avatar);

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUserImplCopyWith<_$ResponseUserImpl> get copyWith =>
      __$$ResponseUserImplCopyWithImpl<_$ResponseUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUserImplToJson(
      this,
    );
  }
}

abstract class _ResponseUser implements ResponseUser {
  const factory _ResponseUser(
      {required final int id,
      required final String name,
      required final String email,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      required final List<Permissions> permissions,
      final DateTime? birthday,
      final String? avatar}) = _$ResponseUserImpl;

  factory _ResponseUser.fromJson(Map<String, dynamic> json) =
      _$ResponseUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
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
  @override
  DateTime? get birthday;
  @override
  String? get avatar;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUserImplCopyWith<_$ResponseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

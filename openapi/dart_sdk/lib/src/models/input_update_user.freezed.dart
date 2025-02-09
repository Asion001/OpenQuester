// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_update_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputUpdateUser _$InputUpdateUserFromJson(Map<String, dynamic> json) {
  return _InputUpdateUser.fromJson(json);
}

/// @nodoc
mixin _$InputUpdateUser {
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this InputUpdateUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputUpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputUpdateUserCopyWith<InputUpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputUpdateUserCopyWith<$Res> {
  factory $InputUpdateUserCopyWith(
          InputUpdateUser value, $Res Function(InputUpdateUser) then) =
      _$InputUpdateUserCopyWithImpl<$Res, InputUpdateUser>;
  @useResult
  $Res call(
      {String? username, String? email, DateTime? birthday, String? avatar});
}

/// @nodoc
class _$InputUpdateUserCopyWithImpl<$Res, $Val extends InputUpdateUser>
    implements $InputUpdateUserCopyWith<$Res> {
  _$InputUpdateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputUpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$InputUpdateUserImplCopyWith<$Res>
    implements $InputUpdateUserCopyWith<$Res> {
  factory _$$InputUpdateUserImplCopyWith(_$InputUpdateUserImpl value,
          $Res Function(_$InputUpdateUserImpl) then) =
      __$$InputUpdateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username, String? email, DateTime? birthday, String? avatar});
}

/// @nodoc
class __$$InputUpdateUserImplCopyWithImpl<$Res>
    extends _$InputUpdateUserCopyWithImpl<$Res, _$InputUpdateUserImpl>
    implements _$$InputUpdateUserImplCopyWith<$Res> {
  __$$InputUpdateUserImplCopyWithImpl(
      _$InputUpdateUserImpl _value, $Res Function(_$InputUpdateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputUpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$InputUpdateUserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$InputUpdateUserImpl implements _InputUpdateUser {
  const _$InputUpdateUserImpl(
      {this.username, this.email, this.birthday, this.avatar});

  factory _$InputUpdateUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputUpdateUserImplFromJson(json);

  @override
  final String? username;
  @override
  final String? email;
  @override
  final DateTime? birthday;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'InputUpdateUser(username: $username, email: $email, birthday: $birthday, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputUpdateUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, birthday, avatar);

  /// Create a copy of InputUpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputUpdateUserImplCopyWith<_$InputUpdateUserImpl> get copyWith =>
      __$$InputUpdateUserImplCopyWithImpl<_$InputUpdateUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputUpdateUserImplToJson(
      this,
    );
  }
}

abstract class _InputUpdateUser implements InputUpdateUser {
  const factory _InputUpdateUser(
      {final String? username,
      final String? email,
      final DateTime? birthday,
      final String? avatar}) = _$InputUpdateUserImpl;

  factory _InputUpdateUser.fromJson(Map<String, dynamic> json) =
      _$InputUpdateUserImpl.fromJson;

  @override
  String? get username;
  @override
  String? get email;
  @override
  DateTime? get birthday;
  @override
  String? get avatar;

  /// Create a copy of InputUpdateUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputUpdateUserImplCopyWith<_$InputUpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

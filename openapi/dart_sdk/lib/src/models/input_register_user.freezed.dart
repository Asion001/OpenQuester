// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_register_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputRegisterUser _$InputRegisterUserFromJson(Map<String, dynamic> json) {
  return _InputRegisterUser.fromJson(json);
}

/// @nodoc
mixin _$InputRegisterUser {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  /// Serializes this InputRegisterUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputRegisterUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputRegisterUserCopyWith<InputRegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputRegisterUserCopyWith<$Res> {
  factory $InputRegisterUserCopyWith(
          InputRegisterUser value, $Res Function(InputRegisterUser) then) =
      _$InputRegisterUserCopyWithImpl<$Res, InputRegisterUser>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      DateTime birthday,
      String avatar});
}

/// @nodoc
class _$InputRegisterUserCopyWithImpl<$Res, $Val extends InputRegisterUser>
    implements $InputRegisterUserCopyWith<$Res> {
  _$InputRegisterUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputRegisterUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? birthday = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputRegisterUserImplCopyWith<$Res>
    implements $InputRegisterUserCopyWith<$Res> {
  factory _$$InputRegisterUserImplCopyWith(_$InputRegisterUserImpl value,
          $Res Function(_$InputRegisterUserImpl) then) =
      __$$InputRegisterUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      DateTime birthday,
      String avatar});
}

/// @nodoc
class __$$InputRegisterUserImplCopyWithImpl<$Res>
    extends _$InputRegisterUserCopyWithImpl<$Res, _$InputRegisterUserImpl>
    implements _$$InputRegisterUserImplCopyWith<$Res> {
  __$$InputRegisterUserImplCopyWithImpl(_$InputRegisterUserImpl _value,
      $Res Function(_$InputRegisterUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputRegisterUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? birthday = null,
    Object? avatar = null,
  }) {
    return _then(_$InputRegisterUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputRegisterUserImpl implements _InputRegisterUser {
  const _$InputRegisterUserImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.birthday,
      required this.avatar});

  factory _$InputRegisterUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputRegisterUserImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final DateTime birthday;
  @override
  final String avatar;

  @override
  String toString() {
    return 'InputRegisterUser(name: $name, email: $email, password: $password, birthday: $birthday, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputRegisterUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, birthday, avatar);

  /// Create a copy of InputRegisterUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputRegisterUserImplCopyWith<_$InputRegisterUserImpl> get copyWith =>
      __$$InputRegisterUserImplCopyWithImpl<_$InputRegisterUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputRegisterUserImplToJson(
      this,
    );
  }
}

abstract class _InputRegisterUser implements InputRegisterUser {
  const factory _InputRegisterUser(
      {required final String name,
      required final String email,
      required final String password,
      required final DateTime birthday,
      required final String avatar}) = _$InputRegisterUserImpl;

  factory _InputRegisterUser.fromJson(Map<String, dynamic> json) =
      _$InputRegisterUserImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  DateTime get birthday;
  @override
  String get avatar;

  /// Create a copy of InputRegisterUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputRegisterUserImplCopyWith<_$InputRegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_login_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputLoginUser _$InputLoginUserFromJson(Map<String, dynamic> json) {
  return _InputLoginUser.fromJson(json);
}

/// @nodoc
mixin _$InputLoginUser {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this InputLoginUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputLoginUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputLoginUserCopyWith<InputLoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLoginUserCopyWith<$Res> {
  factory $InputLoginUserCopyWith(
          InputLoginUser value, $Res Function(InputLoginUser) then) =
      _$InputLoginUserCopyWithImpl<$Res, InputLoginUser>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$InputLoginUserCopyWithImpl<$Res, $Val extends InputLoginUser>
    implements $InputLoginUserCopyWith<$Res> {
  _$InputLoginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputLoginUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputLoginUserImplCopyWith<$Res>
    implements $InputLoginUserCopyWith<$Res> {
  factory _$$InputLoginUserImplCopyWith(_$InputLoginUserImpl value,
          $Res Function(_$InputLoginUserImpl) then) =
      __$$InputLoginUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$InputLoginUserImplCopyWithImpl<$Res>
    extends _$InputLoginUserCopyWithImpl<$Res, _$InputLoginUserImpl>
    implements _$$InputLoginUserImplCopyWith<$Res> {
  __$$InputLoginUserImplCopyWithImpl(
      _$InputLoginUserImpl _value, $Res Function(_$InputLoginUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputLoginUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$InputLoginUserImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputLoginUserImpl implements _InputLoginUser {
  const _$InputLoginUserImpl({required this.login, required this.password});

  factory _$InputLoginUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputLoginUserImplFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'InputLoginUser(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLoginUserImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  /// Create a copy of InputLoginUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLoginUserImplCopyWith<_$InputLoginUserImpl> get copyWith =>
      __$$InputLoginUserImplCopyWithImpl<_$InputLoginUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputLoginUserImplToJson(
      this,
    );
  }
}

abstract class _InputLoginUser implements InputLoginUser {
  const factory _InputLoginUser(
      {required final String login,
      required final String password}) = _$InputLoginUserImpl;

  factory _InputLoginUser.fromJson(Map<String, dynamic> json) =
      _$InputLoginUserImpl.fromJson;

  @override
  String get login;
  @override
  String get password;

  /// Create a copy of InputLoginUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputLoginUserImplCopyWith<_$InputLoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

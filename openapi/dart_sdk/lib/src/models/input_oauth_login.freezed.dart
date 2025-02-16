// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_oauth_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputOauthLogin _$InputOauthLoginFromJson(Map<String, dynamic> json) {
  return _InputOauthLogin.fromJson(json);
}

/// @nodoc
mixin _$InputOauthLogin {
  String get token => throw _privateConstructorUsedError;
  String? get tokenSchema => throw _privateConstructorUsedError;
  InputOauthLoginOauthProvider get oauthProvider =>
      throw _privateConstructorUsedError;

  /// Serializes this InputOauthLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputOauthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputOauthLoginCopyWith<InputOauthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputOauthLoginCopyWith<$Res> {
  factory $InputOauthLoginCopyWith(
          InputOauthLogin value, $Res Function(InputOauthLogin) then) =
      _$InputOauthLoginCopyWithImpl<$Res, InputOauthLogin>;
  @useResult
  $Res call(
      {String token,
      String? tokenSchema,
      InputOauthLoginOauthProvider oauthProvider});
}

/// @nodoc
class _$InputOauthLoginCopyWithImpl<$Res, $Val extends InputOauthLogin>
    implements $InputOauthLoginCopyWith<$Res> {
  _$InputOauthLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputOauthLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenSchema = freezed,
    Object? oauthProvider = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSchema: freezed == tokenSchema
          ? _value.tokenSchema
          : tokenSchema // ignore: cast_nullable_to_non_nullable
              as String?,
      oauthProvider: null == oauthProvider
          ? _value.oauthProvider
          : oauthProvider // ignore: cast_nullable_to_non_nullable
              as InputOauthLoginOauthProvider,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputOauthLoginImplCopyWith<$Res>
    implements $InputOauthLoginCopyWith<$Res> {
  factory _$$InputOauthLoginImplCopyWith(_$InputOauthLoginImpl value,
          $Res Function(_$InputOauthLoginImpl) then) =
      __$$InputOauthLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String? tokenSchema,
      InputOauthLoginOauthProvider oauthProvider});
}

/// @nodoc
class __$$InputOauthLoginImplCopyWithImpl<$Res>
    extends _$InputOauthLoginCopyWithImpl<$Res, _$InputOauthLoginImpl>
    implements _$$InputOauthLoginImplCopyWith<$Res> {
  __$$InputOauthLoginImplCopyWithImpl(
      _$InputOauthLoginImpl _value, $Res Function(_$InputOauthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputOauthLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tokenSchema = freezed,
    Object? oauthProvider = null,
  }) {
    return _then(_$InputOauthLoginImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSchema: freezed == tokenSchema
          ? _value.tokenSchema
          : tokenSchema // ignore: cast_nullable_to_non_nullable
              as String?,
      oauthProvider: null == oauthProvider
          ? _value.oauthProvider
          : oauthProvider // ignore: cast_nullable_to_non_nullable
              as InputOauthLoginOauthProvider,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputOauthLoginImpl implements _InputOauthLogin {
  const _$InputOauthLoginImpl(
      {required this.token,
      required this.tokenSchema,
      required this.oauthProvider});

  factory _$InputOauthLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputOauthLoginImplFromJson(json);

  @override
  final String token;
  @override
  final String? tokenSchema;
  @override
  final InputOauthLoginOauthProvider oauthProvider;

  @override
  String toString() {
    return 'InputOauthLogin(token: $token, tokenSchema: $tokenSchema, oauthProvider: $oauthProvider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputOauthLoginImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenSchema, tokenSchema) ||
                other.tokenSchema == tokenSchema) &&
            (identical(other.oauthProvider, oauthProvider) ||
                other.oauthProvider == oauthProvider));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, tokenSchema, oauthProvider);

  /// Create a copy of InputOauthLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputOauthLoginImplCopyWith<_$InputOauthLoginImpl> get copyWith =>
      __$$InputOauthLoginImplCopyWithImpl<_$InputOauthLoginImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputOauthLoginImplToJson(
      this,
    );
  }
}

abstract class _InputOauthLogin implements InputOauthLogin {
  const factory _InputOauthLogin(
          {required final String token,
          required final String? tokenSchema,
          required final InputOauthLoginOauthProvider oauthProvider}) =
      _$InputOauthLoginImpl;

  factory _InputOauthLogin.fromJson(Map<String, dynamic> json) =
      _$InputOauthLoginImpl.fromJson;

  @override
  String get token;
  @override
  String? get tokenSchema;
  @override
  InputOauthLoginOauthProvider get oauthProvider;

  /// Create a copy of InputOauthLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputOauthLoginImplCopyWith<_$InputOauthLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_refresh_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthRefreshInput _$AuthRefreshInputFromJson(Map<String, dynamic> json) {
  return _AuthRefreshInput.fromJson(json);
}

/// @nodoc
mixin _$AuthRefreshInput {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AuthRefreshInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthRefreshInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthRefreshInputCopyWith<AuthRefreshInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRefreshInputCopyWith<$Res> {
  factory $AuthRefreshInputCopyWith(
          AuthRefreshInput value, $Res Function(AuthRefreshInput) then) =
      _$AuthRefreshInputCopyWithImpl<$Res, AuthRefreshInput>;
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthRefreshInputCopyWithImpl<$Res, $Val extends AuthRefreshInput>
    implements $AuthRefreshInputCopyWith<$Res> {
  _$AuthRefreshInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthRefreshInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRefreshInputImplCopyWith<$Res>
    implements $AuthRefreshInputCopyWith<$Res> {
  factory _$$AuthRefreshInputImplCopyWith(_$AuthRefreshInputImpl value,
          $Res Function(_$AuthRefreshInputImpl) then) =
      __$$AuthRefreshInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$AuthRefreshInputImplCopyWithImpl<$Res>
    extends _$AuthRefreshInputCopyWithImpl<$Res, _$AuthRefreshInputImpl>
    implements _$$AuthRefreshInputImplCopyWith<$Res> {
  __$$AuthRefreshInputImplCopyWithImpl(_$AuthRefreshInputImpl _value,
      $Res Function(_$AuthRefreshInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthRefreshInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$AuthRefreshInputImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthRefreshInputImpl implements _AuthRefreshInput {
  const _$AuthRefreshInputImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$AuthRefreshInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthRefreshInputImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthRefreshInput(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRefreshInputImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of AuthRefreshInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRefreshInputImplCopyWith<_$AuthRefreshInputImpl> get copyWith =>
      __$$AuthRefreshInputImplCopyWithImpl<_$AuthRefreshInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthRefreshInputImplToJson(
      this,
    );
  }
}

abstract class _AuthRefreshInput implements AuthRefreshInput {
  const factory _AuthRefreshInput(
      {@JsonKey(name: 'refresh_token')
      required final String refreshToken}) = _$AuthRefreshInputImpl;

  factory _AuthRefreshInput.fromJson(Map<String, dynamic> json) =
      _$AuthRefreshInputImpl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of AuthRefreshInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthRefreshInputImplCopyWith<_$AuthRefreshInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

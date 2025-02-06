// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_not_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNotFoundResponse _$UserNotFoundResponseFromJson(Map<String, dynamic> json) {
  return _UserNotFoundResponse.fromJson(json);
}

/// @nodoc
mixin _$UserNotFoundResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this UserNotFoundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserNotFoundResponseCopyWith<UserNotFoundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotFoundResponseCopyWith<$Res> {
  factory $UserNotFoundResponseCopyWith(UserNotFoundResponse value,
          $Res Function(UserNotFoundResponse) then) =
      _$UserNotFoundResponseCopyWithImpl<$Res, UserNotFoundResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UserNotFoundResponseCopyWithImpl<$Res,
        $Val extends UserNotFoundResponse>
    implements $UserNotFoundResponseCopyWith<$Res> {
  _$UserNotFoundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotFoundResponseImplCopyWith<$Res>
    implements $UserNotFoundResponseCopyWith<$Res> {
  factory _$$UserNotFoundResponseImplCopyWith(_$UserNotFoundResponseImpl value,
          $Res Function(_$UserNotFoundResponseImpl) then) =
      __$$UserNotFoundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserNotFoundResponseImplCopyWithImpl<$Res>
    extends _$UserNotFoundResponseCopyWithImpl<$Res, _$UserNotFoundResponseImpl>
    implements _$$UserNotFoundResponseImplCopyWith<$Res> {
  __$$UserNotFoundResponseImplCopyWithImpl(_$UserNotFoundResponseImpl _value,
      $Res Function(_$UserNotFoundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserNotFoundResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNotFoundResponseImpl implements _UserNotFoundResponse {
  const _$UserNotFoundResponseImpl({required this.error});

  factory _$UserNotFoundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotFoundResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'UserNotFoundResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotFoundResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of UserNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotFoundResponseImplCopyWith<_$UserNotFoundResponseImpl>
      get copyWith =>
          __$$UserNotFoundResponseImplCopyWithImpl<_$UserNotFoundResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotFoundResponseImplToJson(
      this,
    );
  }
}

abstract class _UserNotFoundResponse implements UserNotFoundResponse {
  const factory _UserNotFoundResponse({required final String error}) =
      _$UserNotFoundResponseImpl;

  factory _UserNotFoundResponse.fromJson(Map<String, dynamic> json) =
      _$UserNotFoundResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of UserNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNotFoundResponseImplCopyWith<_$UserNotFoundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

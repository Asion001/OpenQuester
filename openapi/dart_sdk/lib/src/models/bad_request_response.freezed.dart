// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bad_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadRequestResponse _$BadRequestResponseFromJson(Map<String, dynamic> json) {
  return _BadRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$BadRequestResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this BadRequestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadRequestResponseCopyWith<BadRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadRequestResponseCopyWith<$Res> {
  factory $BadRequestResponseCopyWith(
          BadRequestResponse value, $Res Function(BadRequestResponse) then) =
      _$BadRequestResponseCopyWithImpl<$Res, BadRequestResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$BadRequestResponseCopyWithImpl<$Res, $Val extends BadRequestResponse>
    implements $BadRequestResponseCopyWith<$Res> {
  _$BadRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BadRequestResponse
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
abstract class _$$BadRequestResponseImplCopyWith<$Res>
    implements $BadRequestResponseCopyWith<$Res> {
  factory _$$BadRequestResponseImplCopyWith(_$BadRequestResponseImpl value,
          $Res Function(_$BadRequestResponseImpl) then) =
      __$$BadRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BadRequestResponseImplCopyWithImpl<$Res>
    extends _$BadRequestResponseCopyWithImpl<$Res, _$BadRequestResponseImpl>
    implements _$$BadRequestResponseImplCopyWith<$Res> {
  __$$BadRequestResponseImplCopyWithImpl(_$BadRequestResponseImpl _value,
      $Res Function(_$BadRequestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BadRequestResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadRequestResponseImpl implements _BadRequestResponse {
  const _$BadRequestResponseImpl({required this.error});

  factory _$BadRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadRequestResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'BadRequestResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestResponseImplCopyWith<_$BadRequestResponseImpl> get copyWith =>
      __$$BadRequestResponseImplCopyWithImpl<_$BadRequestResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _BadRequestResponse implements BadRequestResponse {
  const factory _BadRequestResponse({required final String error}) =
      _$BadRequestResponseImpl;

  factory _BadRequestResponse.fromJson(Map<String, dynamic> json) =
      _$BadRequestResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestResponseImplCopyWith<_$BadRequestResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

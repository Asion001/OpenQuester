// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralErrorResponse _$GeneralErrorResponseFromJson(Map<String, dynamic> json) {
  return _GeneralErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$GeneralErrorResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this GeneralErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneralErrorResponseCopyWith<GeneralErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralErrorResponseCopyWith<$Res> {
  factory $GeneralErrorResponseCopyWith(GeneralErrorResponse value,
          $Res Function(GeneralErrorResponse) then) =
      _$GeneralErrorResponseCopyWithImpl<$Res, GeneralErrorResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GeneralErrorResponseCopyWithImpl<$Res,
        $Val extends GeneralErrorResponse>
    implements $GeneralErrorResponseCopyWith<$Res> {
  _$GeneralErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneralErrorResponse
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
abstract class _$$GeneralErrorResponseImplCopyWith<$Res>
    implements $GeneralErrorResponseCopyWith<$Res> {
  factory _$$GeneralErrorResponseImplCopyWith(_$GeneralErrorResponseImpl value,
          $Res Function(_$GeneralErrorResponseImpl) then) =
      __$$GeneralErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GeneralErrorResponseImplCopyWithImpl<$Res>
    extends _$GeneralErrorResponseCopyWithImpl<$Res, _$GeneralErrorResponseImpl>
    implements _$$GeneralErrorResponseImplCopyWith<$Res> {
  __$$GeneralErrorResponseImplCopyWithImpl(_$GeneralErrorResponseImpl _value,
      $Res Function(_$GeneralErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GeneralErrorResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralErrorResponseImpl implements _GeneralErrorResponse {
  const _$GeneralErrorResponseImpl({required this.error});

  factory _$GeneralErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralErrorResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'GeneralErrorResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralErrorResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralErrorResponseImplCopyWith<_$GeneralErrorResponseImpl>
      get copyWith =>
          __$$GeneralErrorResponseImplCopyWithImpl<_$GeneralErrorResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _GeneralErrorResponse implements GeneralErrorResponse {
  const factory _GeneralErrorResponse({required final String error}) =
      _$GeneralErrorResponseImpl;

  factory _GeneralErrorResponse.fromJson(Map<String, dynamic> json) =
      _$GeneralErrorResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneralErrorResponseImplCopyWith<_$GeneralErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

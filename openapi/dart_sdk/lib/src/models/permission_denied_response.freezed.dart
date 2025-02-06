// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_denied_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PermissionDeniedResponse _$PermissionDeniedResponseFromJson(
    Map<String, dynamic> json) {
  return _PermissionDeniedResponse.fromJson(json);
}

/// @nodoc
mixin _$PermissionDeniedResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this PermissionDeniedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PermissionDeniedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionDeniedResponseCopyWith<PermissionDeniedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionDeniedResponseCopyWith<$Res> {
  factory $PermissionDeniedResponseCopyWith(PermissionDeniedResponse value,
          $Res Function(PermissionDeniedResponse) then) =
      _$PermissionDeniedResponseCopyWithImpl<$Res, PermissionDeniedResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$PermissionDeniedResponseCopyWithImpl<$Res,
        $Val extends PermissionDeniedResponse>
    implements $PermissionDeniedResponseCopyWith<$Res> {
  _$PermissionDeniedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionDeniedResponse
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
abstract class _$$PermissionDeniedResponseImplCopyWith<$Res>
    implements $PermissionDeniedResponseCopyWith<$Res> {
  factory _$$PermissionDeniedResponseImplCopyWith(
          _$PermissionDeniedResponseImpl value,
          $Res Function(_$PermissionDeniedResponseImpl) then) =
      __$$PermissionDeniedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PermissionDeniedResponseImplCopyWithImpl<$Res>
    extends _$PermissionDeniedResponseCopyWithImpl<$Res,
        _$PermissionDeniedResponseImpl>
    implements _$$PermissionDeniedResponseImplCopyWith<$Res> {
  __$$PermissionDeniedResponseImplCopyWithImpl(
      _$PermissionDeniedResponseImpl _value,
      $Res Function(_$PermissionDeniedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionDeniedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PermissionDeniedResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionDeniedResponseImpl implements _PermissionDeniedResponse {
  const _$PermissionDeniedResponseImpl({required this.error});

  factory _$PermissionDeniedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionDeniedResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'PermissionDeniedResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PermissionDeniedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedResponseImplCopyWith<_$PermissionDeniedResponseImpl>
      get copyWith => __$$PermissionDeniedResponseImplCopyWithImpl<
          _$PermissionDeniedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionDeniedResponseImplToJson(
      this,
    );
  }
}

abstract class _PermissionDeniedResponse implements PermissionDeniedResponse {
  const factory _PermissionDeniedResponse({required final String error}) =
      _$PermissionDeniedResponseImpl;

  factory _PermissionDeniedResponse.fromJson(Map<String, dynamic> json) =
      _$PermissionDeniedResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of PermissionDeniedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionDeniedResponseImplCopyWith<_$PermissionDeniedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

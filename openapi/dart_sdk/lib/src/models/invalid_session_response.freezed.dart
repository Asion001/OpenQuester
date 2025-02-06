// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invalid_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvalidSessionResponse _$InvalidSessionResponseFromJson(
    Map<String, dynamic> json) {
  return _InvalidSessionResponse.fromJson(json);
}

/// @nodoc
mixin _$InvalidSessionResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this InvalidSessionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvalidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvalidSessionResponseCopyWith<InvalidSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidSessionResponseCopyWith<$Res> {
  factory $InvalidSessionResponseCopyWith(InvalidSessionResponse value,
          $Res Function(InvalidSessionResponse) then) =
      _$InvalidSessionResponseCopyWithImpl<$Res, InvalidSessionResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$InvalidSessionResponseCopyWithImpl<$Res,
        $Val extends InvalidSessionResponse>
    implements $InvalidSessionResponseCopyWith<$Res> {
  _$InvalidSessionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvalidSessionResponse
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
abstract class _$$InvalidSessionResponseImplCopyWith<$Res>
    implements $InvalidSessionResponseCopyWith<$Res> {
  factory _$$InvalidSessionResponseImplCopyWith(
          _$InvalidSessionResponseImpl value,
          $Res Function(_$InvalidSessionResponseImpl) then) =
      __$$InvalidSessionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$InvalidSessionResponseImplCopyWithImpl<$Res>
    extends _$InvalidSessionResponseCopyWithImpl<$Res,
        _$InvalidSessionResponseImpl>
    implements _$$InvalidSessionResponseImplCopyWith<$Res> {
  __$$InvalidSessionResponseImplCopyWithImpl(
      _$InvalidSessionResponseImpl _value,
      $Res Function(_$InvalidSessionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvalidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InvalidSessionResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvalidSessionResponseImpl implements _InvalidSessionResponse {
  const _$InvalidSessionResponseImpl({required this.error});

  factory _$InvalidSessionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvalidSessionResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'InvalidSessionResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidSessionResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of InvalidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidSessionResponseImplCopyWith<_$InvalidSessionResponseImpl>
      get copyWith => __$$InvalidSessionResponseImplCopyWithImpl<
          _$InvalidSessionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvalidSessionResponseImplToJson(
      this,
    );
  }
}

abstract class _InvalidSessionResponse implements InvalidSessionResponse {
  const factory _InvalidSessionResponse({required final String error}) =
      _$InvalidSessionResponseImpl;

  factory _InvalidSessionResponse.fromJson(Map<String, dynamic> json) =
      _$InvalidSessionResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of InvalidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidSessionResponseImplCopyWith<_$InvalidSessionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

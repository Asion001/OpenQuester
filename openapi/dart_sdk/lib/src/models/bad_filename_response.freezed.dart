// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bad_filename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BadFilenameResponse _$BadFilenameResponseFromJson(Map<String, dynamic> json) {
  return _BadFilenameResponse.fromJson(json);
}

/// @nodoc
mixin _$BadFilenameResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this BadFilenameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadFilenameResponseCopyWith<BadFilenameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadFilenameResponseCopyWith<$Res> {
  factory $BadFilenameResponseCopyWith(
          BadFilenameResponse value, $Res Function(BadFilenameResponse) then) =
      _$BadFilenameResponseCopyWithImpl<$Res, BadFilenameResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$BadFilenameResponseCopyWithImpl<$Res, $Val extends BadFilenameResponse>
    implements $BadFilenameResponseCopyWith<$Res> {
  _$BadFilenameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BadFilenameResponse
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
abstract class _$$BadFilenameResponseImplCopyWith<$Res>
    implements $BadFilenameResponseCopyWith<$Res> {
  factory _$$BadFilenameResponseImplCopyWith(_$BadFilenameResponseImpl value,
          $Res Function(_$BadFilenameResponseImpl) then) =
      __$$BadFilenameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BadFilenameResponseImplCopyWithImpl<$Res>
    extends _$BadFilenameResponseCopyWithImpl<$Res, _$BadFilenameResponseImpl>
    implements _$$BadFilenameResponseImplCopyWith<$Res> {
  __$$BadFilenameResponseImplCopyWithImpl(_$BadFilenameResponseImpl _value,
      $Res Function(_$BadFilenameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BadFilenameResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadFilenameResponseImpl implements _BadFilenameResponse {
  const _$BadFilenameResponseImpl({required this.error});

  factory _$BadFilenameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadFilenameResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'BadFilenameResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadFilenameResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadFilenameResponseImplCopyWith<_$BadFilenameResponseImpl> get copyWith =>
      __$$BadFilenameResponseImplCopyWithImpl<_$BadFilenameResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadFilenameResponseImplToJson(
      this,
    );
  }
}

abstract class _BadFilenameResponse implements BadFilenameResponse {
  const factory _BadFilenameResponse({required final String error}) =
      _$BadFilenameResponseImpl;

  factory _BadFilenameResponse.fromJson(Map<String, dynamic> json) =
      _$BadFilenameResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadFilenameResponseImplCopyWith<_$BadFilenameResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

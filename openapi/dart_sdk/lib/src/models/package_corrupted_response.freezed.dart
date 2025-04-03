// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_corrupted_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageCorruptedResponse _$PackageCorruptedResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageCorruptedResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageCorruptedResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this PackageCorruptedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageCorruptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCorruptedResponseCopyWith<PackageCorruptedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCorruptedResponseCopyWith<$Res> {
  factory $PackageCorruptedResponseCopyWith(PackageCorruptedResponse value,
          $Res Function(PackageCorruptedResponse) then) =
      _$PackageCorruptedResponseCopyWithImpl<$Res, PackageCorruptedResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$PackageCorruptedResponseCopyWithImpl<$Res,
        $Val extends PackageCorruptedResponse>
    implements $PackageCorruptedResponseCopyWith<$Res> {
  _$PackageCorruptedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageCorruptedResponse
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
abstract class _$$PackageCorruptedResponseImplCopyWith<$Res>
    implements $PackageCorruptedResponseCopyWith<$Res> {
  factory _$$PackageCorruptedResponseImplCopyWith(
          _$PackageCorruptedResponseImpl value,
          $Res Function(_$PackageCorruptedResponseImpl) then) =
      __$$PackageCorruptedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PackageCorruptedResponseImplCopyWithImpl<$Res>
    extends _$PackageCorruptedResponseCopyWithImpl<$Res,
        _$PackageCorruptedResponseImpl>
    implements _$$PackageCorruptedResponseImplCopyWith<$Res> {
  __$$PackageCorruptedResponseImplCopyWithImpl(
      _$PackageCorruptedResponseImpl _value,
      $Res Function(_$PackageCorruptedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageCorruptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PackageCorruptedResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageCorruptedResponseImpl implements _PackageCorruptedResponse {
  const _$PackageCorruptedResponseImpl({required this.error});

  factory _$PackageCorruptedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageCorruptedResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'PackageCorruptedResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageCorruptedResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PackageCorruptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageCorruptedResponseImplCopyWith<_$PackageCorruptedResponseImpl>
      get copyWith => __$$PackageCorruptedResponseImplCopyWithImpl<
          _$PackageCorruptedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageCorruptedResponseImplToJson(
      this,
    );
  }
}

abstract class _PackageCorruptedResponse implements PackageCorruptedResponse {
  const factory _PackageCorruptedResponse({required final String error}) =
      _$PackageCorruptedResponseImpl;

  factory _PackageCorruptedResponse.fromJson(Map<String, dynamic> json) =
      _$PackageCorruptedResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of PackageCorruptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageCorruptedResponseImplCopyWith<_$PackageCorruptedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

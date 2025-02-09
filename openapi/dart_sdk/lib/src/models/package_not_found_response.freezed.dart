// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_not_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageNotFoundResponse _$PackageNotFoundResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageNotFoundResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageNotFoundResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this PackageNotFoundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageNotFoundResponseCopyWith<PackageNotFoundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageNotFoundResponseCopyWith<$Res> {
  factory $PackageNotFoundResponseCopyWith(PackageNotFoundResponse value,
          $Res Function(PackageNotFoundResponse) then) =
      _$PackageNotFoundResponseCopyWithImpl<$Res, PackageNotFoundResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$PackageNotFoundResponseCopyWithImpl<$Res,
        $Val extends PackageNotFoundResponse>
    implements $PackageNotFoundResponseCopyWith<$Res> {
  _$PackageNotFoundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageNotFoundResponse
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
abstract class _$$PackageNotFoundResponseImplCopyWith<$Res>
    implements $PackageNotFoundResponseCopyWith<$Res> {
  factory _$$PackageNotFoundResponseImplCopyWith(
          _$PackageNotFoundResponseImpl value,
          $Res Function(_$PackageNotFoundResponseImpl) then) =
      __$$PackageNotFoundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PackageNotFoundResponseImplCopyWithImpl<$Res>
    extends _$PackageNotFoundResponseCopyWithImpl<$Res,
        _$PackageNotFoundResponseImpl>
    implements _$$PackageNotFoundResponseImplCopyWith<$Res> {
  __$$PackageNotFoundResponseImplCopyWithImpl(
      _$PackageNotFoundResponseImpl _value,
      $Res Function(_$PackageNotFoundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PackageNotFoundResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageNotFoundResponseImpl implements _PackageNotFoundResponse {
  const _$PackageNotFoundResponseImpl({required this.error});

  factory _$PackageNotFoundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageNotFoundResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'PackageNotFoundResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageNotFoundResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PackageNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageNotFoundResponseImplCopyWith<_$PackageNotFoundResponseImpl>
      get copyWith => __$$PackageNotFoundResponseImplCopyWithImpl<
          _$PackageNotFoundResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageNotFoundResponseImplToJson(
      this,
    );
  }
}

abstract class _PackageNotFoundResponse implements PackageNotFoundResponse {
  const factory _PackageNotFoundResponse({required final String error}) =
      _$PackageNotFoundResponseImpl;

  factory _PackageNotFoundResponse.fromJson(Map<String, dynamic> json) =
      _$PackageNotFoundResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of PackageNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageNotFoundResponseImplCopyWith<_$PackageNotFoundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

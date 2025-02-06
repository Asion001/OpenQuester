// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empty_content_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmptyContentResponse _$EmptyContentResponseFromJson(Map<String, dynamic> json) {
  return _EmptyContentResponse.fromJson(json);
}

/// @nodoc
mixin _$EmptyContentResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this EmptyContentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmptyContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmptyContentResponseCopyWith<EmptyContentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyContentResponseCopyWith<$Res> {
  factory $EmptyContentResponseCopyWith(EmptyContentResponse value,
          $Res Function(EmptyContentResponse) then) =
      _$EmptyContentResponseCopyWithImpl<$Res, EmptyContentResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$EmptyContentResponseCopyWithImpl<$Res,
        $Val extends EmptyContentResponse>
    implements $EmptyContentResponseCopyWith<$Res> {
  _$EmptyContentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmptyContentResponse
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
abstract class _$$EmptyContentResponseImplCopyWith<$Res>
    implements $EmptyContentResponseCopyWith<$Res> {
  factory _$$EmptyContentResponseImplCopyWith(_$EmptyContentResponseImpl value,
          $Res Function(_$EmptyContentResponseImpl) then) =
      __$$EmptyContentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$EmptyContentResponseImplCopyWithImpl<$Res>
    extends _$EmptyContentResponseCopyWithImpl<$Res, _$EmptyContentResponseImpl>
    implements _$$EmptyContentResponseImplCopyWith<$Res> {
  __$$EmptyContentResponseImplCopyWithImpl(_$EmptyContentResponseImpl _value,
      $Res Function(_$EmptyContentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmptyContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EmptyContentResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmptyContentResponseImpl implements _EmptyContentResponse {
  const _$EmptyContentResponseImpl({required this.error});

  factory _$EmptyContentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyContentResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'EmptyContentResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyContentResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of EmptyContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyContentResponseImplCopyWith<_$EmptyContentResponseImpl>
      get copyWith =>
          __$$EmptyContentResponseImplCopyWithImpl<_$EmptyContentResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyContentResponseImplToJson(
      this,
    );
  }
}

abstract class _EmptyContentResponse implements EmptyContentResponse {
  const factory _EmptyContentResponse({required final String error}) =
      _$EmptyContentResponseImpl;

  factory _EmptyContentResponse.fromJson(Map<String, dynamic> json) =
      _$EmptyContentResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of EmptyContentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyContentResponseImplCopyWith<_$EmptyContentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

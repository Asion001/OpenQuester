// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_v1_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteV1FileResponse _$DeleteV1FileResponseFromJson(Map<String, dynamic> json) {
  return _DeleteV1FileResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteV1FileResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteV1FileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteV1FileResponseCopyWith<DeleteV1FileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteV1FileResponseCopyWith<$Res> {
  factory $DeleteV1FileResponseCopyWith(DeleteV1FileResponse value,
          $Res Function(DeleteV1FileResponse) then) =
      _$DeleteV1FileResponseCopyWithImpl<$Res, DeleteV1FileResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteV1FileResponseCopyWithImpl<$Res,
        $Val extends DeleteV1FileResponse>
    implements $DeleteV1FileResponseCopyWith<$Res> {
  _$DeleteV1FileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteV1FileResponseImplCopyWith<$Res>
    implements $DeleteV1FileResponseCopyWith<$Res> {
  factory _$$DeleteV1FileResponseImplCopyWith(_$DeleteV1FileResponseImpl value,
          $Res Function(_$DeleteV1FileResponseImpl) then) =
      __$$DeleteV1FileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteV1FileResponseImplCopyWithImpl<$Res>
    extends _$DeleteV1FileResponseCopyWithImpl<$Res, _$DeleteV1FileResponseImpl>
    implements _$$DeleteV1FileResponseImplCopyWith<$Res> {
  __$$DeleteV1FileResponseImplCopyWithImpl(_$DeleteV1FileResponseImpl _value,
      $Res Function(_$DeleteV1FileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteV1FileResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteV1FileResponseImpl implements _DeleteV1FileResponse {
  const _$DeleteV1FileResponseImpl({required this.message});

  factory _$DeleteV1FileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteV1FileResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteV1FileResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteV1FileResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DeleteV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteV1FileResponseImplCopyWith<_$DeleteV1FileResponseImpl>
      get copyWith =>
          __$$DeleteV1FileResponseImplCopyWithImpl<_$DeleteV1FileResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteV1FileResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteV1FileResponse implements DeleteV1FileResponse {
  const factory _DeleteV1FileResponse({required final String message}) =
      _$DeleteV1FileResponseImpl;

  factory _DeleteV1FileResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteV1FileResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of DeleteV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteV1FileResponseImplCopyWith<_$DeleteV1FileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

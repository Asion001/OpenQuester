// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_v1_files_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteV1FilesResponse _$DeleteV1FilesResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteV1FilesResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteV1FilesResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteV1FilesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteV1FilesResponseCopyWith<DeleteV1FilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteV1FilesResponseCopyWith<$Res> {
  factory $DeleteV1FilesResponseCopyWith(DeleteV1FilesResponse value,
          $Res Function(DeleteV1FilesResponse) then) =
      _$DeleteV1FilesResponseCopyWithImpl<$Res, DeleteV1FilesResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteV1FilesResponseCopyWithImpl<$Res,
        $Val extends DeleteV1FilesResponse>
    implements $DeleteV1FilesResponseCopyWith<$Res> {
  _$DeleteV1FilesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteV1FilesResponse
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
abstract class _$$DeleteV1FilesResponseImplCopyWith<$Res>
    implements $DeleteV1FilesResponseCopyWith<$Res> {
  factory _$$DeleteV1FilesResponseImplCopyWith(
          _$DeleteV1FilesResponseImpl value,
          $Res Function(_$DeleteV1FilesResponseImpl) then) =
      __$$DeleteV1FilesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteV1FilesResponseImplCopyWithImpl<$Res>
    extends _$DeleteV1FilesResponseCopyWithImpl<$Res,
        _$DeleteV1FilesResponseImpl>
    implements _$$DeleteV1FilesResponseImplCopyWith<$Res> {
  __$$DeleteV1FilesResponseImplCopyWithImpl(_$DeleteV1FilesResponseImpl _value,
      $Res Function(_$DeleteV1FilesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteV1FilesResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteV1FilesResponseImpl implements _DeleteV1FilesResponse {
  const _$DeleteV1FilesResponseImpl({required this.message});

  factory _$DeleteV1FilesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteV1FilesResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteV1FilesResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteV1FilesResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DeleteV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteV1FilesResponseImplCopyWith<_$DeleteV1FilesResponseImpl>
      get copyWith => __$$DeleteV1FilesResponseImplCopyWithImpl<
          _$DeleteV1FilesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteV1FilesResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteV1FilesResponse implements DeleteV1FilesResponse {
  const factory _DeleteV1FilesResponse({required final String message}) =
      _$DeleteV1FilesResponseImpl;

  factory _DeleteV1FilesResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteV1FilesResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of DeleteV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteV1FilesResponseImplCopyWith<_$DeleteV1FilesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

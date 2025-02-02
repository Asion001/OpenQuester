// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_v1_files_filename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteV1FilesFilenameResponse _$DeleteV1FilesFilenameResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteV1FilesFilenameResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteV1FilesFilenameResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteV1FilesFilenameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteV1FilesFilenameResponseCopyWith<DeleteV1FilesFilenameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteV1FilesFilenameResponseCopyWith<$Res> {
  factory $DeleteV1FilesFilenameResponseCopyWith(
          DeleteV1FilesFilenameResponse value,
          $Res Function(DeleteV1FilesFilenameResponse) then) =
      _$DeleteV1FilesFilenameResponseCopyWithImpl<$Res,
          DeleteV1FilesFilenameResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteV1FilesFilenameResponseCopyWithImpl<$Res,
        $Val extends DeleteV1FilesFilenameResponse>
    implements $DeleteV1FilesFilenameResponseCopyWith<$Res> {
  _$DeleteV1FilesFilenameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteV1FilesFilenameResponse
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
abstract class _$$DeleteV1FilesFilenameResponseImplCopyWith<$Res>
    implements $DeleteV1FilesFilenameResponseCopyWith<$Res> {
  factory _$$DeleteV1FilesFilenameResponseImplCopyWith(
          _$DeleteV1FilesFilenameResponseImpl value,
          $Res Function(_$DeleteV1FilesFilenameResponseImpl) then) =
      __$$DeleteV1FilesFilenameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteV1FilesFilenameResponseImplCopyWithImpl<$Res>
    extends _$DeleteV1FilesFilenameResponseCopyWithImpl<$Res,
        _$DeleteV1FilesFilenameResponseImpl>
    implements _$$DeleteV1FilesFilenameResponseImplCopyWith<$Res> {
  __$$DeleteV1FilesFilenameResponseImplCopyWithImpl(
      _$DeleteV1FilesFilenameResponseImpl _value,
      $Res Function(_$DeleteV1FilesFilenameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteV1FilesFilenameResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteV1FilesFilenameResponseImpl
    implements _DeleteV1FilesFilenameResponse {
  const _$DeleteV1FilesFilenameResponseImpl({required this.message});

  factory _$DeleteV1FilesFilenameResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteV1FilesFilenameResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteV1FilesFilenameResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteV1FilesFilenameResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DeleteV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteV1FilesFilenameResponseImplCopyWith<
          _$DeleteV1FilesFilenameResponseImpl>
      get copyWith => __$$DeleteV1FilesFilenameResponseImplCopyWithImpl<
          _$DeleteV1FilesFilenameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteV1FilesFilenameResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteV1FilesFilenameResponse
    implements DeleteV1FilesFilenameResponse {
  const factory _DeleteV1FilesFilenameResponse(
      {required final String message}) = _$DeleteV1FilesFilenameResponseImpl;

  factory _DeleteV1FilesFilenameResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteV1FilesFilenameResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of DeleteV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteV1FilesFilenameResponseImplCopyWith<
          _$DeleteV1FilesFilenameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

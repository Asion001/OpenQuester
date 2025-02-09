// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteRequestResponse _$DeleteRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteRequestResponse {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteRequestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteRequestResponseCopyWith<DeleteRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestResponseCopyWith<$Res> {
  factory $DeleteRequestResponseCopyWith(DeleteRequestResponse value,
          $Res Function(DeleteRequestResponse) then) =
      _$DeleteRequestResponseCopyWithImpl<$Res, DeleteRequestResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteRequestResponseCopyWithImpl<$Res,
        $Val extends DeleteRequestResponse>
    implements $DeleteRequestResponseCopyWith<$Res> {
  _$DeleteRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteRequestResponse
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
abstract class _$$DeleteRequestResponseImplCopyWith<$Res>
    implements $DeleteRequestResponseCopyWith<$Res> {
  factory _$$DeleteRequestResponseImplCopyWith(
          _$DeleteRequestResponseImpl value,
          $Res Function(_$DeleteRequestResponseImpl) then) =
      __$$DeleteRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteRequestResponseImplCopyWithImpl<$Res>
    extends _$DeleteRequestResponseCopyWithImpl<$Res,
        _$DeleteRequestResponseImpl>
    implements _$$DeleteRequestResponseImplCopyWith<$Res> {
  __$$DeleteRequestResponseImplCopyWithImpl(_$DeleteRequestResponseImpl _value,
      $Res Function(_$DeleteRequestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteRequestResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRequestResponseImpl implements _DeleteRequestResponse {
  const _$DeleteRequestResponseImpl({required this.message});

  factory _$DeleteRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRequestResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteRequestResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DeleteRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestResponseImplCopyWith<_$DeleteRequestResponseImpl>
      get copyWith => __$$DeleteRequestResponseImplCopyWithImpl<
          _$DeleteRequestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteRequestResponse implements DeleteRequestResponse {
  const factory _DeleteRequestResponse({required final String message}) =
      _$DeleteRequestResponseImpl;

  factory _DeleteRequestResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteRequestResponseImpl.fromJson;

  @override
  String get message;

  /// Create a copy of DeleteRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteRequestResponseImplCopyWith<_$DeleteRequestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

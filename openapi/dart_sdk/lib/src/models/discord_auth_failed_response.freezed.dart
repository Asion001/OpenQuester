// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discord_auth_failed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscordAuthFailedResponse _$DiscordAuthFailedResponseFromJson(
    Map<String, dynamic> json) {
  return _DiscordAuthFailedResponse.fromJson(json);
}

/// @nodoc
mixin _$DiscordAuthFailedResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this DiscordAuthFailedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscordAuthFailedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscordAuthFailedResponseCopyWith<DiscordAuthFailedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscordAuthFailedResponseCopyWith<$Res> {
  factory $DiscordAuthFailedResponseCopyWith(DiscordAuthFailedResponse value,
          $Res Function(DiscordAuthFailedResponse) then) =
      _$DiscordAuthFailedResponseCopyWithImpl<$Res, DiscordAuthFailedResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DiscordAuthFailedResponseCopyWithImpl<$Res,
        $Val extends DiscordAuthFailedResponse>
    implements $DiscordAuthFailedResponseCopyWith<$Res> {
  _$DiscordAuthFailedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscordAuthFailedResponse
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
abstract class _$$DiscordAuthFailedResponseImplCopyWith<$Res>
    implements $DiscordAuthFailedResponseCopyWith<$Res> {
  factory _$$DiscordAuthFailedResponseImplCopyWith(
          _$DiscordAuthFailedResponseImpl value,
          $Res Function(_$DiscordAuthFailedResponseImpl) then) =
      __$$DiscordAuthFailedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DiscordAuthFailedResponseImplCopyWithImpl<$Res>
    extends _$DiscordAuthFailedResponseCopyWithImpl<$Res,
        _$DiscordAuthFailedResponseImpl>
    implements _$$DiscordAuthFailedResponseImplCopyWith<$Res> {
  __$$DiscordAuthFailedResponseImplCopyWithImpl(
      _$DiscordAuthFailedResponseImpl _value,
      $Res Function(_$DiscordAuthFailedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscordAuthFailedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DiscordAuthFailedResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscordAuthFailedResponseImpl implements _DiscordAuthFailedResponse {
  const _$DiscordAuthFailedResponseImpl({required this.error});

  factory _$DiscordAuthFailedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscordAuthFailedResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'DiscordAuthFailedResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscordAuthFailedResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DiscordAuthFailedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscordAuthFailedResponseImplCopyWith<_$DiscordAuthFailedResponseImpl>
      get copyWith => __$$DiscordAuthFailedResponseImplCopyWithImpl<
          _$DiscordAuthFailedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscordAuthFailedResponseImplToJson(
      this,
    );
  }
}

abstract class _DiscordAuthFailedResponse implements DiscordAuthFailedResponse {
  const factory _DiscordAuthFailedResponse({required final String error}) =
      _$DiscordAuthFailedResponseImpl;

  factory _DiscordAuthFailedResponse.fromJson(Map<String, dynamic> json) =
      _$DiscordAuthFailedResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of DiscordAuthFailedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscordAuthFailedResponseImplCopyWith<_$DiscordAuthFailedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

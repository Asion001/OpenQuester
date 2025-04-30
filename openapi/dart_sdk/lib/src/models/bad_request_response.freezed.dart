// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bad_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BadRequestResponse {
  String get error;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BadRequestResponseCopyWith<BadRequestResponse> get copyWith =>
      _$BadRequestResponseCopyWithImpl<BadRequestResponse>(
          this as BadRequestResponse, _$identity);

  /// Serializes this BadRequestResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadRequestResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'BadRequestResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class $BadRequestResponseCopyWith<$Res> {
  factory $BadRequestResponseCopyWith(
          BadRequestResponse value, $Res Function(BadRequestResponse) _then) =
      _$BadRequestResponseCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$BadRequestResponseCopyWithImpl<$Res>
    implements $BadRequestResponseCopyWith<$Res> {
  _$BadRequestResponseCopyWithImpl(this._self, this._then);

  final BadRequestResponse _self;
  final $Res Function(BadRequestResponse) _then;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_self.copyWith(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BadRequestResponse implements BadRequestResponse {
  const _BadRequestResponse({required this.error});
  factory _BadRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$BadRequestResponseFromJson(json);

  @override
  final String error;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BadRequestResponseCopyWith<_BadRequestResponse> get copyWith =>
      __$BadRequestResponseCopyWithImpl<_BadRequestResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BadRequestResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BadRequestResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'BadRequestResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$BadRequestResponseCopyWith<$Res>
    implements $BadRequestResponseCopyWith<$Res> {
  factory _$BadRequestResponseCopyWith(
          _BadRequestResponse value, $Res Function(_BadRequestResponse) _then) =
      __$BadRequestResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$BadRequestResponseCopyWithImpl<$Res>
    implements _$BadRequestResponseCopyWith<$Res> {
  __$BadRequestResponseCopyWithImpl(this._self, this._then);

  final _BadRequestResponse _self;
  final $Res Function(_BadRequestResponse) _then;

  /// Create a copy of BadRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_BadRequestResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

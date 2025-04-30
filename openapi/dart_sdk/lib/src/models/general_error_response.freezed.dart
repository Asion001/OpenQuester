// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralErrorResponse {
  String get error;

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeneralErrorResponseCopyWith<GeneralErrorResponse> get copyWith =>
      _$GeneralErrorResponseCopyWithImpl<GeneralErrorResponse>(
          this as GeneralErrorResponse, _$identity);

  /// Serializes this GeneralErrorResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeneralErrorResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GeneralErrorResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GeneralErrorResponseCopyWith<$Res> {
  factory $GeneralErrorResponseCopyWith(GeneralErrorResponse value,
          $Res Function(GeneralErrorResponse) _then) =
      _$GeneralErrorResponseCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GeneralErrorResponseCopyWithImpl<$Res>
    implements $GeneralErrorResponseCopyWith<$Res> {
  _$GeneralErrorResponseCopyWithImpl(this._self, this._then);

  final GeneralErrorResponse _self;
  final $Res Function(GeneralErrorResponse) _then;

  /// Create a copy of GeneralErrorResponse
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
class _GeneralErrorResponse implements GeneralErrorResponse {
  const _GeneralErrorResponse({required this.error});
  factory _GeneralErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneralErrorResponseFromJson(json);

  @override
  final String error;

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeneralErrorResponseCopyWith<_GeneralErrorResponse> get copyWith =>
      __$GeneralErrorResponseCopyWithImpl<_GeneralErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeneralErrorResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeneralErrorResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GeneralErrorResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$GeneralErrorResponseCopyWith<$Res>
    implements $GeneralErrorResponseCopyWith<$Res> {
  factory _$GeneralErrorResponseCopyWith(_GeneralErrorResponse value,
          $Res Function(_GeneralErrorResponse) _then) =
      __$GeneralErrorResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$GeneralErrorResponseCopyWithImpl<$Res>
    implements _$GeneralErrorResponseCopyWith<$Res> {
  __$GeneralErrorResponseCopyWithImpl(this._self, this._then);

  final _GeneralErrorResponse _self;
  final $Res Function(_GeneralErrorResponse) _then;

  /// Create a copy of GeneralErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_GeneralErrorResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

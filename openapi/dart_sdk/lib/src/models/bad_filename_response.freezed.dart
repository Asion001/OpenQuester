// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bad_filename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BadFilenameResponse {
  String get error;

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BadFilenameResponseCopyWith<BadFilenameResponse> get copyWith =>
      _$BadFilenameResponseCopyWithImpl<BadFilenameResponse>(
          this as BadFilenameResponse, _$identity);

  /// Serializes this BadFilenameResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadFilenameResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'BadFilenameResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class $BadFilenameResponseCopyWith<$Res> {
  factory $BadFilenameResponseCopyWith(
          BadFilenameResponse value, $Res Function(BadFilenameResponse) _then) =
      _$BadFilenameResponseCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$BadFilenameResponseCopyWithImpl<$Res>
    implements $BadFilenameResponseCopyWith<$Res> {
  _$BadFilenameResponseCopyWithImpl(this._self, this._then);

  final BadFilenameResponse _self;
  final $Res Function(BadFilenameResponse) _then;

  /// Create a copy of BadFilenameResponse
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
class _BadFilenameResponse implements BadFilenameResponse {
  const _BadFilenameResponse({required this.error});
  factory _BadFilenameResponse.fromJson(Map<String, dynamic> json) =>
      _$BadFilenameResponseFromJson(json);

  @override
  final String error;

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BadFilenameResponseCopyWith<_BadFilenameResponse> get copyWith =>
      __$BadFilenameResponseCopyWithImpl<_BadFilenameResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BadFilenameResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BadFilenameResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'BadFilenameResponse(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$BadFilenameResponseCopyWith<$Res>
    implements $BadFilenameResponseCopyWith<$Res> {
  factory _$BadFilenameResponseCopyWith(_BadFilenameResponse value,
          $Res Function(_BadFilenameResponse) _then) =
      __$BadFilenameResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$BadFilenameResponseCopyWithImpl<$Res>
    implements _$BadFilenameResponseCopyWith<$Res> {
  __$BadFilenameResponseCopyWithImpl(this._self, this._then);

  final _BadFilenameResponse _self;
  final $Res Function(_BadFilenameResponse) _then;

  /// Create a copy of BadFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(_BadFilenameResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

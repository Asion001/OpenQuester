// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileLinkResponse {
  String get url;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileLinkResponseCopyWith<FileLinkResponse> get copyWith =>
      _$FileLinkResponseCopyWithImpl<FileLinkResponse>(
          this as FileLinkResponse, _$identity);

  /// Serializes this FileLinkResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileLinkResponse &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'FileLinkResponse(url: $url)';
  }
}

/// @nodoc
abstract mixin class $FileLinkResponseCopyWith<$Res> {
  factory $FileLinkResponseCopyWith(
          FileLinkResponse value, $Res Function(FileLinkResponse) _then) =
      _$FileLinkResponseCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$FileLinkResponseCopyWithImpl<$Res>
    implements $FileLinkResponseCopyWith<$Res> {
  _$FileLinkResponseCopyWithImpl(this._self, this._then);

  final FileLinkResponse _self;
  final $Res Function(FileLinkResponse) _then;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FileLinkResponse implements FileLinkResponse {
  const _FileLinkResponse({required this.url});
  factory _FileLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$FileLinkResponseFromJson(json);

  @override
  final String url;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileLinkResponseCopyWith<_FileLinkResponse> get copyWith =>
      __$FileLinkResponseCopyWithImpl<_FileLinkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileLinkResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileLinkResponse &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'FileLinkResponse(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$FileLinkResponseCopyWith<$Res>
    implements $FileLinkResponseCopyWith<$Res> {
  factory _$FileLinkResponseCopyWith(
          _FileLinkResponse value, $Res Function(_FileLinkResponse) _then) =
      __$FileLinkResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$FileLinkResponseCopyWithImpl<$Res>
    implements _$FileLinkResponseCopyWith<$Res> {
  __$FileLinkResponseCopyWithImpl(this._self, this._then);

  final _FileLinkResponse _self;
  final $Res Function(_FileLinkResponse) _then;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(_FileLinkResponse(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileLinkResponse _$FileLinkResponseFromJson(Map<String, dynamic> json) {
  return _FileLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$FileLinkResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this FileLinkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileLinkResponseCopyWith<FileLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileLinkResponseCopyWith<$Res> {
  factory $FileLinkResponseCopyWith(
          FileLinkResponse value, $Res Function(FileLinkResponse) then) =
      _$FileLinkResponseCopyWithImpl<$Res, FileLinkResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$FileLinkResponseCopyWithImpl<$Res, $Val extends FileLinkResponse>
    implements $FileLinkResponseCopyWith<$Res> {
  _$FileLinkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileLinkResponseImplCopyWith<$Res>
    implements $FileLinkResponseCopyWith<$Res> {
  factory _$$FileLinkResponseImplCopyWith(_$FileLinkResponseImpl value,
          $Res Function(_$FileLinkResponseImpl) then) =
      __$$FileLinkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$FileLinkResponseImplCopyWithImpl<$Res>
    extends _$FileLinkResponseCopyWithImpl<$Res, _$FileLinkResponseImpl>
    implements _$$FileLinkResponseImplCopyWith<$Res> {
  __$$FileLinkResponseImplCopyWithImpl(_$FileLinkResponseImpl _value,
      $Res Function(_$FileLinkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$FileLinkResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileLinkResponseImpl implements _FileLinkResponse {
  const _$FileLinkResponseImpl({required this.url});

  factory _$FileLinkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileLinkResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'FileLinkResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileLinkResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileLinkResponseImplCopyWith<_$FileLinkResponseImpl> get copyWith =>
      __$$FileLinkResponseImplCopyWithImpl<_$FileLinkResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileLinkResponseImplToJson(
      this,
    );
  }
}

abstract class _FileLinkResponse implements FileLinkResponse {
  const factory _FileLinkResponse({required final String url}) =
      _$FileLinkResponseImpl;

  factory _FileLinkResponse.fromJson(Map<String, dynamic> json) =
      _$FileLinkResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of FileLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileLinkResponseImplCopyWith<_$FileLinkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

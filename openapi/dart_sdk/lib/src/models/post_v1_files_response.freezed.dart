// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_files_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostV1FilesResponse _$PostV1FilesResponseFromJson(Map<String, dynamic> json) {
  return _PostV1FilesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1FilesResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PostV1FilesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostV1FilesResponseCopyWith<PostV1FilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1FilesResponseCopyWith<$Res> {
  factory $PostV1FilesResponseCopyWith(
          PostV1FilesResponse value, $Res Function(PostV1FilesResponse) then) =
      _$PostV1FilesResponseCopyWithImpl<$Res, PostV1FilesResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PostV1FilesResponseCopyWithImpl<$Res, $Val extends PostV1FilesResponse>
    implements $PostV1FilesResponseCopyWith<$Res> {
  _$PostV1FilesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostV1FilesResponse
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
abstract class _$$PostV1FilesResponseImplCopyWith<$Res>
    implements $PostV1FilesResponseCopyWith<$Res> {
  factory _$$PostV1FilesResponseImplCopyWith(_$PostV1FilesResponseImpl value,
          $Res Function(_$PostV1FilesResponseImpl) then) =
      __$$PostV1FilesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PostV1FilesResponseImplCopyWithImpl<$Res>
    extends _$PostV1FilesResponseCopyWithImpl<$Res, _$PostV1FilesResponseImpl>
    implements _$$PostV1FilesResponseImplCopyWith<$Res> {
  __$$PostV1FilesResponseImplCopyWithImpl(_$PostV1FilesResponseImpl _value,
      $Res Function(_$PostV1FilesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PostV1FilesResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostV1FilesResponseImpl implements _PostV1FilesResponse {
  const _$PostV1FilesResponseImpl({required this.url});

  factory _$PostV1FilesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostV1FilesResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'PostV1FilesResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostV1FilesResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PostV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostV1FilesResponseImplCopyWith<_$PostV1FilesResponseImpl> get copyWith =>
      __$$PostV1FilesResponseImplCopyWithImpl<_$PostV1FilesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostV1FilesResponseImplToJson(
      this,
    );
  }
}

abstract class _PostV1FilesResponse implements PostV1FilesResponse {
  const factory _PostV1FilesResponse({required final String url}) =
      _$PostV1FilesResponseImpl;

  factory _PostV1FilesResponse.fromJson(Map<String, dynamic> json) =
      _$PostV1FilesResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of PostV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostV1FilesResponseImplCopyWith<_$PostV1FilesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

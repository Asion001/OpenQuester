// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostV1FileResponse _$PostV1FileResponseFromJson(Map<String, dynamic> json) {
  return _PostV1FileResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1FileResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PostV1FileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostV1FileResponseCopyWith<PostV1FileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1FileResponseCopyWith<$Res> {
  factory $PostV1FileResponseCopyWith(
          PostV1FileResponse value, $Res Function(PostV1FileResponse) then) =
      _$PostV1FileResponseCopyWithImpl<$Res, PostV1FileResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PostV1FileResponseCopyWithImpl<$Res, $Val extends PostV1FileResponse>
    implements $PostV1FileResponseCopyWith<$Res> {
  _$PostV1FileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostV1FileResponse
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
abstract class _$$PostV1FileResponseImplCopyWith<$Res>
    implements $PostV1FileResponseCopyWith<$Res> {
  factory _$$PostV1FileResponseImplCopyWith(_$PostV1FileResponseImpl value,
          $Res Function(_$PostV1FileResponseImpl) then) =
      __$$PostV1FileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PostV1FileResponseImplCopyWithImpl<$Res>
    extends _$PostV1FileResponseCopyWithImpl<$Res, _$PostV1FileResponseImpl>
    implements _$$PostV1FileResponseImplCopyWith<$Res> {
  __$$PostV1FileResponseImplCopyWithImpl(_$PostV1FileResponseImpl _value,
      $Res Function(_$PostV1FileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PostV1FileResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostV1FileResponseImpl implements _PostV1FileResponse {
  const _$PostV1FileResponseImpl({required this.url});

  factory _$PostV1FileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostV1FileResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'PostV1FileResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostV1FileResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PostV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostV1FileResponseImplCopyWith<_$PostV1FileResponseImpl> get copyWith =>
      __$$PostV1FileResponseImplCopyWithImpl<_$PostV1FileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostV1FileResponseImplToJson(
      this,
    );
  }
}

abstract class _PostV1FileResponse implements PostV1FileResponse {
  const factory _PostV1FileResponse({required final String url}) =
      _$PostV1FileResponseImpl;

  factory _PostV1FileResponse.fromJson(Map<String, dynamic> json) =
      _$PostV1FileResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of PostV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostV1FileResponseImplCopyWith<_$PostV1FileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

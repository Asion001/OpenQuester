// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_files_filename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostV1FilesFilenameResponse _$PostV1FilesFilenameResponseFromJson(
    Map<String, dynamic> json) {
  return _PostV1FilesFilenameResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1FilesFilenameResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PostV1FilesFilenameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostV1FilesFilenameResponseCopyWith<PostV1FilesFilenameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1FilesFilenameResponseCopyWith<$Res> {
  factory $PostV1FilesFilenameResponseCopyWith(
          PostV1FilesFilenameResponse value,
          $Res Function(PostV1FilesFilenameResponse) then) =
      _$PostV1FilesFilenameResponseCopyWithImpl<$Res,
          PostV1FilesFilenameResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$PostV1FilesFilenameResponseCopyWithImpl<$Res,
        $Val extends PostV1FilesFilenameResponse>
    implements $PostV1FilesFilenameResponseCopyWith<$Res> {
  _$PostV1FilesFilenameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostV1FilesFilenameResponse
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
abstract class _$$PostV1FilesFilenameResponseImplCopyWith<$Res>
    implements $PostV1FilesFilenameResponseCopyWith<$Res> {
  factory _$$PostV1FilesFilenameResponseImplCopyWith(
          _$PostV1FilesFilenameResponseImpl value,
          $Res Function(_$PostV1FilesFilenameResponseImpl) then) =
      __$$PostV1FilesFilenameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PostV1FilesFilenameResponseImplCopyWithImpl<$Res>
    extends _$PostV1FilesFilenameResponseCopyWithImpl<$Res,
        _$PostV1FilesFilenameResponseImpl>
    implements _$$PostV1FilesFilenameResponseImplCopyWith<$Res> {
  __$$PostV1FilesFilenameResponseImplCopyWithImpl(
      _$PostV1FilesFilenameResponseImpl _value,
      $Res Function(_$PostV1FilesFilenameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PostV1FilesFilenameResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostV1FilesFilenameResponseImpl
    implements _PostV1FilesFilenameResponse {
  const _$PostV1FilesFilenameResponseImpl({required this.url});

  factory _$PostV1FilesFilenameResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostV1FilesFilenameResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'PostV1FilesFilenameResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostV1FilesFilenameResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PostV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostV1FilesFilenameResponseImplCopyWith<_$PostV1FilesFilenameResponseImpl>
      get copyWith => __$$PostV1FilesFilenameResponseImplCopyWithImpl<
          _$PostV1FilesFilenameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostV1FilesFilenameResponseImplToJson(
      this,
    );
  }
}

abstract class _PostV1FilesFilenameResponse
    implements PostV1FilesFilenameResponse {
  const factory _PostV1FilesFilenameResponse({required final String url}) =
      _$PostV1FilesFilenameResponseImpl;

  factory _PostV1FilesFilenameResponse.fromJson(Map<String, dynamic> json) =
      _$PostV1FilesFilenameResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of PostV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostV1FilesFilenameResponseImplCopyWith<_$PostV1FilesFilenameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

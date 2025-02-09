// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileUploadLinkResponse _$FileUploadLinkResponseFromJson(
    Map<String, dynamic> json) {
  return _FileUploadLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$FileUploadLinkResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this FileUploadLinkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileUploadLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileUploadLinkResponseCopyWith<FileUploadLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadLinkResponseCopyWith<$Res> {
  factory $FileUploadLinkResponseCopyWith(FileUploadLinkResponse value,
          $Res Function(FileUploadLinkResponse) then) =
      _$FileUploadLinkResponseCopyWithImpl<$Res, FileUploadLinkResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$FileUploadLinkResponseCopyWithImpl<$Res,
        $Val extends FileUploadLinkResponse>
    implements $FileUploadLinkResponseCopyWith<$Res> {
  _$FileUploadLinkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileUploadLinkResponse
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
abstract class _$$FileUploadLinkResponseImplCopyWith<$Res>
    implements $FileUploadLinkResponseCopyWith<$Res> {
  factory _$$FileUploadLinkResponseImplCopyWith(
          _$FileUploadLinkResponseImpl value,
          $Res Function(_$FileUploadLinkResponseImpl) then) =
      __$$FileUploadLinkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$FileUploadLinkResponseImplCopyWithImpl<$Res>
    extends _$FileUploadLinkResponseCopyWithImpl<$Res,
        _$FileUploadLinkResponseImpl>
    implements _$$FileUploadLinkResponseImplCopyWith<$Res> {
  __$$FileUploadLinkResponseImplCopyWithImpl(
      _$FileUploadLinkResponseImpl _value,
      $Res Function(_$FileUploadLinkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileUploadLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$FileUploadLinkResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadLinkResponseImpl implements _FileUploadLinkResponse {
  const _$FileUploadLinkResponseImpl({required this.url});

  factory _$FileUploadLinkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadLinkResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'FileUploadLinkResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadLinkResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of FileUploadLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadLinkResponseImplCopyWith<_$FileUploadLinkResponseImpl>
      get copyWith => __$$FileUploadLinkResponseImplCopyWithImpl<
          _$FileUploadLinkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadLinkResponseImplToJson(
      this,
    );
  }
}

abstract class _FileUploadLinkResponse implements FileUploadLinkResponse {
  const factory _FileUploadLinkResponse({required final String url}) =
      _$FileUploadLinkResponseImpl;

  factory _FileUploadLinkResponse.fromJson(Map<String, dynamic> json) =
      _$FileUploadLinkResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of FileUploadLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileUploadLinkResponseImplCopyWith<_$FileUploadLinkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

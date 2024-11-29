// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_package_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostV1PackageUploadResponse _$PostV1PackageUploadResponseFromJson(
    Map<String, dynamic> json) {
  return _PostV1PackageUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1PackageUploadResponse {
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this PostV1PackageUploadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostV1PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostV1PackageUploadResponseCopyWith<PostV1PackageUploadResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1PackageUploadResponseCopyWith<$Res> {
  factory $PostV1PackageUploadResponseCopyWith(
          PostV1PackageUploadResponse value,
          $Res Function(PostV1PackageUploadResponse) then) =
      _$PostV1PackageUploadResponseCopyWithImpl<$Res,
          PostV1PackageUploadResponse>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$PostV1PackageUploadResponseCopyWithImpl<$Res,
        $Val extends PostV1PackageUploadResponse>
    implements $PostV1PackageUploadResponseCopyWith<$Res> {
  _$PostV1PackageUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostV1PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostV1PackageUploadResponseImplCopyWith<$Res>
    implements $PostV1PackageUploadResponseCopyWith<$Res> {
  factory _$$PostV1PackageUploadResponseImplCopyWith(
          _$PostV1PackageUploadResponseImpl value,
          $Res Function(_$PostV1PackageUploadResponseImpl) then) =
      __$$PostV1PackageUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$PostV1PackageUploadResponseImplCopyWithImpl<$Res>
    extends _$PostV1PackageUploadResponseCopyWithImpl<$Res,
        _$PostV1PackageUploadResponseImpl>
    implements _$$PostV1PackageUploadResponseImplCopyWith<$Res> {
  __$$PostV1PackageUploadResponseImplCopyWithImpl(
      _$PostV1PackageUploadResponseImpl _value,
      $Res Function(_$PostV1PackageUploadResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostV1PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$PostV1PackageUploadResponseImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostV1PackageUploadResponseImpl
    implements _PostV1PackageUploadResponse {
  const _$PostV1PackageUploadResponseImpl({required this.filename});

  factory _$PostV1PackageUploadResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostV1PackageUploadResponseImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'PostV1PackageUploadResponse(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostV1PackageUploadResponseImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  /// Create a copy of PostV1PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostV1PackageUploadResponseImplCopyWith<_$PostV1PackageUploadResponseImpl>
      get copyWith => __$$PostV1PackageUploadResponseImplCopyWithImpl<
          _$PostV1PackageUploadResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostV1PackageUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _PostV1PackageUploadResponse
    implements PostV1PackageUploadResponse {
  const factory _PostV1PackageUploadResponse({required final String filename}) =
      _$PostV1PackageUploadResponseImpl;

  factory _PostV1PackageUploadResponse.fromJson(Map<String, dynamic> json) =
      _$PostV1PackageUploadResponseImpl.fromJson;

  @override
  String get filename;

  /// Create a copy of PostV1PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostV1PackageUploadResponseImplCopyWith<_$PostV1PackageUploadResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

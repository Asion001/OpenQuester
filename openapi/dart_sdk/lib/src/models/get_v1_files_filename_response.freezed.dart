// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_files_filename_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetV1FilesFilenameResponse _$GetV1FilesFilenameResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1FilesFilenameResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1FilesFilenameResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this GetV1FilesFilenameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetV1FilesFilenameResponseCopyWith<GetV1FilesFilenameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1FilesFilenameResponseCopyWith<$Res> {
  factory $GetV1FilesFilenameResponseCopyWith(GetV1FilesFilenameResponse value,
          $Res Function(GetV1FilesFilenameResponse) then) =
      _$GetV1FilesFilenameResponseCopyWithImpl<$Res,
          GetV1FilesFilenameResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$GetV1FilesFilenameResponseCopyWithImpl<$Res,
        $Val extends GetV1FilesFilenameResponse>
    implements $GetV1FilesFilenameResponseCopyWith<$Res> {
  _$GetV1FilesFilenameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetV1FilesFilenameResponse
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
abstract class _$$GetV1FilesFilenameResponseImplCopyWith<$Res>
    implements $GetV1FilesFilenameResponseCopyWith<$Res> {
  factory _$$GetV1FilesFilenameResponseImplCopyWith(
          _$GetV1FilesFilenameResponseImpl value,
          $Res Function(_$GetV1FilesFilenameResponseImpl) then) =
      __$$GetV1FilesFilenameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$GetV1FilesFilenameResponseImplCopyWithImpl<$Res>
    extends _$GetV1FilesFilenameResponseCopyWithImpl<$Res,
        _$GetV1FilesFilenameResponseImpl>
    implements _$$GetV1FilesFilenameResponseImplCopyWith<$Res> {
  __$$GetV1FilesFilenameResponseImplCopyWithImpl(
      _$GetV1FilesFilenameResponseImpl _value,
      $Res Function(_$GetV1FilesFilenameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$GetV1FilesFilenameResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetV1FilesFilenameResponseImpl implements _GetV1FilesFilenameResponse {
  const _$GetV1FilesFilenameResponseImpl({required this.url});

  factory _$GetV1FilesFilenameResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetV1FilesFilenameResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'GetV1FilesFilenameResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetV1FilesFilenameResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of GetV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetV1FilesFilenameResponseImplCopyWith<_$GetV1FilesFilenameResponseImpl>
      get copyWith => __$$GetV1FilesFilenameResponseImplCopyWithImpl<
          _$GetV1FilesFilenameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetV1FilesFilenameResponseImplToJson(
      this,
    );
  }
}

abstract class _GetV1FilesFilenameResponse
    implements GetV1FilesFilenameResponse {
  const factory _GetV1FilesFilenameResponse({required final String url}) =
      _$GetV1FilesFilenameResponseImpl;

  factory _GetV1FilesFilenameResponse.fromJson(Map<String, dynamic> json) =
      _$GetV1FilesFilenameResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of GetV1FilesFilenameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetV1FilesFilenameResponseImplCopyWith<_$GetV1FilesFilenameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

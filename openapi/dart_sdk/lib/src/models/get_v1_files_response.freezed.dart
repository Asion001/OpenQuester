// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_files_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetV1FilesResponse _$GetV1FilesResponseFromJson(Map<String, dynamic> json) {
  return _GetV1FilesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1FilesResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this GetV1FilesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetV1FilesResponseCopyWith<GetV1FilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1FilesResponseCopyWith<$Res> {
  factory $GetV1FilesResponseCopyWith(
          GetV1FilesResponse value, $Res Function(GetV1FilesResponse) then) =
      _$GetV1FilesResponseCopyWithImpl<$Res, GetV1FilesResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$GetV1FilesResponseCopyWithImpl<$Res, $Val extends GetV1FilesResponse>
    implements $GetV1FilesResponseCopyWith<$Res> {
  _$GetV1FilesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetV1FilesResponse
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
abstract class _$$GetV1FilesResponseImplCopyWith<$Res>
    implements $GetV1FilesResponseCopyWith<$Res> {
  factory _$$GetV1FilesResponseImplCopyWith(_$GetV1FilesResponseImpl value,
          $Res Function(_$GetV1FilesResponseImpl) then) =
      __$$GetV1FilesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$GetV1FilesResponseImplCopyWithImpl<$Res>
    extends _$GetV1FilesResponseCopyWithImpl<$Res, _$GetV1FilesResponseImpl>
    implements _$$GetV1FilesResponseImplCopyWith<$Res> {
  __$$GetV1FilesResponseImplCopyWithImpl(_$GetV1FilesResponseImpl _value,
      $Res Function(_$GetV1FilesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$GetV1FilesResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetV1FilesResponseImpl implements _GetV1FilesResponse {
  const _$GetV1FilesResponseImpl({required this.url});

  factory _$GetV1FilesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetV1FilesResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'GetV1FilesResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetV1FilesResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of GetV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetV1FilesResponseImplCopyWith<_$GetV1FilesResponseImpl> get copyWith =>
      __$$GetV1FilesResponseImplCopyWithImpl<_$GetV1FilesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetV1FilesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetV1FilesResponse implements GetV1FilesResponse {
  const factory _GetV1FilesResponse({required final String url}) =
      _$GetV1FilesResponseImpl;

  factory _GetV1FilesResponse.fromJson(Map<String, dynamic> json) =
      _$GetV1FilesResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of GetV1FilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetV1FilesResponseImplCopyWith<_$GetV1FilesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

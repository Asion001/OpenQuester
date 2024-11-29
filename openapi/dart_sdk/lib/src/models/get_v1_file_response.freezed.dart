// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetV1FileResponse _$GetV1FileResponseFromJson(Map<String, dynamic> json) {
  return _GetV1FileResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1FileResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this GetV1FileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetV1FileResponseCopyWith<GetV1FileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1FileResponseCopyWith<$Res> {
  factory $GetV1FileResponseCopyWith(
          GetV1FileResponse value, $Res Function(GetV1FileResponse) then) =
      _$GetV1FileResponseCopyWithImpl<$Res, GetV1FileResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$GetV1FileResponseCopyWithImpl<$Res, $Val extends GetV1FileResponse>
    implements $GetV1FileResponseCopyWith<$Res> {
  _$GetV1FileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetV1FileResponse
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
abstract class _$$GetV1FileResponseImplCopyWith<$Res>
    implements $GetV1FileResponseCopyWith<$Res> {
  factory _$$GetV1FileResponseImplCopyWith(_$GetV1FileResponseImpl value,
          $Res Function(_$GetV1FileResponseImpl) then) =
      __$$GetV1FileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$GetV1FileResponseImplCopyWithImpl<$Res>
    extends _$GetV1FileResponseCopyWithImpl<$Res, _$GetV1FileResponseImpl>
    implements _$$GetV1FileResponseImplCopyWith<$Res> {
  __$$GetV1FileResponseImplCopyWithImpl(_$GetV1FileResponseImpl _value,
      $Res Function(_$GetV1FileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$GetV1FileResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetV1FileResponseImpl implements _GetV1FileResponse {
  const _$GetV1FileResponseImpl({required this.url});

  factory _$GetV1FileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetV1FileResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'GetV1FileResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetV1FileResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of GetV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetV1FileResponseImplCopyWith<_$GetV1FileResponseImpl> get copyWith =>
      __$$GetV1FileResponseImplCopyWithImpl<_$GetV1FileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetV1FileResponseImplToJson(
      this,
    );
  }
}

abstract class _GetV1FileResponse implements GetV1FileResponse {
  const factory _GetV1FileResponse({required final String url}) =
      _$GetV1FileResponseImpl;

  factory _GetV1FileResponse.fromJson(Map<String, dynamic> json) =
      _$GetV1FileResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of GetV1FileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetV1FileResponseImplCopyWith<_$GetV1FileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_package_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IPackageUploadResponse _$IPackageUploadResponseFromJson(
    Map<String, dynamic> json) {
  return _IPackageUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$IPackageUploadResponse {
  int get id => throw _privateConstructorUsedError;
  Map<String, String> get uploadLinks => throw _privateConstructorUsedError;

  /// Serializes this IPackageUploadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IPackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IPackageUploadResponseCopyWith<IPackageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPackageUploadResponseCopyWith<$Res> {
  factory $IPackageUploadResponseCopyWith(IPackageUploadResponse value,
          $Res Function(IPackageUploadResponse) then) =
      _$IPackageUploadResponseCopyWithImpl<$Res, IPackageUploadResponse>;
  @useResult
  $Res call({int id, Map<String, String> uploadLinks});
}

/// @nodoc
class _$IPackageUploadResponseCopyWithImpl<$Res,
        $Val extends IPackageUploadResponse>
    implements $IPackageUploadResponseCopyWith<$Res> {
  _$IPackageUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IPackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uploadLinks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uploadLinks: null == uploadLinks
          ? _value.uploadLinks
          : uploadLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IPackageUploadResponseImplCopyWith<$Res>
    implements $IPackageUploadResponseCopyWith<$Res> {
  factory _$$IPackageUploadResponseImplCopyWith(
          _$IPackageUploadResponseImpl value,
          $Res Function(_$IPackageUploadResponseImpl) then) =
      __$$IPackageUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<String, String> uploadLinks});
}

/// @nodoc
class __$$IPackageUploadResponseImplCopyWithImpl<$Res>
    extends _$IPackageUploadResponseCopyWithImpl<$Res,
        _$IPackageUploadResponseImpl>
    implements _$$IPackageUploadResponseImplCopyWith<$Res> {
  __$$IPackageUploadResponseImplCopyWithImpl(
      _$IPackageUploadResponseImpl _value,
      $Res Function(_$IPackageUploadResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of IPackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uploadLinks = null,
  }) {
    return _then(_$IPackageUploadResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uploadLinks: null == uploadLinks
          ? _value._uploadLinks
          : uploadLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IPackageUploadResponseImpl implements _IPackageUploadResponse {
  const _$IPackageUploadResponseImpl(
      {required this.id, required final Map<String, String> uploadLinks})
      : _uploadLinks = uploadLinks;

  factory _$IPackageUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IPackageUploadResponseImplFromJson(json);

  @override
  final int id;
  final Map<String, String> _uploadLinks;
  @override
  Map<String, String> get uploadLinks {
    if (_uploadLinks is EqualUnmodifiableMapView) return _uploadLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_uploadLinks);
  }

  @override
  String toString() {
    return 'IPackageUploadResponse(id: $id, uploadLinks: $uploadLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IPackageUploadResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._uploadLinks, _uploadLinks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_uploadLinks));

  /// Create a copy of IPackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IPackageUploadResponseImplCopyWith<_$IPackageUploadResponseImpl>
      get copyWith => __$$IPackageUploadResponseImplCopyWithImpl<
          _$IPackageUploadResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IPackageUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _IPackageUploadResponse implements IPackageUploadResponse {
  const factory _IPackageUploadResponse(
          {required final int id,
          required final Map<String, String> uploadLinks}) =
      _$IPackageUploadResponseImpl;

  factory _IPackageUploadResponse.fromJson(Map<String, dynamic> json) =
      _$IPackageUploadResponseImpl.fromJson;

  @override
  int get id;
  @override
  Map<String, String> get uploadLinks;

  /// Create a copy of IPackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IPackageUploadResponseImplCopyWith<_$IPackageUploadResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageUploadResponse _$PackageUploadResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageUploadResponse {
  int get id => throw _privateConstructorUsedError;
  Map<String, String> get uploadLinks => throw _privateConstructorUsedError;

  /// Serializes this PackageUploadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageUploadResponseCopyWith<PackageUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageUploadResponseCopyWith<$Res> {
  factory $PackageUploadResponseCopyWith(PackageUploadResponse value,
          $Res Function(PackageUploadResponse) then) =
      _$PackageUploadResponseCopyWithImpl<$Res, PackageUploadResponse>;
  @useResult
  $Res call({int id, Map<String, String> uploadLinks});
}

/// @nodoc
class _$PackageUploadResponseCopyWithImpl<$Res,
        $Val extends PackageUploadResponse>
    implements $PackageUploadResponseCopyWith<$Res> {
  _$PackageUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageUploadResponse
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
abstract class _$$PackageUploadResponseImplCopyWith<$Res>
    implements $PackageUploadResponseCopyWith<$Res> {
  factory _$$PackageUploadResponseImplCopyWith(
          _$PackageUploadResponseImpl value,
          $Res Function(_$PackageUploadResponseImpl) then) =
      __$$PackageUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<String, String> uploadLinks});
}

/// @nodoc
class __$$PackageUploadResponseImplCopyWithImpl<$Res>
    extends _$PackageUploadResponseCopyWithImpl<$Res,
        _$PackageUploadResponseImpl>
    implements _$$PackageUploadResponseImplCopyWith<$Res> {
  __$$PackageUploadResponseImplCopyWithImpl(_$PackageUploadResponseImpl _value,
      $Res Function(_$PackageUploadResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uploadLinks = null,
  }) {
    return _then(_$PackageUploadResponseImpl(
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
class _$PackageUploadResponseImpl implements _PackageUploadResponse {
  const _$PackageUploadResponseImpl(
      {required this.id, required final Map<String, String> uploadLinks})
      : _uploadLinks = uploadLinks;

  factory _$PackageUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageUploadResponseImplFromJson(json);

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
    return 'PackageUploadResponse(id: $id, uploadLinks: $uploadLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageUploadResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._uploadLinks, _uploadLinks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_uploadLinks));

  /// Create a copy of PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageUploadResponseImplCopyWith<_$PackageUploadResponseImpl>
      get copyWith => __$$PackageUploadResponseImplCopyWithImpl<
          _$PackageUploadResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _PackageUploadResponse implements PackageUploadResponse {
  const factory _PackageUploadResponse(
          {required final int id,
          required final Map<String, String> uploadLinks}) =
      _$PackageUploadResponseImpl;

  factory _PackageUploadResponse.fromJson(Map<String, dynamic> json) =
      _$PackageUploadResponseImpl.fromJson;

  @override
  int get id;
  @override
  Map<String, String> get uploadLinks;

  /// Create a copy of PackageUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageUploadResponseImplCopyWith<_$PackageUploadResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

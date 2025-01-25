// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_v1_packages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostV1PackagesResponse _$PostV1PackagesResponseFromJson(
    Map<String, dynamic> json) {
  return _PostV1PackagesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostV1PackagesResponse {
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this PostV1PackagesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostV1PackagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostV1PackagesResponseCopyWith<PostV1PackagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostV1PackagesResponseCopyWith<$Res> {
  factory $PostV1PackagesResponseCopyWith(PostV1PackagesResponse value,
          $Res Function(PostV1PackagesResponse) then) =
      _$PostV1PackagesResponseCopyWithImpl<$Res, PostV1PackagesResponse>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$PostV1PackagesResponseCopyWithImpl<$Res,
        $Val extends PostV1PackagesResponse>
    implements $PostV1PackagesResponseCopyWith<$Res> {
  _$PostV1PackagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostV1PackagesResponse
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
abstract class _$$PostV1PackagesResponseImplCopyWith<$Res>
    implements $PostV1PackagesResponseCopyWith<$Res> {
  factory _$$PostV1PackagesResponseImplCopyWith(
          _$PostV1PackagesResponseImpl value,
          $Res Function(_$PostV1PackagesResponseImpl) then) =
      __$$PostV1PackagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$PostV1PackagesResponseImplCopyWithImpl<$Res>
    extends _$PostV1PackagesResponseCopyWithImpl<$Res,
        _$PostV1PackagesResponseImpl>
    implements _$$PostV1PackagesResponseImplCopyWith<$Res> {
  __$$PostV1PackagesResponseImplCopyWithImpl(
      _$PostV1PackagesResponseImpl _value,
      $Res Function(_$PostV1PackagesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostV1PackagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$PostV1PackagesResponseImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostV1PackagesResponseImpl implements _PostV1PackagesResponse {
  const _$PostV1PackagesResponseImpl({required this.filename});

  factory _$PostV1PackagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostV1PackagesResponseImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'PostV1PackagesResponse(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostV1PackagesResponseImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  /// Create a copy of PostV1PackagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostV1PackagesResponseImplCopyWith<_$PostV1PackagesResponseImpl>
      get copyWith => __$$PostV1PackagesResponseImplCopyWithImpl<
          _$PostV1PackagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostV1PackagesResponseImplToJson(
      this,
    );
  }
}

abstract class _PostV1PackagesResponse implements PostV1PackagesResponse {
  const factory _PostV1PackagesResponse({required final String filename}) =
      _$PostV1PackagesResponseImpl;

  factory _PostV1PackagesResponse.fromJson(Map<String, dynamic> json) =
      _$PostV1PackagesResponseImpl.fromJson;

  @override
  String get filename;

  /// Create a copy of PostV1PackagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostV1PackagesResponseImplCopyWith<_$PostV1PackagesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

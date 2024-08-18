// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SiqFile _$SiqFileFromJson(Map<String, dynamic> json) {
  return _SiqFile.fromJson(json);
}

/// @nodoc
mixin _$SiqFile {
  SiqFileMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this SiqFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileCopyWith<SiqFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileCopyWith<$Res> {
  factory $SiqFileCopyWith(SiqFile value, $Res Function(SiqFile) then) =
      _$SiqFileCopyWithImpl<$Res, SiqFile>;
  @useResult
  $Res call({SiqFileMetadata metadata});

  $SiqFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$SiqFileCopyWithImpl<$Res, $Val extends SiqFile>
    implements $SiqFileCopyWith<$Res> {
  _$SiqFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as SiqFileMetadata,
    ) as $Val);
  }

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiqFileMetadataCopyWith<$Res> get metadata {
    return $SiqFileMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiqFileImplCopyWith<$Res> implements $SiqFileCopyWith<$Res> {
  factory _$$SiqFileImplCopyWith(
          _$SiqFileImpl value, $Res Function(_$SiqFileImpl) then) =
      __$$SiqFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SiqFileMetadata metadata});

  @override
  $SiqFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$SiqFileImplCopyWithImpl<$Res>
    extends _$SiqFileCopyWithImpl<$Res, _$SiqFileImpl>
    implements _$$SiqFileImplCopyWith<$Res> {
  __$$SiqFileImplCopyWithImpl(
      _$SiqFileImpl _value, $Res Function(_$SiqFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_$SiqFileImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as SiqFileMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileImpl implements _SiqFile {
  _$SiqFileImpl({required this.metadata});

  factory _$SiqFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileImplFromJson(json);

  @override
  final SiqFileMetadata metadata;

  @override
  String toString() {
    return 'SiqFile(metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metadata);

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileImplCopyWith<_$SiqFileImpl> get copyWith =>
      __$$SiqFileImplCopyWithImpl<_$SiqFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileImplToJson(
      this,
    );
  }
}

abstract class _SiqFile implements SiqFile {
  factory _SiqFile({required final SiqFileMetadata metadata}) = _$SiqFileImpl;

  factory _SiqFile.fromJson(Map<String, dynamic> json) = _$SiqFileImpl.fromJson;

  @override
  SiqFileMetadata get metadata;

  /// Create a copy of SiqFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileImplCopyWith<_$SiqFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

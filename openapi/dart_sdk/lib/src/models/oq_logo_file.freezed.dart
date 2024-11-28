// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_logo_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQLogoFile _$OQLogoFileFromJson(Map<String, dynamic> json) {
  return _OQLogoFile.fromJson(json);
}

/// @nodoc
mixin _$OQLogoFile {
  OQFileContentStructure get file => throw _privateConstructorUsedError;

  /// Serializes this OQLogoFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQLogoFileCopyWith<OQLogoFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQLogoFileCopyWith<$Res> {
  factory $OQLogoFileCopyWith(
          OQLogoFile value, $Res Function(OQLogoFile) then) =
      _$OQLogoFileCopyWithImpl<$Res, OQLogoFile>;
  @useResult
  $Res call({OQFileContentStructure file});

  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class _$OQLogoFileCopyWithImpl<$Res, $Val extends OQLogoFile>
    implements $OQLogoFileCopyWith<$Res> {
  _$OQLogoFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
    ) as $Val);
  }

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQFileContentStructureCopyWith<$Res> get file {
    return $OQFileContentStructureCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OQLogoFileImplCopyWith<$Res>
    implements $OQLogoFileCopyWith<$Res> {
  factory _$$OQLogoFileImplCopyWith(
          _$OQLogoFileImpl value, $Res Function(_$OQLogoFileImpl) then) =
      __$$OQLogoFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQFileContentStructure file});

  @override
  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class __$$OQLogoFileImplCopyWithImpl<$Res>
    extends _$OQLogoFileCopyWithImpl<$Res, _$OQLogoFileImpl>
    implements _$$OQLogoFileImplCopyWith<$Res> {
  __$$OQLogoFileImplCopyWithImpl(
      _$OQLogoFileImpl _value, $Res Function(_$OQLogoFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$OQLogoFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQLogoFileImpl implements _OQLogoFile {
  const _$OQLogoFileImpl({required this.file});

  factory _$OQLogoFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQLogoFileImplFromJson(json);

  @override
  final OQFileContentStructure file;

  @override
  String toString() {
    return 'OQLogoFile(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQLogoFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQLogoFileImplCopyWith<_$OQLogoFileImpl> get copyWith =>
      __$$OQLogoFileImplCopyWithImpl<_$OQLogoFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQLogoFileImplToJson(
      this,
    );
  }
}

abstract class _OQLogoFile implements OQLogoFile {
  const factory _OQLogoFile({required final OQFileContentStructure file}) =
      _$OQLogoFileImpl;

  factory _OQLogoFile.fromJson(Map<String, dynamic> json) =
      _$OQLogoFileImpl.fromJson;

  @override
  OQFileContentStructure get file;

  /// Create a copy of OQLogoFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQLogoFileImplCopyWith<_$OQLogoFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

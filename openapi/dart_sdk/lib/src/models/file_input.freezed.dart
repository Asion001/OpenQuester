// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileInput _$FileInputFromJson(Map<String, dynamic> json) {
  return _FileInput.fromJson(json);
}

/// @nodoc
mixin _$FileInput {
  /// MD5 hash of the file
  String get md5 => throw _privateConstructorUsedError;
  PackageFileType get type => throw _privateConstructorUsedError;

  /// Serializes this FileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileInputCopyWith<FileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInputCopyWith<$Res> {
  factory $FileInputCopyWith(FileInput value, $Res Function(FileInput) then) =
      _$FileInputCopyWithImpl<$Res, FileInput>;
  @useResult
  $Res call({String md5, PackageFileType type});
}

/// @nodoc
class _$FileInputCopyWithImpl<$Res, $Val extends FileInput>
    implements $FileInputCopyWith<$Res> {
  _$FileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? md5 = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageFileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileInputImplCopyWith<$Res>
    implements $FileInputCopyWith<$Res> {
  factory _$$FileInputImplCopyWith(
          _$FileInputImpl value, $Res Function(_$FileInputImpl) then) =
      __$$FileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String md5, PackageFileType type});
}

/// @nodoc
class __$$FileInputImplCopyWithImpl<$Res>
    extends _$FileInputCopyWithImpl<$Res, _$FileInputImpl>
    implements _$$FileInputImplCopyWith<$Res> {
  __$$FileInputImplCopyWithImpl(
      _$FileInputImpl _value, $Res Function(_$FileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? md5 = null,
    Object? type = null,
  }) {
    return _then(_$FileInputImpl(
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageFileType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileInputImpl implements _FileInput {
  const _$FileInputImpl({required this.md5, required this.type});

  factory _$FileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileInputImplFromJson(json);

  /// MD5 hash of the file
  @override
  final String md5;
  @override
  final PackageFileType type;

  @override
  String toString() {
    return 'FileInput(md5: $md5, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileInputImpl &&
            (identical(other.md5, md5) || other.md5 == md5) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, md5, type);

  /// Create a copy of FileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileInputImplCopyWith<_$FileInputImpl> get copyWith =>
      __$$FileInputImplCopyWithImpl<_$FileInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileInputImplToJson(
      this,
    );
  }
}

abstract class _FileInput implements FileInput {
  const factory _FileInput(
      {required final String md5,
      required final PackageFileType type}) = _$FileInputImpl;

  factory _FileInput.fromJson(Map<String, dynamic> json) =
      _$FileInputImpl.fromJson;

  /// MD5 hash of the file
  @override
  String get md5;
  @override
  PackageFileType get type;

  /// Create a copy of FileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileInputImplCopyWith<_$FileInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

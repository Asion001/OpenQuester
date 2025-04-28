// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_answer_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageAnswerFile _$PackageAnswerFileFromJson(Map<String, dynamic> json) {
  return _PackageAnswerFile.fromJson(json);
}

/// @nodoc
mixin _$PackageAnswerFile {
  int? get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  FileItem get file => throw _privateConstructorUsedError;

  /// Display duration in milliseconds
  int get displayTime => throw _privateConstructorUsedError;

  /// Serializes this PackageAnswerFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageAnswerFileCopyWith<PackageAnswerFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageAnswerFileCopyWith<$Res> {
  factory $PackageAnswerFileCopyWith(
          PackageAnswerFile value, $Res Function(PackageAnswerFile) then) =
      _$PackageAnswerFileCopyWithImpl<$Res, PackageAnswerFile>;
  @useResult
  $Res call({int? id, int order, FileItem file, int displayTime});

  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class _$PackageAnswerFileCopyWithImpl<$Res, $Val extends PackageAnswerFile>
    implements $PackageAnswerFileCopyWith<$Res> {
  _$PackageAnswerFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? file = null,
    Object? displayTime = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem,
      displayTime: null == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get file {
    return $FileItemCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageAnswerFileImplCopyWith<$Res>
    implements $PackageAnswerFileCopyWith<$Res> {
  factory _$$PackageAnswerFileImplCopyWith(_$PackageAnswerFileImpl value,
          $Res Function(_$PackageAnswerFileImpl) then) =
      __$$PackageAnswerFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int order, FileItem file, int displayTime});

  @override
  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class __$$PackageAnswerFileImplCopyWithImpl<$Res>
    extends _$PackageAnswerFileCopyWithImpl<$Res, _$PackageAnswerFileImpl>
    implements _$$PackageAnswerFileImplCopyWith<$Res> {
  __$$PackageAnswerFileImplCopyWithImpl(_$PackageAnswerFileImpl _value,
      $Res Function(_$PackageAnswerFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? file = null,
    Object? displayTime = null,
  }) {
    return _then(_$PackageAnswerFileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem,
      displayTime: null == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageAnswerFileImpl implements _PackageAnswerFile {
  const _$PackageAnswerFileImpl(
      {required this.id,
      required this.order,
      required this.file,
      this.displayTime = 5000});

  factory _$PackageAnswerFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageAnswerFileImplFromJson(json);

  @override
  final int? id;
  @override
  final int order;
  @override
  final FileItem file;

  /// Display duration in milliseconds
  @override
  @JsonKey()
  final int displayTime;

  @override
  String toString() {
    return 'PackageAnswerFile(id: $id, order: $order, file: $file, displayTime: $displayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageAnswerFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, file, displayTime);

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageAnswerFileImplCopyWith<_$PackageAnswerFileImpl> get copyWith =>
      __$$PackageAnswerFileImplCopyWithImpl<_$PackageAnswerFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageAnswerFileImplToJson(
      this,
    );
  }
}

abstract class _PackageAnswerFile implements PackageAnswerFile {
  const factory _PackageAnswerFile(
      {required final int? id,
      required final int order,
      required final FileItem file,
      final int displayTime}) = _$PackageAnswerFileImpl;

  factory _PackageAnswerFile.fromJson(Map<String, dynamic> json) =
      _$PackageAnswerFileImpl.fromJson;

  @override
  int? get id;
  @override
  int get order;
  @override
  FileItem get file;

  /// Display duration in milliseconds
  @override
  int get displayTime;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageAnswerFileImplCopyWith<_$PackageAnswerFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

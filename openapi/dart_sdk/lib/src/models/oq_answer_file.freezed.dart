// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_answer_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQAnswerFile _$OQAnswerFileFromJson(Map<String, dynamic> json) {
  return _OQAnswerFile.fromJson(json);
}

/// @nodoc
mixin _$OQAnswerFile {
  OQFileContentStructure get file => throw _privateConstructorUsedError;
  int? get displayTime => throw _privateConstructorUsedError;

  /// Serializes this OQAnswerFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQAnswerFileCopyWith<OQAnswerFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQAnswerFileCopyWith<$Res> {
  factory $OQAnswerFileCopyWith(
          OQAnswerFile value, $Res Function(OQAnswerFile) then) =
      _$OQAnswerFileCopyWithImpl<$Res, OQAnswerFile>;
  @useResult
  $Res call({OQFileContentStructure file, int? displayTime});

  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class _$OQAnswerFileCopyWithImpl<$Res, $Val extends OQAnswerFile>
    implements $OQAnswerFileCopyWith<$Res> {
  _$OQAnswerFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = freezed,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
      displayTime: freezed == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of OQAnswerFile
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
abstract class _$$OQAnswerFileImplCopyWith<$Res>
    implements $OQAnswerFileCopyWith<$Res> {
  factory _$$OQAnswerFileImplCopyWith(
          _$OQAnswerFileImpl value, $Res Function(_$OQAnswerFileImpl) then) =
      __$$OQAnswerFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQFileContentStructure file, int? displayTime});

  @override
  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class __$$OQAnswerFileImplCopyWithImpl<$Res>
    extends _$OQAnswerFileCopyWithImpl<$Res, _$OQAnswerFileImpl>
    implements _$$OQAnswerFileImplCopyWith<$Res> {
  __$$OQAnswerFileImplCopyWithImpl(
      _$OQAnswerFileImpl _value, $Res Function(_$OQAnswerFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = freezed,
  }) {
    return _then(_$OQAnswerFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
      displayTime: freezed == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQAnswerFileImpl implements _OQAnswerFile {
  const _$OQAnswerFileImpl({required this.file, this.displayTime});

  factory _$OQAnswerFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQAnswerFileImplFromJson(json);

  @override
  final OQFileContentStructure file;
  @override
  final int? displayTime;

  @override
  String toString() {
    return 'OQAnswerFile(file: $file, displayTime: $displayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQAnswerFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, displayTime);

  /// Create a copy of OQAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQAnswerFileImplCopyWith<_$OQAnswerFileImpl> get copyWith =>
      __$$OQAnswerFileImplCopyWithImpl<_$OQAnswerFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQAnswerFileImplToJson(
      this,
    );
  }
}

abstract class _OQAnswerFile implements OQAnswerFile {
  const factory _OQAnswerFile(
      {required final OQFileContentStructure file,
      final int? displayTime}) = _$OQAnswerFileImpl;

  factory _OQAnswerFile.fromJson(Map<String, dynamic> json) =
      _$OQAnswerFileImpl.fromJson;

  @override
  OQFileContentStructure get file;
  @override
  int? get displayTime;

  /// Create a copy of OQAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQAnswerFileImplCopyWith<_$OQAnswerFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

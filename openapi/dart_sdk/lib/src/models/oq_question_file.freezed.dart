// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_question_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQQuestionFile _$OQQuestionFileFromJson(Map<String, dynamic> json) {
  return _OQQuestionFile.fromJson(json);
}

/// @nodoc
mixin _$OQQuestionFile {
  OQFileContentStructure get file => throw _privateConstructorUsedError;
  num get displayTime => throw _privateConstructorUsedError;
  num get answerDelay => throw _privateConstructorUsedError;

  /// Serializes this OQQuestionFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQQuestionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQQuestionFileCopyWith<OQQuestionFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQQuestionFileCopyWith<$Res> {
  factory $OQQuestionFileCopyWith(
          OQQuestionFile value, $Res Function(OQQuestionFile) then) =
      _$OQQuestionFileCopyWithImpl<$Res, OQQuestionFile>;
  @useResult
  $Res call({OQFileContentStructure file, num displayTime, num answerDelay});

  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class _$OQQuestionFileCopyWithImpl<$Res, $Val extends OQQuestionFile>
    implements $OQQuestionFileCopyWith<$Res> {
  _$OQQuestionFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQQuestionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = null,
    Object? answerDelay = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
      displayTime: null == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as num,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  /// Create a copy of OQQuestionFile
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
abstract class _$$OQQuestionFileImplCopyWith<$Res>
    implements $OQQuestionFileCopyWith<$Res> {
  factory _$$OQQuestionFileImplCopyWith(_$OQQuestionFileImpl value,
          $Res Function(_$OQQuestionFileImpl) then) =
      __$$OQQuestionFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQFileContentStructure file, num displayTime, num answerDelay});

  @override
  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class __$$OQQuestionFileImplCopyWithImpl<$Res>
    extends _$OQQuestionFileCopyWithImpl<$Res, _$OQQuestionFileImpl>
    implements _$$OQQuestionFileImplCopyWith<$Res> {
  __$$OQQuestionFileImplCopyWithImpl(
      _$OQQuestionFileImpl _value, $Res Function(_$OQQuestionFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQQuestionFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = null,
    Object? answerDelay = null,
  }) {
    return _then(_$OQQuestionFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
      displayTime: null == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as num,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQQuestionFileImpl implements _OQQuestionFile {
  const _$OQQuestionFileImpl(
      {required this.file,
      required this.displayTime,
      required this.answerDelay});

  factory _$OQQuestionFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQQuestionFileImplFromJson(json);

  @override
  final OQFileContentStructure file;
  @override
  final num displayTime;
  @override
  final num answerDelay;

  @override
  String toString() {
    return 'OQQuestionFile(file: $file, displayTime: $displayTime, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQQuestionFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, displayTime, answerDelay);

  /// Create a copy of OQQuestionFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQQuestionFileImplCopyWith<_$OQQuestionFileImpl> get copyWith =>
      __$$OQQuestionFileImplCopyWithImpl<_$OQQuestionFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQQuestionFileImplToJson(
      this,
    );
  }
}

abstract class _OQQuestionFile implements OQQuestionFile {
  const factory _OQQuestionFile(
      {required final OQFileContentStructure file,
      required final num displayTime,
      required final num answerDelay}) = _$OQQuestionFileImpl;

  factory _OQQuestionFile.fromJson(Map<String, dynamic> json) =
      _$OQQuestionFileImpl.fromJson;

  @override
  OQFileContentStructure get file;
  @override
  num get displayTime;
  @override
  num get answerDelay;

  /// Create a copy of OQQuestionFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQQuestionFileImplCopyWith<_$OQQuestionFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

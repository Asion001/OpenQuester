// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQFile _$OQFileFromJson(Map<String, dynamic> json) {
  return _OQFile.fromJson(json);
}

/// @nodoc
mixin _$OQFile {
  OQFileContentStructure get file => throw _privateConstructorUsedError;
  int? get displayTime => throw _privateConstructorUsedError;
  int? get answerDelay => throw _privateConstructorUsedError;

  /// Serializes this OQFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQFileCopyWith<OQFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQFileCopyWith<$Res> {
  factory $OQFileCopyWith(OQFile value, $Res Function(OQFile) then) =
      _$OQFileCopyWithImpl<$Res, OQFile>;
  @useResult
  $Res call({OQFileContentStructure file, int? displayTime, int? answerDelay});

  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class _$OQFileCopyWithImpl<$Res, $Val extends OQFile>
    implements $OQFileCopyWith<$Res> {
  _$OQFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = freezed,
    Object? answerDelay = freezed,
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
      answerDelay: freezed == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of OQFile
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
abstract class _$$OQFileImplCopyWith<$Res> implements $OQFileCopyWith<$Res> {
  factory _$$OQFileImplCopyWith(
          _$OQFileImpl value, $Res Function(_$OQFileImpl) then) =
      __$$OQFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQFileContentStructure file, int? displayTime, int? answerDelay});

  @override
  $OQFileContentStructureCopyWith<$Res> get file;
}

/// @nodoc
class __$$OQFileImplCopyWithImpl<$Res>
    extends _$OQFileCopyWithImpl<$Res, _$OQFileImpl>
    implements _$$OQFileImplCopyWith<$Res> {
  __$$OQFileImplCopyWithImpl(
      _$OQFileImpl _value, $Res Function(_$OQFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? displayTime = freezed,
    Object? answerDelay = freezed,
  }) {
    return _then(_$OQFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructure,
      displayTime: freezed == displayTime
          ? _value.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int?,
      answerDelay: freezed == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQFileImpl implements _OQFile {
  const _$OQFileImpl({required this.file, this.displayTime, this.answerDelay});

  factory _$OQFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQFileImplFromJson(json);

  @override
  final OQFileContentStructure file;
  @override
  final int? displayTime;
  @override
  final int? answerDelay;

  @override
  String toString() {
    return 'OQFile(file: $file, displayTime: $displayTime, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, displayTime, answerDelay);

  /// Create a copy of OQFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQFileImplCopyWith<_$OQFileImpl> get copyWith =>
      __$$OQFileImplCopyWithImpl<_$OQFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQFileImplToJson(
      this,
    );
  }
}

abstract class _OQFile implements OQFile {
  const factory _OQFile(
      {required final OQFileContentStructure file,
      final int? displayTime,
      final int? answerDelay}) = _$OQFileImpl;

  factory _OQFile.fromJson(Map<String, dynamic> json) = _$OQFileImpl.fromJson;

  @override
  OQFileContentStructure get file;
  @override
  int? get displayTime;
  @override
  int? get answerDelay;

  /// Create a copy of OQFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQFileImplCopyWith<_$OQFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

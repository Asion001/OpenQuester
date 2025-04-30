// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_answer_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageAnswerFile {
  int? get id;
  PackageEntitiesOrder get order;
  FileItem get file;

  /// Display duration in milliseconds
  int get displayTime;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageAnswerFileCopyWith<PackageAnswerFile> get copyWith =>
      _$PackageAnswerFileCopyWithImpl<PackageAnswerFile>(
          this as PackageAnswerFile, _$identity);

  /// Serializes this PackageAnswerFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageAnswerFile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, file, displayTime);

  @override
  String toString() {
    return 'PackageAnswerFile(id: $id, order: $order, file: $file, displayTime: $displayTime)';
  }
}

/// @nodoc
abstract mixin class $PackageAnswerFileCopyWith<$Res> {
  factory $PackageAnswerFileCopyWith(
          PackageAnswerFile value, $Res Function(PackageAnswerFile) _then) =
      _$PackageAnswerFileCopyWithImpl;
  @useResult
  $Res call(
      {int? id, PackageEntitiesOrder order, FileItem file, int displayTime});

  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class _$PackageAnswerFileCopyWithImpl<$Res>
    implements $PackageAnswerFileCopyWith<$Res> {
  _$PackageAnswerFileCopyWithImpl(this._self, this._then);

  final PackageAnswerFile _self;
  final $Res Function(PackageAnswerFile) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem,
      displayTime: null == displayTime
          ? _self.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get file {
    return $FileItemCopyWith<$Res>(_self.file, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PackageAnswerFile implements PackageAnswerFile {
  const _PackageAnswerFile(
      {required this.id,
      required this.order,
      required this.file,
      this.displayTime = 5000});
  factory _PackageAnswerFile.fromJson(Map<String, dynamic> json) =>
      _$PackageAnswerFileFromJson(json);

  @override
  final int? id;
  @override
  final PackageEntitiesOrder order;
  @override
  final FileItem file;

  /// Display duration in milliseconds
  @override
  @JsonKey()
  final int displayTime;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageAnswerFileCopyWith<_PackageAnswerFile> get copyWith =>
      __$PackageAnswerFileCopyWithImpl<_PackageAnswerFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageAnswerFileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageAnswerFile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, file, displayTime);

  @override
  String toString() {
    return 'PackageAnswerFile(id: $id, order: $order, file: $file, displayTime: $displayTime)';
  }
}

/// @nodoc
abstract mixin class _$PackageAnswerFileCopyWith<$Res>
    implements $PackageAnswerFileCopyWith<$Res> {
  factory _$PackageAnswerFileCopyWith(
          _PackageAnswerFile value, $Res Function(_PackageAnswerFile) _then) =
      __$PackageAnswerFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id, PackageEntitiesOrder order, FileItem file, int displayTime});

  @override
  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class __$PackageAnswerFileCopyWithImpl<$Res>
    implements _$PackageAnswerFileCopyWith<$Res> {
  __$PackageAnswerFileCopyWithImpl(this._self, this._then);

  final _PackageAnswerFile _self;
  final $Res Function(_PackageAnswerFile) _then;

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? file = null,
    Object? displayTime = null,
  }) {
    return _then(_PackageAnswerFile(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem,
      displayTime: null == displayTime
          ? _self.displayTime
          : displayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of PackageAnswerFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res> get file {
    return $FileItemCopyWith<$Res>(_self.file, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

// dart format on

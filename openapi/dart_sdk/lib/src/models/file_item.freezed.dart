// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileItem _$FileItemFromJson(Map<String, dynamic> json) {
  return _FileItem.fromJson(json);
}

/// @nodoc
mixin _$FileItem {
  int? get id => throw _privateConstructorUsedError;

  /// MD5 hash of the file
  String get md5 => throw _privateConstructorUsedError;
  PackageFileType get type => throw _privateConstructorUsedError;

  /// GET link for file
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this FileItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileItemCopyWith<FileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileItemCopyWith<$Res> {
  factory $FileItemCopyWith(FileItem value, $Res Function(FileItem) then) =
      _$FileItemCopyWithImpl<$Res, FileItem>;
  @useResult
  $Res call({int? id, String md5, PackageFileType type, String? link});
}

/// @nodoc
class _$FileItemCopyWithImpl<$Res, $Val extends FileItem>
    implements $FileItemCopyWith<$Res> {
  _$FileItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? md5 = null,
    Object? type = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageFileType,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileItemImplCopyWith<$Res>
    implements $FileItemCopyWith<$Res> {
  factory _$$FileItemImplCopyWith(
          _$FileItemImpl value, $Res Function(_$FileItemImpl) then) =
      __$$FileItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String md5, PackageFileType type, String? link});
}

/// @nodoc
class __$$FileItemImplCopyWithImpl<$Res>
    extends _$FileItemCopyWithImpl<$Res, _$FileItemImpl>
    implements _$$FileItemImplCopyWith<$Res> {
  __$$FileItemImplCopyWithImpl(
      _$FileItemImpl _value, $Res Function(_$FileItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? md5 = null,
    Object? type = null,
    Object? link = freezed,
  }) {
    return _then(_$FileItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageFileType,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileItemImpl implements _FileItem {
  const _$FileItemImpl(
      {required this.id,
      required this.md5,
      required this.type,
      required this.link});

  factory _$FileItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileItemImplFromJson(json);

  @override
  final int? id;

  /// MD5 hash of the file
  @override
  final String md5;
  @override
  final PackageFileType type;

  /// GET link for file
  @override
  final String? link;

  @override
  String toString() {
    return 'FileItem(id: $id, md5: $md5, type: $type, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.md5, md5) || other.md5 == md5) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, md5, type, link);

  /// Create a copy of FileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileItemImplCopyWith<_$FileItemImpl> get copyWith =>
      __$$FileItemImplCopyWithImpl<_$FileItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileItemImplToJson(
      this,
    );
  }
}

abstract class _FileItem implements FileItem {
  const factory _FileItem(
      {required final int? id,
      required final String md5,
      required final PackageFileType type,
      required final String? link}) = _$FileItemImpl;

  factory _FileItem.fromJson(Map<String, dynamic> json) =
      _$FileItemImpl.fromJson;

  @override
  int? get id;

  /// MD5 hash of the file
  @override
  String get md5;
  @override
  PackageFileType get type;

  /// GET link for file
  @override
  String? get link;

  /// Create a copy of FileItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileItemImplCopyWith<_$FileItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

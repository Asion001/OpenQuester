// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_logo_file_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageLogoFileItem _$PackageLogoFileItemFromJson(Map<String, dynamic> json) {
  return _PackageLogoFileItem.fromJson(json);
}

/// @nodoc
mixin _$PackageLogoFileItem {
  FileItem get file => throw _privateConstructorUsedError;

  /// Serializes this PackageLogoFileItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageLogoFileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageLogoFileItemCopyWith<PackageLogoFileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageLogoFileItemCopyWith<$Res> {
  factory $PackageLogoFileItemCopyWith(
          PackageLogoFileItem value, $Res Function(PackageLogoFileItem) then) =
      _$PackageLogoFileItemCopyWithImpl<$Res, PackageLogoFileItem>;
  @useResult
  $Res call({FileItem file});

  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class _$PackageLogoFileItemCopyWithImpl<$Res, $Val extends PackageLogoFileItem>
    implements $PackageLogoFileItemCopyWith<$Res> {
  _$PackageLogoFileItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageLogoFileItem
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
              as FileItem,
    ) as $Val);
  }

  /// Create a copy of PackageLogoFileItem
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
abstract class _$$PackageLogoFileItemImplCopyWith<$Res>
    implements $PackageLogoFileItemCopyWith<$Res> {
  factory _$$PackageLogoFileItemImplCopyWith(_$PackageLogoFileItemImpl value,
          $Res Function(_$PackageLogoFileItemImpl) then) =
      __$$PackageLogoFileItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileItem file});

  @override
  $FileItemCopyWith<$Res> get file;
}

/// @nodoc
class __$$PackageLogoFileItemImplCopyWithImpl<$Res>
    extends _$PackageLogoFileItemCopyWithImpl<$Res, _$PackageLogoFileItemImpl>
    implements _$$PackageLogoFileItemImplCopyWith<$Res> {
  __$$PackageLogoFileItemImplCopyWithImpl(_$PackageLogoFileItemImpl _value,
      $Res Function(_$PackageLogoFileItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageLogoFileItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$PackageLogoFileItemImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageLogoFileItemImpl implements _PackageLogoFileItem {
  const _$PackageLogoFileItemImpl({required this.file});

  factory _$PackageLogoFileItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageLogoFileItemImplFromJson(json);

  @override
  final FileItem file;

  @override
  String toString() {
    return 'PackageLogoFileItem(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageLogoFileItemImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of PackageLogoFileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageLogoFileItemImplCopyWith<_$PackageLogoFileItemImpl> get copyWith =>
      __$$PackageLogoFileItemImplCopyWithImpl<_$PackageLogoFileItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageLogoFileItemImplToJson(
      this,
    );
  }
}

abstract class _PackageLogoFileItem implements PackageLogoFileItem {
  const factory _PackageLogoFileItem({required final FileItem file}) =
      _$PackageLogoFileItemImpl;

  factory _PackageLogoFileItem.fromJson(Map<String, dynamic> json) =
      _$PackageLogoFileItemImpl.fromJson;

  @override
  FileItem get file;

  /// Create a copy of PackageLogoFileItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageLogoFileItemImplCopyWith<_$PackageLogoFileItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

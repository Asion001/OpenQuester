// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_packages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedPackages _$PaginatedPackagesFromJson(Map<String, dynamic> json) {
  return _PaginatedPackages.fromJson(json);
}

/// @nodoc
mixin _$PaginatedPackages {
  List<IPackageItem> get data => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this PaginatedPackages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedPackagesCopyWith<PaginatedPackages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPackagesCopyWith<$Res> {
  factory $PaginatedPackagesCopyWith(
          PaginatedPackages value, $Res Function(PaginatedPackages) then) =
      _$PaginatedPackagesCopyWithImpl<$Res, PaginatedPackages>;
  @useResult
  $Res call({List<IPackageItem> data, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$PaginatedPackagesCopyWithImpl<$Res, $Val extends PaginatedPackages>
    implements $PaginatedPackagesCopyWith<$Res> {
  _$PaginatedPackagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IPackageItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ) as $Val);
  }

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedPackagesImplCopyWith<$Res>
    implements $PaginatedPackagesCopyWith<$Res> {
  factory _$$PaginatedPackagesImplCopyWith(_$PaginatedPackagesImpl value,
          $Res Function(_$PaginatedPackagesImpl) then) =
      __$$PaginatedPackagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IPackageItem> data, PageInfo pageInfo});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$PaginatedPackagesImplCopyWithImpl<$Res>
    extends _$PaginatedPackagesCopyWithImpl<$Res, _$PaginatedPackagesImpl>
    implements _$$PaginatedPackagesImplCopyWith<$Res> {
  __$$PaginatedPackagesImplCopyWithImpl(_$PaginatedPackagesImpl _value,
      $Res Function(_$PaginatedPackagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$PaginatedPackagesImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IPackageItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedPackagesImpl implements _PaginatedPackages {
  const _$PaginatedPackagesImpl(
      {required final List<IPackageItem> data, required this.pageInfo})
      : _data = data;

  factory _$PaginatedPackagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedPackagesImplFromJson(json);

  final List<IPackageItem> _data;
  @override
  List<IPackageItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PageInfo pageInfo;

  @override
  String toString() {
    return 'PaginatedPackages(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedPackagesImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedPackagesImplCopyWith<_$PaginatedPackagesImpl> get copyWith =>
      __$$PaginatedPackagesImplCopyWithImpl<_$PaginatedPackagesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedPackagesImplToJson(
      this,
    );
  }
}

abstract class _PaginatedPackages implements PaginatedPackages {
  const factory _PaginatedPackages(
      {required final List<IPackageItem> data,
      required final PageInfo pageInfo}) = _$PaginatedPackagesImpl;

  factory _PaginatedPackages.fromJson(Map<String, dynamic> json) =
      _$PaginatedPackagesImpl.fromJson;

  @override
  List<IPackageItem> get data;
  @override
  PageInfo get pageInfo;

  /// Create a copy of PaginatedPackages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedPackagesImplCopyWith<_$PaginatedPackagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

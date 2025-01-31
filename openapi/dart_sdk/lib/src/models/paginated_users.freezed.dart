// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedUsers _$PaginatedUsersFromJson(Map<String, dynamic> json) {
  return _PaginatedUsers.fromJson(json);
}

/// @nodoc
mixin _$PaginatedUsers {
  List<ResponseUser> get data => throw _privateConstructorUsedError;
  PageInfo2 get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this PaginatedUsers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedUsersCopyWith<PaginatedUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedUsersCopyWith<$Res> {
  factory $PaginatedUsersCopyWith(
          PaginatedUsers value, $Res Function(PaginatedUsers) then) =
      _$PaginatedUsersCopyWithImpl<$Res, PaginatedUsers>;
  @useResult
  $Res call({List<ResponseUser> data, PageInfo2 pageInfo});

  $PageInfo2CopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$PaginatedUsersCopyWithImpl<$Res, $Val extends PaginatedUsers>
    implements $PaginatedUsersCopyWith<$Res> {
  _$PaginatedUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedUsers
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
              as List<ResponseUser>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo2,
    ) as $Val);
  }

  /// Create a copy of PaginatedUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfo2CopyWith<$Res> get pageInfo {
    return $PageInfo2CopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedUsersImplCopyWith<$Res>
    implements $PaginatedUsersCopyWith<$Res> {
  factory _$$PaginatedUsersImplCopyWith(_$PaginatedUsersImpl value,
          $Res Function(_$PaginatedUsersImpl) then) =
      __$$PaginatedUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseUser> data, PageInfo2 pageInfo});

  @override
  $PageInfo2CopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$PaginatedUsersImplCopyWithImpl<$Res>
    extends _$PaginatedUsersCopyWithImpl<$Res, _$PaginatedUsersImpl>
    implements _$$PaginatedUsersImplCopyWith<$Res> {
  __$$PaginatedUsersImplCopyWithImpl(
      _$PaginatedUsersImpl _value, $Res Function(_$PaginatedUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedUsers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$PaginatedUsersImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseUser>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedUsersImpl implements _PaginatedUsers {
  const _$PaginatedUsersImpl(
      {required final List<ResponseUser> data, required this.pageInfo})
      : _data = data;

  factory _$PaginatedUsersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedUsersImplFromJson(json);

  final List<ResponseUser> _data;
  @override
  List<ResponseUser> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PageInfo2 pageInfo;

  @override
  String toString() {
    return 'PaginatedUsers(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedUsersImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of PaginatedUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedUsersImplCopyWith<_$PaginatedUsersImpl> get copyWith =>
      __$$PaginatedUsersImplCopyWithImpl<_$PaginatedUsersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedUsersImplToJson(
      this,
    );
  }
}

abstract class _PaginatedUsers implements PaginatedUsers {
  const factory _PaginatedUsers(
      {required final List<ResponseUser> data,
      required final PageInfo2 pageInfo}) = _$PaginatedUsersImpl;

  factory _PaginatedUsers.fromJson(Map<String, dynamic> json) =
      _$PaginatedUsersImpl.fromJson;

  @override
  List<ResponseUser> get data;
  @override
  PageInfo2 get pageInfo;

  /// Create a copy of PaginatedUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedUsersImplCopyWith<_$PaginatedUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_short_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IShortUserInfo _$IShortUserInfoFromJson(Map<String, dynamic> json) {
  return _IShortUserInfo.fromJson(json);
}

/// @nodoc
mixin _$IShortUserInfo {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this IShortUserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IShortUserInfoCopyWith<IShortUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IShortUserInfoCopyWith<$Res> {
  factory $IShortUserInfoCopyWith(
          IShortUserInfo value, $Res Function(IShortUserInfo) then) =
      _$IShortUserInfoCopyWithImpl<$Res, IShortUserInfo>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class _$IShortUserInfoCopyWithImpl<$Res, $Val extends IShortUserInfo>
    implements $IShortUserInfoCopyWith<$Res> {
  _$IShortUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IShortUserInfoImplCopyWith<$Res>
    implements $IShortUserInfoCopyWith<$Res> {
  factory _$$IShortUserInfoImplCopyWith(_$IShortUserInfoImpl value,
          $Res Function(_$IShortUserInfoImpl) then) =
      __$$IShortUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$IShortUserInfoImplCopyWithImpl<$Res>
    extends _$IShortUserInfoCopyWithImpl<$Res, _$IShortUserInfoImpl>
    implements _$$IShortUserInfoImplCopyWith<$Res> {
  __$$IShortUserInfoImplCopyWithImpl(
      _$IShortUserInfoImpl _value, $Res Function(_$IShortUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of IShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$IShortUserInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IShortUserInfoImpl implements _IShortUserInfo {
  const _$IShortUserInfoImpl({required this.id, required this.username});

  factory _$IShortUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IShortUserInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'IShortUserInfo(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IShortUserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  /// Create a copy of IShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IShortUserInfoImplCopyWith<_$IShortUserInfoImpl> get copyWith =>
      __$$IShortUserInfoImplCopyWithImpl<_$IShortUserInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IShortUserInfoImplToJson(
      this,
    );
  }
}

abstract class _IShortUserInfo implements IShortUserInfo {
  const factory _IShortUserInfo(
      {required final int id,
      required final String username}) = _$IShortUserInfoImpl;

  factory _IShortUserInfo.fromJson(Map<String, dynamic> json) =
      _$IShortUserInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get username;

  /// Create a copy of IShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IShortUserInfoImplCopyWith<_$IShortUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

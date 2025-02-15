// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShortUserInfo _$ShortUserInfoFromJson(Map<String, dynamic> json) {
  return _ShortUserInfo.fromJson(json);
}

/// @nodoc
mixin _$ShortUserInfo {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this ShortUserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShortUserInfoCopyWith<ShortUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortUserInfoCopyWith<$Res> {
  factory $ShortUserInfoCopyWith(
          ShortUserInfo value, $Res Function(ShortUserInfo) then) =
      _$ShortUserInfoCopyWithImpl<$Res, ShortUserInfo>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class _$ShortUserInfoCopyWithImpl<$Res, $Val extends ShortUserInfo>
    implements $ShortUserInfoCopyWith<$Res> {
  _$ShortUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShortUserInfo
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
abstract class _$$ShortUserInfoImplCopyWith<$Res>
    implements $ShortUserInfoCopyWith<$Res> {
  factory _$$ShortUserInfoImplCopyWith(
          _$ShortUserInfoImpl value, $Res Function(_$ShortUserInfoImpl) then) =
      __$$ShortUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$ShortUserInfoImplCopyWithImpl<$Res>
    extends _$ShortUserInfoCopyWithImpl<$Res, _$ShortUserInfoImpl>
    implements _$$ShortUserInfoImplCopyWith<$Res> {
  __$$ShortUserInfoImplCopyWithImpl(
      _$ShortUserInfoImpl _value, $Res Function(_$ShortUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$ShortUserInfoImpl(
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
class _$ShortUserInfoImpl implements _ShortUserInfo {
  const _$ShortUserInfoImpl({required this.id, required this.username});

  factory _$ShortUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortUserInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'ShortUserInfo(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortUserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortUserInfoImplCopyWith<_$ShortUserInfoImpl> get copyWith =>
      __$$ShortUserInfoImplCopyWithImpl<_$ShortUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortUserInfoImplToJson(
      this,
    );
  }
}

abstract class _ShortUserInfo implements ShortUserInfo {
  const factory _ShortUserInfo(
      {required final int id,
      required final String username}) = _$ShortUserInfoImpl;

  factory _ShortUserInfo.fromJson(Map<String, dynamic> json) =
      _$ShortUserInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get username;

  /// Create a copy of ShortUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortUserInfoImplCopyWith<_$ShortUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

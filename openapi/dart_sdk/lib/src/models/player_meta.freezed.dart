// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerMeta _$PlayerMetaFromJson(Map<String, dynamic> json) {
  return _PlayerMeta.fromJson(json);
}

/// @nodoc
mixin _$PlayerMeta {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this PlayerMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerMetaCopyWith<PlayerMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerMetaCopyWith<$Res> {
  factory $PlayerMetaCopyWith(
          PlayerMeta value, $Res Function(PlayerMeta) then) =
      _$PlayerMetaCopyWithImpl<$Res, PlayerMeta>;
  @useResult
  $Res call({int id, String username, String? avatar});
}

/// @nodoc
class _$PlayerMetaCopyWithImpl<$Res, $Val extends PlayerMeta>
    implements $PlayerMetaCopyWith<$Res> {
  _$PlayerMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerMetaImplCopyWith<$Res>
    implements $PlayerMetaCopyWith<$Res> {
  factory _$$PlayerMetaImplCopyWith(
          _$PlayerMetaImpl value, $Res Function(_$PlayerMetaImpl) then) =
      __$$PlayerMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String? avatar});
}

/// @nodoc
class __$$PlayerMetaImplCopyWithImpl<$Res>
    extends _$PlayerMetaCopyWithImpl<$Res, _$PlayerMetaImpl>
    implements _$$PlayerMetaImplCopyWith<$Res> {
  __$$PlayerMetaImplCopyWithImpl(
      _$PlayerMetaImpl _value, $Res Function(_$PlayerMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_$PlayerMetaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerMetaImpl implements _PlayerMeta {
  const _$PlayerMetaImpl(
      {required this.id, required this.username, required this.avatar});

  factory _$PlayerMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerMetaImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'PlayerMeta(id: $id, username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerMetaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar);

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerMetaImplCopyWith<_$PlayerMetaImpl> get copyWith =>
      __$$PlayerMetaImplCopyWithImpl<_$PlayerMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerMetaImplToJson(
      this,
    );
  }
}

abstract class _PlayerMeta implements PlayerMeta {
  const factory _PlayerMeta(
      {required final int id,
      required final String username,
      required final String? avatar}) = _$PlayerMetaImpl;

  factory _PlayerMeta.fromJson(Map<String, dynamic> json) =
      _$PlayerMetaImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String? get avatar;

  /// Create a copy of PlayerMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerMetaImplCopyWith<_$PlayerMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

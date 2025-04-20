// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleUserData _$SimpleUserDataFromJson(Map<String, dynamic> json) {
  return _SimpleUserData.fromJson(json);
}

/// @nodoc
mixin _$SimpleUserData {
  num get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this SimpleUserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleUserDataCopyWith<SimpleUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUserDataCopyWith<$Res> {
  factory $SimpleUserDataCopyWith(
          SimpleUserData value, $Res Function(SimpleUserData) then) =
      _$SimpleUserDataCopyWithImpl<$Res, SimpleUserData>;
  @useResult
  $Res call({num id, String username, String? avatar});
}

/// @nodoc
class _$SimpleUserDataCopyWithImpl<$Res, $Val extends SimpleUserData>
    implements $SimpleUserDataCopyWith<$Res> {
  _$SimpleUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleUserData
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
              as num,
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
abstract class _$$SimpleUserDataImplCopyWith<$Res>
    implements $SimpleUserDataCopyWith<$Res> {
  factory _$$SimpleUserDataImplCopyWith(_$SimpleUserDataImpl value,
          $Res Function(_$SimpleUserDataImpl) then) =
      __$$SimpleUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num id, String username, String? avatar});
}

/// @nodoc
class __$$SimpleUserDataImplCopyWithImpl<$Res>
    extends _$SimpleUserDataCopyWithImpl<$Res, _$SimpleUserDataImpl>
    implements _$$SimpleUserDataImplCopyWith<$Res> {
  __$$SimpleUserDataImplCopyWithImpl(
      _$SimpleUserDataImpl _value, $Res Function(_$SimpleUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? avatar = freezed,
  }) {
    return _then(_$SimpleUserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
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
class _$SimpleUserDataImpl implements _SimpleUserData {
  const _$SimpleUserDataImpl(
      {required this.id, required this.username, required this.avatar});

  factory _$SimpleUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleUserDataImplFromJson(json);

  @override
  final num id;
  @override
  final String username;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'SimpleUserData(id: $id, username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, avatar);

  /// Create a copy of SimpleUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleUserDataImplCopyWith<_$SimpleUserDataImpl> get copyWith =>
      __$$SimpleUserDataImplCopyWithImpl<_$SimpleUserDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleUserDataImplToJson(
      this,
    );
  }
}

abstract class _SimpleUserData implements SimpleUserData {
  const factory _SimpleUserData(
      {required final num id,
      required final String username,
      required final String? avatar}) = _$SimpleUserDataImpl;

  factory _SimpleUserData.fromJson(Map<String, dynamic> json) =
      _$SimpleUserDataImpl.fromJson;

  @override
  num get id;
  @override
  String get username;
  @override
  String? get avatar;

  /// Create a copy of SimpleUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleUserDataImplCopyWith<_$SimpleUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

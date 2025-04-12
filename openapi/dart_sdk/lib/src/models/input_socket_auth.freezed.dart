// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_socket_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputSocketAuth _$InputSocketAuthFromJson(Map<String, dynamic> json) {
  return _InputSocketAuth.fromJson(json);
}

/// @nodoc
mixin _$InputSocketAuth {
  String get socketId => throw _privateConstructorUsedError;

  /// Serializes this InputSocketAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputSocketAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputSocketAuthCopyWith<InputSocketAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSocketAuthCopyWith<$Res> {
  factory $InputSocketAuthCopyWith(
          InputSocketAuth value, $Res Function(InputSocketAuth) then) =
      _$InputSocketAuthCopyWithImpl<$Res, InputSocketAuth>;
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class _$InputSocketAuthCopyWithImpl<$Res, $Val extends InputSocketAuth>
    implements $InputSocketAuthCopyWith<$Res> {
  _$InputSocketAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputSocketAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
  }) {
    return _then(_value.copyWith(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputSocketAuthImplCopyWith<$Res>
    implements $InputSocketAuthCopyWith<$Res> {
  factory _$$InputSocketAuthImplCopyWith(_$InputSocketAuthImpl value,
          $Res Function(_$InputSocketAuthImpl) then) =
      __$$InputSocketAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class __$$InputSocketAuthImplCopyWithImpl<$Res>
    extends _$InputSocketAuthCopyWithImpl<$Res, _$InputSocketAuthImpl>
    implements _$$InputSocketAuthImplCopyWith<$Res> {
  __$$InputSocketAuthImplCopyWithImpl(
      _$InputSocketAuthImpl _value, $Res Function(_$InputSocketAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputSocketAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
  }) {
    return _then(_$InputSocketAuthImpl(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputSocketAuthImpl implements _InputSocketAuth {
  const _$InputSocketAuthImpl({required this.socketId});

  factory _$InputSocketAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputSocketAuthImplFromJson(json);

  @override
  final String socketId;

  @override
  String toString() {
    return 'InputSocketAuth(socketId: $socketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSocketAuthImpl &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, socketId);

  /// Create a copy of InputSocketAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSocketAuthImplCopyWith<_$InputSocketAuthImpl> get copyWith =>
      __$$InputSocketAuthImplCopyWithImpl<_$InputSocketAuthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSocketAuthImplToJson(
      this,
    );
  }
}

abstract class _InputSocketAuth implements InputSocketAuth {
  const factory _InputSocketAuth({required final String socketId}) =
      _$InputSocketAuthImpl;

  factory _InputSocketAuth.fromJson(Map<String, dynamic> json) =
      _$InputSocketAuthImpl.fromJson;

  @override
  String get socketId;

  /// Create a copy of InputSocketAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputSocketAuthImplCopyWith<_$InputSocketAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_socket_io_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputSocketIOAuth _$InputSocketIOAuthFromJson(Map<String, dynamic> json) {
  return _InputSocketIOAuth.fromJson(json);
}

/// @nodoc
mixin _$InputSocketIOAuth {
  String get socketId => throw _privateConstructorUsedError;

  /// Serializes this InputSocketIOAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputSocketIOAuthCopyWith<InputSocketIOAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSocketIOAuthCopyWith<$Res> {
  factory $InputSocketIOAuthCopyWith(
          InputSocketIOAuth value, $Res Function(InputSocketIOAuth) then) =
      _$InputSocketIOAuthCopyWithImpl<$Res, InputSocketIOAuth>;
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class _$InputSocketIOAuthCopyWithImpl<$Res, $Val extends InputSocketIOAuth>
    implements $InputSocketIOAuthCopyWith<$Res> {
  _$InputSocketIOAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputSocketIOAuth
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
abstract class _$$InputSocketIOAuthImplCopyWith<$Res>
    implements $InputSocketIOAuthCopyWith<$Res> {
  factory _$$InputSocketIOAuthImplCopyWith(_$InputSocketIOAuthImpl value,
          $Res Function(_$InputSocketIOAuthImpl) then) =
      __$$InputSocketIOAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class __$$InputSocketIOAuthImplCopyWithImpl<$Res>
    extends _$InputSocketIOAuthCopyWithImpl<$Res, _$InputSocketIOAuthImpl>
    implements _$$InputSocketIOAuthImplCopyWith<$Res> {
  __$$InputSocketIOAuthImplCopyWithImpl(_$InputSocketIOAuthImpl _value,
      $Res Function(_$InputSocketIOAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
  }) {
    return _then(_$InputSocketIOAuthImpl(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputSocketIOAuthImpl implements _InputSocketIOAuth {
  const _$InputSocketIOAuthImpl({required this.socketId});

  factory _$InputSocketIOAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputSocketIOAuthImplFromJson(json);

  @override
  final String socketId;

  @override
  String toString() {
    return 'InputSocketIOAuth(socketId: $socketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSocketIOAuthImpl &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, socketId);

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSocketIOAuthImplCopyWith<_$InputSocketIOAuthImpl> get copyWith =>
      __$$InputSocketIOAuthImplCopyWithImpl<_$InputSocketIOAuthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSocketIOAuthImplToJson(
      this,
    );
  }
}

abstract class _InputSocketIOAuth implements InputSocketIOAuth {
  const factory _InputSocketIOAuth({required final String socketId}) =
      _$InputSocketIOAuthImpl;

  factory _InputSocketIOAuth.fromJson(Map<String, dynamic> json) =
      _$InputSocketIOAuthImpl.fromJson;

  @override
  String get socketId;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputSocketIOAuthImplCopyWith<_$InputSocketIOAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_join_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameJoinInput _$SocketIOGameJoinInputFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameJoinInput.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameJoinInput {
  String get gameId => throw _privateConstructorUsedError;
  SocketIOGameJoinInputRole get role => throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameJoinInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameJoinInputCopyWith<SocketIOGameJoinInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameJoinInputCopyWith<$Res> {
  factory $SocketIOGameJoinInputCopyWith(SocketIOGameJoinInput value,
          $Res Function(SocketIOGameJoinInput) then) =
      _$SocketIOGameJoinInputCopyWithImpl<$Res, SocketIOGameJoinInput>;
  @useResult
  $Res call({String gameId, SocketIOGameJoinInputRole role});
}

/// @nodoc
class _$SocketIOGameJoinInputCopyWithImpl<$Res,
        $Val extends SocketIOGameJoinInput>
    implements $SocketIOGameJoinInputCopyWith<$Res> {
  _$SocketIOGameJoinInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SocketIOGameJoinInputRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOGameJoinInputImplCopyWith<$Res>
    implements $SocketIOGameJoinInputCopyWith<$Res> {
  factory _$$SocketIOGameJoinInputImplCopyWith(
          _$SocketIOGameJoinInputImpl value,
          $Res Function(_$SocketIOGameJoinInputImpl) then) =
      __$$SocketIOGameJoinInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String gameId, SocketIOGameJoinInputRole role});
}

/// @nodoc
class __$$SocketIOGameJoinInputImplCopyWithImpl<$Res>
    extends _$SocketIOGameJoinInputCopyWithImpl<$Res,
        _$SocketIOGameJoinInputImpl>
    implements _$$SocketIOGameJoinInputImplCopyWith<$Res> {
  __$$SocketIOGameJoinInputImplCopyWithImpl(_$SocketIOGameJoinInputImpl _value,
      $Res Function(_$SocketIOGameJoinInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? role = null,
  }) {
    return _then(_$SocketIOGameJoinInputImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as SocketIOGameJoinInputRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameJoinInputImpl implements _SocketIOGameJoinInput {
  const _$SocketIOGameJoinInputImpl({required this.gameId, required this.role});

  factory _$SocketIOGameJoinInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketIOGameJoinInputImplFromJson(json);

  @override
  final String gameId;
  @override
  final SocketIOGameJoinInputRole role;

  @override
  String toString() {
    return 'SocketIOGameJoinInput(gameId: $gameId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameJoinInputImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, role);

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameJoinInputImplCopyWith<_$SocketIOGameJoinInputImpl>
      get copyWith => __$$SocketIOGameJoinInputImplCopyWithImpl<
          _$SocketIOGameJoinInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameJoinInputImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameJoinInput implements SocketIOGameJoinInput {
  const factory _SocketIOGameJoinInput(
          {required final String gameId,
          required final SocketIOGameJoinInputRole role}) =
      _$SocketIOGameJoinInputImpl;

  factory _SocketIOGameJoinInput.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameJoinInputImpl.fromJson;

  @override
  String get gameId;
  @override
  SocketIOGameJoinInputRole get role;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameJoinInputImplCopyWith<_$SocketIOGameJoinInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

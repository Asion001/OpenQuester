// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_join_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameJoinInput {
  String get gameId;
  SocketIOGameJoinInputRole get role;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOGameJoinInputCopyWith<SocketIOGameJoinInput> get copyWith =>
      _$SocketIOGameJoinInputCopyWithImpl<SocketIOGameJoinInput>(
          this as SocketIOGameJoinInput, _$identity);

  /// Serializes this SocketIOGameJoinInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOGameJoinInput &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, role);

  @override
  String toString() {
    return 'SocketIOGameJoinInput(gameId: $gameId, role: $role)';
  }
}

/// @nodoc
abstract mixin class $SocketIOGameJoinInputCopyWith<$Res> {
  factory $SocketIOGameJoinInputCopyWith(SocketIOGameJoinInput value,
          $Res Function(SocketIOGameJoinInput) _then) =
      _$SocketIOGameJoinInputCopyWithImpl;
  @useResult
  $Res call({String gameId, SocketIOGameJoinInputRole role});
}

/// @nodoc
class _$SocketIOGameJoinInputCopyWithImpl<$Res>
    implements $SocketIOGameJoinInputCopyWith<$Res> {
  _$SocketIOGameJoinInputCopyWithImpl(this._self, this._then);

  final SocketIOGameJoinInput _self;
  final $Res Function(SocketIOGameJoinInput) _then;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? role = null,
  }) {
    return _then(_self.copyWith(
      gameId: null == gameId
          ? _self.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as SocketIOGameJoinInputRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOGameJoinInput implements SocketIOGameJoinInput {
  const _SocketIOGameJoinInput({required this.gameId, required this.role});
  factory _SocketIOGameJoinInput.fromJson(Map<String, dynamic> json) =>
      _$SocketIOGameJoinInputFromJson(json);

  @override
  final String gameId;
  @override
  final SocketIOGameJoinInputRole role;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOGameJoinInputCopyWith<_SocketIOGameJoinInput> get copyWith =>
      __$SocketIOGameJoinInputCopyWithImpl<_SocketIOGameJoinInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOGameJoinInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOGameJoinInput &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, role);

  @override
  String toString() {
    return 'SocketIOGameJoinInput(gameId: $gameId, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOGameJoinInputCopyWith<$Res>
    implements $SocketIOGameJoinInputCopyWith<$Res> {
  factory _$SocketIOGameJoinInputCopyWith(_SocketIOGameJoinInput value,
          $Res Function(_SocketIOGameJoinInput) _then) =
      __$SocketIOGameJoinInputCopyWithImpl;
  @override
  @useResult
  $Res call({String gameId, SocketIOGameJoinInputRole role});
}

/// @nodoc
class __$SocketIOGameJoinInputCopyWithImpl<$Res>
    implements _$SocketIOGameJoinInputCopyWith<$Res> {
  __$SocketIOGameJoinInputCopyWithImpl(this._self, this._then);

  final _SocketIOGameJoinInput _self;
  final $Res Function(_SocketIOGameJoinInput) _then;

  /// Create a copy of SocketIOGameJoinInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gameId = null,
    Object? role = null,
  }) {
    return _then(_SocketIOGameJoinInput(
      gameId: null == gameId
          ? _self.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as SocketIOGameJoinInputRole,
    ));
  }
}

// dart format on

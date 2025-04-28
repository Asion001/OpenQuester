// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_socket_io_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputSocketIOAuth {
  String get socketId;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputSocketIOAuthCopyWith<InputSocketIOAuth> get copyWith =>
      _$InputSocketIOAuthCopyWithImpl<InputSocketIOAuth>(
          this as InputSocketIOAuth, _$identity);

  /// Serializes this InputSocketIOAuth to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InputSocketIOAuth &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, socketId);

  @override
  String toString() {
    return 'InputSocketIOAuth(socketId: $socketId)';
  }
}

/// @nodoc
abstract mixin class $InputSocketIOAuthCopyWith<$Res> {
  factory $InputSocketIOAuthCopyWith(
          InputSocketIOAuth value, $Res Function(InputSocketIOAuth) _then) =
      _$InputSocketIOAuthCopyWithImpl;
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class _$InputSocketIOAuthCopyWithImpl<$Res>
    implements $InputSocketIOAuthCopyWith<$Res> {
  _$InputSocketIOAuthCopyWithImpl(this._self, this._then);

  final InputSocketIOAuth _self;
  final $Res Function(InputSocketIOAuth) _then;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
  }) {
    return _then(_self.copyWith(
      socketId: null == socketId
          ? _self.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InputSocketIOAuth implements InputSocketIOAuth {
  const _InputSocketIOAuth({required this.socketId});
  factory _InputSocketIOAuth.fromJson(Map<String, dynamic> json) =>
      _$InputSocketIOAuthFromJson(json);

  @override
  final String socketId;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputSocketIOAuthCopyWith<_InputSocketIOAuth> get copyWith =>
      __$InputSocketIOAuthCopyWithImpl<_InputSocketIOAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputSocketIOAuthToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InputSocketIOAuth &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, socketId);

  @override
  String toString() {
    return 'InputSocketIOAuth(socketId: $socketId)';
  }
}

/// @nodoc
abstract mixin class _$InputSocketIOAuthCopyWith<$Res>
    implements $InputSocketIOAuthCopyWith<$Res> {
  factory _$InputSocketIOAuthCopyWith(
          _InputSocketIOAuth value, $Res Function(_InputSocketIOAuth) _then) =
      __$InputSocketIOAuthCopyWithImpl;
  @override
  @useResult
  $Res call({String socketId});
}

/// @nodoc
class __$InputSocketIOAuthCopyWithImpl<$Res>
    implements _$InputSocketIOAuthCopyWith<$Res> {
  __$InputSocketIOAuthCopyWithImpl(this._self, this._then);

  final _InputSocketIOAuth _self;
  final $Res Function(_InputSocketIOAuth) _then;

  /// Create a copy of InputSocketIOAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? socketId = null,
  }) {
    return _then(_InputSocketIOAuth(
      socketId: null == socketId
          ? _self.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

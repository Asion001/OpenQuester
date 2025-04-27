// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_start_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameStartEventPayload _$SocketIOGameStartEventPayloadFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameStartEventPayload.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameStartEventPayload {
  SocketIOGameStateRoundData get currentRound =>
      throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameStartEventPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameStartEventPayloadCopyWith<SocketIOGameStartEventPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameStartEventPayloadCopyWith<$Res> {
  factory $SocketIOGameStartEventPayloadCopyWith(
          SocketIOGameStartEventPayload value,
          $Res Function(SocketIOGameStartEventPayload) then) =
      _$SocketIOGameStartEventPayloadCopyWithImpl<$Res,
          SocketIOGameStartEventPayload>;
  @useResult
  $Res call({SocketIOGameStateRoundData currentRound});

  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound;
}

/// @nodoc
class _$SocketIOGameStartEventPayloadCopyWithImpl<$Res,
        $Val extends SocketIOGameStartEventPayload>
    implements $SocketIOGameStartEventPayloadCopyWith<$Res> {
  _$SocketIOGameStartEventPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRound = null,
  }) {
    return _then(_value.copyWith(
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData,
    ) as $Val);
  }

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound {
    return $SocketIOGameStateRoundDataCopyWith<$Res>(_value.currentRound,
        (value) {
      return _then(_value.copyWith(currentRound: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketIOGameStartEventPayloadImplCopyWith<$Res>
    implements $SocketIOGameStartEventPayloadCopyWith<$Res> {
  factory _$$SocketIOGameStartEventPayloadImplCopyWith(
          _$SocketIOGameStartEventPayloadImpl value,
          $Res Function(_$SocketIOGameStartEventPayloadImpl) then) =
      __$$SocketIOGameStartEventPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketIOGameStateRoundData currentRound});

  @override
  $SocketIOGameStateRoundDataCopyWith<$Res> get currentRound;
}

/// @nodoc
class __$$SocketIOGameStartEventPayloadImplCopyWithImpl<$Res>
    extends _$SocketIOGameStartEventPayloadCopyWithImpl<$Res,
        _$SocketIOGameStartEventPayloadImpl>
    implements _$$SocketIOGameStartEventPayloadImplCopyWith<$Res> {
  __$$SocketIOGameStartEventPayloadImplCopyWithImpl(
      _$SocketIOGameStartEventPayloadImpl _value,
      $Res Function(_$SocketIOGameStartEventPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRound = null,
  }) {
    return _then(_$SocketIOGameStartEventPayloadImpl(
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as SocketIOGameStateRoundData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameStartEventPayloadImpl
    implements _SocketIOGameStartEventPayload {
  const _$SocketIOGameStartEventPayloadImpl({required this.currentRound});

  factory _$SocketIOGameStartEventPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOGameStartEventPayloadImplFromJson(json);

  @override
  final SocketIOGameStateRoundData currentRound;

  @override
  String toString() {
    return 'SocketIOGameStartEventPayload(currentRound: $currentRound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameStartEventPayloadImpl &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentRound);

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameStartEventPayloadImplCopyWith<
          _$SocketIOGameStartEventPayloadImpl>
      get copyWith => __$$SocketIOGameStartEventPayloadImplCopyWithImpl<
          _$SocketIOGameStartEventPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameStartEventPayloadImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameStartEventPayload
    implements SocketIOGameStartEventPayload {
  const factory _SocketIOGameStartEventPayload(
          {required final SocketIOGameStateRoundData currentRound}) =
      _$SocketIOGameStartEventPayloadImpl;

  factory _SocketIOGameStartEventPayload.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameStartEventPayloadImpl.fromJson;

  @override
  SocketIOGameStateRoundData get currentRound;

  /// Create a copy of SocketIOGameStartEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameStartEventPayloadImplCopyWith<
          _$SocketIOGameStartEventPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_unpause_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameUnpauseEventPayload {

 GameStateTimer get timer;
/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOGameUnpauseEventPayloadCopyWith<SocketIOGameUnpauseEventPayload> get copyWith => _$SocketIOGameUnpauseEventPayloadCopyWithImpl<SocketIOGameUnpauseEventPayload>(this as SocketIOGameUnpauseEventPayload, _$identity);

  /// Serializes this SocketIOGameUnpauseEventPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOGameUnpauseEventPayload&&(identical(other.timer, timer) || other.timer == timer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timer);

@override
String toString() {
  return 'SocketIOGameUnpauseEventPayload(timer: $timer)';
}


}

/// @nodoc
abstract mixin class $SocketIOGameUnpauseEventPayloadCopyWith<$Res>  {
  factory $SocketIOGameUnpauseEventPayloadCopyWith(SocketIOGameUnpauseEventPayload value, $Res Function(SocketIOGameUnpauseEventPayload) _then) = _$SocketIOGameUnpauseEventPayloadCopyWithImpl;
@useResult
$Res call({
 GameStateTimer timer
});


$GameStateTimerCopyWith<$Res> get timer;

}
/// @nodoc
class _$SocketIOGameUnpauseEventPayloadCopyWithImpl<$Res>
    implements $SocketIOGameUnpauseEventPayloadCopyWith<$Res> {
  _$SocketIOGameUnpauseEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOGameUnpauseEventPayload _self;
  final $Res Function(SocketIOGameUnpauseEventPayload) _then;

/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timer = null,}) {
  return _then(_self.copyWith(
timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as GameStateTimer,
  ));
}
/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateTimerCopyWith<$Res> get timer {
  
  return $GameStateTimerCopyWith<$Res>(_self.timer, (value) {
    return _then(_self.copyWith(timer: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SocketIOGameUnpauseEventPayload implements SocketIOGameUnpauseEventPayload {
  const _SocketIOGameUnpauseEventPayload({required this.timer});
  factory _SocketIOGameUnpauseEventPayload.fromJson(Map<String, dynamic> json) => _$SocketIOGameUnpauseEventPayloadFromJson(json);

@override final  GameStateTimer timer;

/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOGameUnpauseEventPayloadCopyWith<_SocketIOGameUnpauseEventPayload> get copyWith => __$SocketIOGameUnpauseEventPayloadCopyWithImpl<_SocketIOGameUnpauseEventPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOGameUnpauseEventPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOGameUnpauseEventPayload&&(identical(other.timer, timer) || other.timer == timer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timer);

@override
String toString() {
  return 'SocketIOGameUnpauseEventPayload(timer: $timer)';
}


}

/// @nodoc
abstract mixin class _$SocketIOGameUnpauseEventPayloadCopyWith<$Res> implements $SocketIOGameUnpauseEventPayloadCopyWith<$Res> {
  factory _$SocketIOGameUnpauseEventPayloadCopyWith(_SocketIOGameUnpauseEventPayload value, $Res Function(_SocketIOGameUnpauseEventPayload) _then) = __$SocketIOGameUnpauseEventPayloadCopyWithImpl;
@override @useResult
$Res call({
 GameStateTimer timer
});


@override $GameStateTimerCopyWith<$Res> get timer;

}
/// @nodoc
class __$SocketIOGameUnpauseEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOGameUnpauseEventPayloadCopyWith<$Res> {
  __$SocketIOGameUnpauseEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOGameUnpauseEventPayload _self;
  final $Res Function(_SocketIOGameUnpauseEventPayload) _then;

/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timer = null,}) {
  return _then(_SocketIOGameUnpauseEventPayload(
timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as GameStateTimer,
  ));
}

/// Create a copy of SocketIOGameUnpauseEventPayload
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateTimerCopyWith<$Res> get timer {
  
  return $GameStateTimerCopyWith<$Res>(_self.timer, (value) {
    return _then(_self.copyWith(timer: value));
  });
}
}

// dart format on

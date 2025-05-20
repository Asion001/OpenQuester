// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_question_answer_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOQuestionAnswerEventPayload {

/// ID of the user who is answering
 int get userId; GameStateTimer get timer;
/// Create a copy of SocketIOQuestionAnswerEventPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOQuestionAnswerEventPayloadCopyWith<SocketIOQuestionAnswerEventPayload> get copyWith => _$SocketIOQuestionAnswerEventPayloadCopyWithImpl<SocketIOQuestionAnswerEventPayload>(this as SocketIOQuestionAnswerEventPayload, _$identity);

  /// Serializes this SocketIOQuestionAnswerEventPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOQuestionAnswerEventPayload&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.timer, timer) || other.timer == timer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,timer);

@override
String toString() {
  return 'SocketIOQuestionAnswerEventPayload(userId: $userId, timer: $timer)';
}


}

/// @nodoc
abstract mixin class $SocketIOQuestionAnswerEventPayloadCopyWith<$Res>  {
  factory $SocketIOQuestionAnswerEventPayloadCopyWith(SocketIOQuestionAnswerEventPayload value, $Res Function(SocketIOQuestionAnswerEventPayload) _then) = _$SocketIOQuestionAnswerEventPayloadCopyWithImpl;
@useResult
$Res call({
 int userId, GameStateTimer timer
});


$GameStateTimerCopyWith<$Res> get timer;

}
/// @nodoc
class _$SocketIOQuestionAnswerEventPayloadCopyWithImpl<$Res>
    implements $SocketIOQuestionAnswerEventPayloadCopyWith<$Res> {
  _$SocketIOQuestionAnswerEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOQuestionAnswerEventPayload _self;
  final $Res Function(SocketIOQuestionAnswerEventPayload) _then;

/// Create a copy of SocketIOQuestionAnswerEventPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? timer = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as GameStateTimer,
  ));
}
/// Create a copy of SocketIOQuestionAnswerEventPayload
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

class _SocketIOQuestionAnswerEventPayload implements SocketIOQuestionAnswerEventPayload {
  const _SocketIOQuestionAnswerEventPayload({required this.userId, required this.timer});
  factory _SocketIOQuestionAnswerEventPayload.fromJson(Map<String, dynamic> json) => _$SocketIOQuestionAnswerEventPayloadFromJson(json);

/// ID of the user who is answering
@override final  int userId;
@override final  GameStateTimer timer;

/// Create a copy of SocketIOQuestionAnswerEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOQuestionAnswerEventPayloadCopyWith<_SocketIOQuestionAnswerEventPayload> get copyWith => __$SocketIOQuestionAnswerEventPayloadCopyWithImpl<_SocketIOQuestionAnswerEventPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOQuestionAnswerEventPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOQuestionAnswerEventPayload&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.timer, timer) || other.timer == timer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,timer);

@override
String toString() {
  return 'SocketIOQuestionAnswerEventPayload(userId: $userId, timer: $timer)';
}


}

/// @nodoc
abstract mixin class _$SocketIOQuestionAnswerEventPayloadCopyWith<$Res> implements $SocketIOQuestionAnswerEventPayloadCopyWith<$Res> {
  factory _$SocketIOQuestionAnswerEventPayloadCopyWith(_SocketIOQuestionAnswerEventPayload value, $Res Function(_SocketIOQuestionAnswerEventPayload) _then) = __$SocketIOQuestionAnswerEventPayloadCopyWithImpl;
@override @useResult
$Res call({
 int userId, GameStateTimer timer
});


@override $GameStateTimerCopyWith<$Res> get timer;

}
/// @nodoc
class __$SocketIOQuestionAnswerEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOQuestionAnswerEventPayloadCopyWith<$Res> {
  __$SocketIOQuestionAnswerEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOQuestionAnswerEventPayload _self;
  final $Res Function(_SocketIOQuestionAnswerEventPayload) _then;

/// Create a copy of SocketIOQuestionAnswerEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? timer = null,}) {
  return _then(_SocketIOQuestionAnswerEventPayload(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,timer: null == timer ? _self.timer : timer // ignore: cast_nullable_to_non_nullable
as GameStateTimer,
  ));
}

/// Create a copy of SocketIOQuestionAnswerEventPayload
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

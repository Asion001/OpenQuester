// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_chat_message_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOChatMessageEventPayload {

 String get message; String get uuid;/// ID of the user who sent the message
 int get user; DateTime get timestamp;
/// Create a copy of SocketIOChatMessageEventPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOChatMessageEventPayloadCopyWith<SocketIOChatMessageEventPayload> get copyWith => _$SocketIOChatMessageEventPayloadCopyWithImpl<SocketIOChatMessageEventPayload>(this as SocketIOChatMessageEventPayload, _$identity);

  /// Serializes this SocketIOChatMessageEventPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOChatMessageEventPayload&&(identical(other.message, message) || other.message == message)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.user, user) || other.user == user)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,uuid,user,timestamp);

@override
String toString() {
  return 'SocketIOChatMessageEventPayload(message: $message, uuid: $uuid, user: $user, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $SocketIOChatMessageEventPayloadCopyWith<$Res>  {
  factory $SocketIOChatMessageEventPayloadCopyWith(SocketIOChatMessageEventPayload value, $Res Function(SocketIOChatMessageEventPayload) _then) = _$SocketIOChatMessageEventPayloadCopyWithImpl;
@useResult
$Res call({
 String message, String uuid, int user, DateTime timestamp
});




}
/// @nodoc
class _$SocketIOChatMessageEventPayloadCopyWithImpl<$Res>
    implements $SocketIOChatMessageEventPayloadCopyWith<$Res> {
  _$SocketIOChatMessageEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOChatMessageEventPayload _self;
  final $Res Function(SocketIOChatMessageEventPayload) _then;

/// Create a copy of SocketIOChatMessageEventPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? uuid = null,Object? user = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocketIOChatMessageEventPayload implements SocketIOChatMessageEventPayload {
  const _SocketIOChatMessageEventPayload({required this.message, required this.uuid, required this.user, required this.timestamp});
  factory _SocketIOChatMessageEventPayload.fromJson(Map<String, dynamic> json) => _$SocketIOChatMessageEventPayloadFromJson(json);

@override final  String message;
@override final  String uuid;
/// ID of the user who sent the message
@override final  int user;
@override final  DateTime timestamp;

/// Create a copy of SocketIOChatMessageEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOChatMessageEventPayloadCopyWith<_SocketIOChatMessageEventPayload> get copyWith => __$SocketIOChatMessageEventPayloadCopyWithImpl<_SocketIOChatMessageEventPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOChatMessageEventPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOChatMessageEventPayload&&(identical(other.message, message) || other.message == message)&&(identical(other.uuid, uuid) || other.uuid == uuid)&&(identical(other.user, user) || other.user == user)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,uuid,user,timestamp);

@override
String toString() {
  return 'SocketIOChatMessageEventPayload(message: $message, uuid: $uuid, user: $user, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$SocketIOChatMessageEventPayloadCopyWith<$Res> implements $SocketIOChatMessageEventPayloadCopyWith<$Res> {
  factory _$SocketIOChatMessageEventPayloadCopyWith(_SocketIOChatMessageEventPayload value, $Res Function(_SocketIOChatMessageEventPayload) _then) = __$SocketIOChatMessageEventPayloadCopyWithImpl;
@override @useResult
$Res call({
 String message, String uuid, int user, DateTime timestamp
});




}
/// @nodoc
class __$SocketIOChatMessageEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOChatMessageEventPayloadCopyWith<$Res> {
  __$SocketIOChatMessageEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOChatMessageEventPayload _self;
  final $Res Function(_SocketIOChatMessageEventPayload) _then;

/// Create a copy of SocketIOChatMessageEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? uuid = null,Object? user = null,Object? timestamp = null,}) {
  return _then(_SocketIOChatMessageEventPayload(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,uuid: null == uuid ? _self.uuid : uuid // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

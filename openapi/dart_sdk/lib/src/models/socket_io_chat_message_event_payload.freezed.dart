// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_chat_message_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOChatMessageEventPayload _$SocketIOChatMessageEventPayloadFromJson(
    Map<String, dynamic> json) {
  return _SocketIOChatMessageEventPayload.fromJson(json);
}

/// @nodoc
mixin _$SocketIOChatMessageEventPayload {
  String get message => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  /// ID of the user who sent the message
  int get user => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SocketIOChatMessageEventPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOChatMessageEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOChatMessageEventPayloadCopyWith<SocketIOChatMessageEventPayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOChatMessageEventPayloadCopyWith<$Res> {
  factory $SocketIOChatMessageEventPayloadCopyWith(
          SocketIOChatMessageEventPayload value,
          $Res Function(SocketIOChatMessageEventPayload) then) =
      _$SocketIOChatMessageEventPayloadCopyWithImpl<$Res,
          SocketIOChatMessageEventPayload>;
  @useResult
  $Res call({String message, String uuid, int user, DateTime timestamp});
}

/// @nodoc
class _$SocketIOChatMessageEventPayloadCopyWithImpl<$Res,
        $Val extends SocketIOChatMessageEventPayload>
    implements $SocketIOChatMessageEventPayloadCopyWith<$Res> {
  _$SocketIOChatMessageEventPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOChatMessageEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? uuid = null,
    Object? user = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOChatMessageEventPayloadImplCopyWith<$Res>
    implements $SocketIOChatMessageEventPayloadCopyWith<$Res> {
  factory _$$SocketIOChatMessageEventPayloadImplCopyWith(
          _$SocketIOChatMessageEventPayloadImpl value,
          $Res Function(_$SocketIOChatMessageEventPayloadImpl) then) =
      __$$SocketIOChatMessageEventPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String uuid, int user, DateTime timestamp});
}

/// @nodoc
class __$$SocketIOChatMessageEventPayloadImplCopyWithImpl<$Res>
    extends _$SocketIOChatMessageEventPayloadCopyWithImpl<$Res,
        _$SocketIOChatMessageEventPayloadImpl>
    implements _$$SocketIOChatMessageEventPayloadImplCopyWith<$Res> {
  __$$SocketIOChatMessageEventPayloadImplCopyWithImpl(
      _$SocketIOChatMessageEventPayloadImpl _value,
      $Res Function(_$SocketIOChatMessageEventPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOChatMessageEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? uuid = null,
    Object? user = null,
    Object? timestamp = null,
  }) {
    return _then(_$SocketIOChatMessageEventPayloadImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOChatMessageEventPayloadImpl
    implements _SocketIOChatMessageEventPayload {
  const _$SocketIOChatMessageEventPayloadImpl(
      {required this.message,
      required this.uuid,
      required this.user,
      required this.timestamp});

  factory _$SocketIOChatMessageEventPayloadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOChatMessageEventPayloadImplFromJson(json);

  @override
  final String message;
  @override
  final String uuid;

  /// ID of the user who sent the message
  @override
  final int user;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'SocketIOChatMessageEventPayload(message: $message, uuid: $uuid, user: $user, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOChatMessageEventPayloadImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, uuid, user, timestamp);

  /// Create a copy of SocketIOChatMessageEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOChatMessageEventPayloadImplCopyWith<
          _$SocketIOChatMessageEventPayloadImpl>
      get copyWith => __$$SocketIOChatMessageEventPayloadImplCopyWithImpl<
          _$SocketIOChatMessageEventPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOChatMessageEventPayloadImplToJson(
      this,
    );
  }
}

abstract class _SocketIOChatMessageEventPayload
    implements SocketIOChatMessageEventPayload {
  const factory _SocketIOChatMessageEventPayload(
          {required final String message,
          required final String uuid,
          required final int user,
          required final DateTime timestamp}) =
      _$SocketIOChatMessageEventPayloadImpl;

  factory _SocketIOChatMessageEventPayload.fromJson(Map<String, dynamic> json) =
      _$SocketIOChatMessageEventPayloadImpl.fromJson;

  @override
  String get message;
  @override
  String get uuid;

  /// ID of the user who sent the message
  @override
  int get user;
  @override
  DateTime get timestamp;

  /// Create a copy of SocketIOChatMessageEventPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOChatMessageEventPayloadImplCopyWith<
          _$SocketIOChatMessageEventPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

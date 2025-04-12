// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'io_game_chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IOGameChatMessage _$IOGameChatMessageFromJson(Map<String, dynamic> json) {
  return _IOGameChatMessage.fromJson(json);
}

/// @nodoc
mixin _$IOGameChatMessage {
  int get user => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this IOGameChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IOGameChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IOGameChatMessageCopyWith<IOGameChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IOGameChatMessageCopyWith<$Res> {
  factory $IOGameChatMessageCopyWith(
          IOGameChatMessage value, $Res Function(IOGameChatMessage) then) =
      _$IOGameChatMessageCopyWithImpl<$Res, IOGameChatMessage>;
  @useResult
  $Res call({int user, String username, int timestamp, String message});
}

/// @nodoc
class _$IOGameChatMessageCopyWithImpl<$Res, $Val extends IOGameChatMessage>
    implements $IOGameChatMessageCopyWith<$Res> {
  _$IOGameChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IOGameChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
    Object? timestamp = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IOGameChatMessageImplCopyWith<$Res>
    implements $IOGameChatMessageCopyWith<$Res> {
  factory _$$IOGameChatMessageImplCopyWith(_$IOGameChatMessageImpl value,
          $Res Function(_$IOGameChatMessageImpl) then) =
      __$$IOGameChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int user, String username, int timestamp, String message});
}

/// @nodoc
class __$$IOGameChatMessageImplCopyWithImpl<$Res>
    extends _$IOGameChatMessageCopyWithImpl<$Res, _$IOGameChatMessageImpl>
    implements _$$IOGameChatMessageImplCopyWith<$Res> {
  __$$IOGameChatMessageImplCopyWithImpl(_$IOGameChatMessageImpl _value,
      $Res Function(_$IOGameChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of IOGameChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
    Object? timestamp = null,
    Object? message = null,
  }) {
    return _then(_$IOGameChatMessageImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IOGameChatMessageImpl implements _IOGameChatMessage {
  const _$IOGameChatMessageImpl(
      {required this.user,
      required this.username,
      required this.timestamp,
      required this.message});

  factory _$IOGameChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$IOGameChatMessageImplFromJson(json);

  @override
  final int user;
  @override
  final String username;
  @override
  final int timestamp;
  @override
  final String message;

  @override
  String toString() {
    return 'IOGameChatMessage(user: $user, username: $username, timestamp: $timestamp, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IOGameChatMessageImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, username, timestamp, message);

  /// Create a copy of IOGameChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IOGameChatMessageImplCopyWith<_$IOGameChatMessageImpl> get copyWith =>
      __$$IOGameChatMessageImplCopyWithImpl<_$IOGameChatMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IOGameChatMessageImplToJson(
      this,
    );
  }
}

abstract class _IOGameChatMessage implements IOGameChatMessage {
  const factory _IOGameChatMessage(
      {required final int user,
      required final String username,
      required final int timestamp,
      required final String message}) = _$IOGameChatMessageImpl;

  factory _IOGameChatMessage.fromJson(Map<String, dynamic> json) =
      _$IOGameChatMessageImpl.fromJson;

  @override
  int get user;
  @override
  String get username;
  @override
  int get timestamp;
  @override
  String get message;

  /// Create a copy of IOGameChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IOGameChatMessageImplCopyWith<_$IOGameChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

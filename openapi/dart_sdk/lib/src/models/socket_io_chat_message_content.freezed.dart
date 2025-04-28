// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_chat_message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOChatMessageContent {
  String get message;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOChatMessageContentCopyWith<SocketIOChatMessageContent>
      get copyWith =>
          _$SocketIOChatMessageContentCopyWithImpl<SocketIOChatMessageContent>(
              this as SocketIOChatMessageContent, _$identity);

  /// Serializes this SocketIOChatMessageContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOChatMessageContent &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SocketIOChatMessageContent(message: $message)';
  }
}

/// @nodoc
abstract mixin class $SocketIOChatMessageContentCopyWith<$Res> {
  factory $SocketIOChatMessageContentCopyWith(SocketIOChatMessageContent value,
          $Res Function(SocketIOChatMessageContent) _then) =
      _$SocketIOChatMessageContentCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SocketIOChatMessageContentCopyWithImpl<$Res>
    implements $SocketIOChatMessageContentCopyWith<$Res> {
  _$SocketIOChatMessageContentCopyWithImpl(this._self, this._then);

  final SocketIOChatMessageContent _self;
  final $Res Function(SocketIOChatMessageContent) _then;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOChatMessageContent implements SocketIOChatMessageContent {
  const _SocketIOChatMessageContent({required this.message});
  factory _SocketIOChatMessageContent.fromJson(Map<String, dynamic> json) =>
      _$SocketIOChatMessageContentFromJson(json);

  @override
  final String message;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOChatMessageContentCopyWith<_SocketIOChatMessageContent>
      get copyWith => __$SocketIOChatMessageContentCopyWithImpl<
          _SocketIOChatMessageContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOChatMessageContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOChatMessageContent &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SocketIOChatMessageContent(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOChatMessageContentCopyWith<$Res>
    implements $SocketIOChatMessageContentCopyWith<$Res> {
  factory _$SocketIOChatMessageContentCopyWith(
          _SocketIOChatMessageContent value,
          $Res Function(_SocketIOChatMessageContent) _then) =
      __$SocketIOChatMessageContentCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$SocketIOChatMessageContentCopyWithImpl<$Res>
    implements _$SocketIOChatMessageContentCopyWith<$Res> {
  __$SocketIOChatMessageContentCopyWithImpl(this._self, this._then);

  final _SocketIOChatMessageContent _self;
  final $Res Function(_SocketIOChatMessageContent) _then;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_SocketIOChatMessageContent(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

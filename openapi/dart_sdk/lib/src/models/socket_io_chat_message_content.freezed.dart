// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_chat_message_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOChatMessageContent _$SocketIOChatMessageContentFromJson(
    Map<String, dynamic> json) {
  return _SocketIOChatMessageContent.fromJson(json);
}

/// @nodoc
mixin _$SocketIOChatMessageContent {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this SocketIOChatMessageContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOChatMessageContentCopyWith<SocketIOChatMessageContent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOChatMessageContentCopyWith<$Res> {
  factory $SocketIOChatMessageContentCopyWith(SocketIOChatMessageContent value,
          $Res Function(SocketIOChatMessageContent) then) =
      _$SocketIOChatMessageContentCopyWithImpl<$Res,
          SocketIOChatMessageContent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SocketIOChatMessageContentCopyWithImpl<$Res,
        $Val extends SocketIOChatMessageContent>
    implements $SocketIOChatMessageContentCopyWith<$Res> {
  _$SocketIOChatMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOChatMessageContentImplCopyWith<$Res>
    implements $SocketIOChatMessageContentCopyWith<$Res> {
  factory _$$SocketIOChatMessageContentImplCopyWith(
          _$SocketIOChatMessageContentImpl value,
          $Res Function(_$SocketIOChatMessageContentImpl) then) =
      __$$SocketIOChatMessageContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SocketIOChatMessageContentImplCopyWithImpl<$Res>
    extends _$SocketIOChatMessageContentCopyWithImpl<$Res,
        _$SocketIOChatMessageContentImpl>
    implements _$$SocketIOChatMessageContentImplCopyWith<$Res> {
  __$$SocketIOChatMessageContentImplCopyWithImpl(
      _$SocketIOChatMessageContentImpl _value,
      $Res Function(_$SocketIOChatMessageContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SocketIOChatMessageContentImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOChatMessageContentImpl implements _SocketIOChatMessageContent {
  const _$SocketIOChatMessageContentImpl({required this.message});

  factory _$SocketIOChatMessageContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOChatMessageContentImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SocketIOChatMessageContent(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOChatMessageContentImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOChatMessageContentImplCopyWith<_$SocketIOChatMessageContentImpl>
      get copyWith => __$$SocketIOChatMessageContentImplCopyWithImpl<
          _$SocketIOChatMessageContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOChatMessageContentImplToJson(
      this,
    );
  }
}

abstract class _SocketIOChatMessageContent
    implements SocketIOChatMessageContent {
  const factory _SocketIOChatMessageContent({required final String message}) =
      _$SocketIOChatMessageContentImpl;

  factory _SocketIOChatMessageContent.fromJson(Map<String, dynamic> json) =
      _$SocketIOChatMessageContentImpl.fromJson;

  @override
  String get message;

  /// Create a copy of SocketIOChatMessageContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOChatMessageContentImplCopyWith<_$SocketIOChatMessageContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

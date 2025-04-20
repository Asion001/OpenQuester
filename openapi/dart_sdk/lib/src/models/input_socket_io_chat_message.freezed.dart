// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_socket_io_chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputSocketIOChatMessage _$InputSocketIOChatMessageFromJson(
    Map<String, dynamic> json) {
  return _InputSocketIOChatMessage.fromJson(json);
}

/// @nodoc
mixin _$InputSocketIOChatMessage {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this InputSocketIOChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputSocketIOChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputSocketIOChatMessageCopyWith<InputSocketIOChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSocketIOChatMessageCopyWith<$Res> {
  factory $InputSocketIOChatMessageCopyWith(InputSocketIOChatMessage value,
          $Res Function(InputSocketIOChatMessage) then) =
      _$InputSocketIOChatMessageCopyWithImpl<$Res, InputSocketIOChatMessage>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$InputSocketIOChatMessageCopyWithImpl<$Res,
        $Val extends InputSocketIOChatMessage>
    implements $InputSocketIOChatMessageCopyWith<$Res> {
  _$InputSocketIOChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputSocketIOChatMessage
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
abstract class _$$InputSocketIOChatMessageImplCopyWith<$Res>
    implements $InputSocketIOChatMessageCopyWith<$Res> {
  factory _$$InputSocketIOChatMessageImplCopyWith(
          _$InputSocketIOChatMessageImpl value,
          $Res Function(_$InputSocketIOChatMessageImpl) then) =
      __$$InputSocketIOChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InputSocketIOChatMessageImplCopyWithImpl<$Res>
    extends _$InputSocketIOChatMessageCopyWithImpl<$Res,
        _$InputSocketIOChatMessageImpl>
    implements _$$InputSocketIOChatMessageImplCopyWith<$Res> {
  __$$InputSocketIOChatMessageImplCopyWithImpl(
      _$InputSocketIOChatMessageImpl _value,
      $Res Function(_$InputSocketIOChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputSocketIOChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InputSocketIOChatMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputSocketIOChatMessageImpl implements _InputSocketIOChatMessage {
  const _$InputSocketIOChatMessageImpl({required this.message});

  factory _$InputSocketIOChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputSocketIOChatMessageImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'InputSocketIOChatMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputSocketIOChatMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of InputSocketIOChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputSocketIOChatMessageImplCopyWith<_$InputSocketIOChatMessageImpl>
      get copyWith => __$$InputSocketIOChatMessageImplCopyWithImpl<
          _$InputSocketIOChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputSocketIOChatMessageImplToJson(
      this,
    );
  }
}

abstract class _InputSocketIOChatMessage implements InputSocketIOChatMessage {
  const factory _InputSocketIOChatMessage({required final String message}) =
      _$InputSocketIOChatMessageImpl;

  factory _InputSocketIOChatMessage.fromJson(Map<String, dynamic> json) =
      _$InputSocketIOChatMessageImpl.fromJson;

  @override
  String get message;

  /// Create a copy of InputSocketIOChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputSocketIOChatMessageImplCopyWith<_$InputSocketIOChatMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

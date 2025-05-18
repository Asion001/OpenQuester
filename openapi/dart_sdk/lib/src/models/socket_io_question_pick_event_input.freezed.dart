// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_question_pick_event_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOQuestionPickEventInput {
  /// ID of the picked question
  int get questionId;

  /// Create a copy of SocketIOQuestionPickEventInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOQuestionPickEventInputCopyWith<SocketIOQuestionPickEventInput>
      get copyWith => _$SocketIOQuestionPickEventInputCopyWithImpl<
              SocketIOQuestionPickEventInput>(
          this as SocketIOQuestionPickEventInput, _$identity);

  /// Serializes this SocketIOQuestionPickEventInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOQuestionPickEventInput &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @override
  String toString() {
    return 'SocketIOQuestionPickEventInput(questionId: $questionId)';
  }
}

/// @nodoc
abstract mixin class $SocketIOQuestionPickEventInputCopyWith<$Res> {
  factory $SocketIOQuestionPickEventInputCopyWith(
          SocketIOQuestionPickEventInput value,
          $Res Function(SocketIOQuestionPickEventInput) _then) =
      _$SocketIOQuestionPickEventInputCopyWithImpl;
  @useResult
  $Res call({int questionId});
}

/// @nodoc
class _$SocketIOQuestionPickEventInputCopyWithImpl<$Res>
    implements $SocketIOQuestionPickEventInputCopyWith<$Res> {
  _$SocketIOQuestionPickEventInputCopyWithImpl(this._self, this._then);

  final SocketIOQuestionPickEventInput _self;
  final $Res Function(SocketIOQuestionPickEventInput) _then;

  /// Create a copy of SocketIOQuestionPickEventInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_self.copyWith(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOQuestionPickEventInput
    implements SocketIOQuestionPickEventInput {
  const _SocketIOQuestionPickEventInput({required this.questionId});
  factory _SocketIOQuestionPickEventInput.fromJson(Map<String, dynamic> json) =>
      _$SocketIOQuestionPickEventInputFromJson(json);

  /// ID of the picked question
  @override
  final int questionId;

  /// Create a copy of SocketIOQuestionPickEventInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOQuestionPickEventInputCopyWith<_SocketIOQuestionPickEventInput>
      get copyWith => __$SocketIOQuestionPickEventInputCopyWithImpl<
          _SocketIOQuestionPickEventInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOQuestionPickEventInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOQuestionPickEventInput &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @override
  String toString() {
    return 'SocketIOQuestionPickEventInput(questionId: $questionId)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOQuestionPickEventInputCopyWith<$Res>
    implements $SocketIOQuestionPickEventInputCopyWith<$Res> {
  factory _$SocketIOQuestionPickEventInputCopyWith(
          _SocketIOQuestionPickEventInput value,
          $Res Function(_SocketIOQuestionPickEventInput) _then) =
      __$SocketIOQuestionPickEventInputCopyWithImpl;
  @override
  @useResult
  $Res call({int questionId});
}

/// @nodoc
class __$SocketIOQuestionPickEventInputCopyWithImpl<$Res>
    implements _$SocketIOQuestionPickEventInputCopyWith<$Res> {
  __$SocketIOQuestionPickEventInputCopyWithImpl(this._self, this._then);

  final _SocketIOQuestionPickEventInput _self;
  final $Res Function(_SocketIOQuestionPickEventInput) _then;

  /// Create a copy of SocketIOQuestionPickEventInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_SocketIOQuestionPickEventInput(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

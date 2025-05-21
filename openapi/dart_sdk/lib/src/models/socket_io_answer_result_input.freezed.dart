// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_answer_result_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOAnswerResultInput {

/// Score result of the answer; positive for correct, negative for incorrect, zero for skip
 int get scoreResult;
/// Create a copy of SocketIOAnswerResultInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOAnswerResultInputCopyWith<SocketIOAnswerResultInput> get copyWith => _$SocketIOAnswerResultInputCopyWithImpl<SocketIOAnswerResultInput>(this as SocketIOAnswerResultInput, _$identity);

  /// Serializes this SocketIOAnswerResultInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOAnswerResultInput&&(identical(other.scoreResult, scoreResult) || other.scoreResult == scoreResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scoreResult);

@override
String toString() {
  return 'SocketIOAnswerResultInput(scoreResult: $scoreResult)';
}


}

/// @nodoc
abstract mixin class $SocketIOAnswerResultInputCopyWith<$Res>  {
  factory $SocketIOAnswerResultInputCopyWith(SocketIOAnswerResultInput value, $Res Function(SocketIOAnswerResultInput) _then) = _$SocketIOAnswerResultInputCopyWithImpl;
@useResult
$Res call({
 int scoreResult
});




}
/// @nodoc
class _$SocketIOAnswerResultInputCopyWithImpl<$Res>
    implements $SocketIOAnswerResultInputCopyWith<$Res> {
  _$SocketIOAnswerResultInputCopyWithImpl(this._self, this._then);

  final SocketIOAnswerResultInput _self;
  final $Res Function(SocketIOAnswerResultInput) _then;

/// Create a copy of SocketIOAnswerResultInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scoreResult = null,}) {
  return _then(_self.copyWith(
scoreResult: null == scoreResult ? _self.scoreResult : scoreResult // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocketIOAnswerResultInput implements SocketIOAnswerResultInput {
  const _SocketIOAnswerResultInput({required this.scoreResult});
  factory _SocketIOAnswerResultInput.fromJson(Map<String, dynamic> json) => _$SocketIOAnswerResultInputFromJson(json);

/// Score result of the answer; positive for correct, negative for incorrect, zero for skip
@override final  int scoreResult;

/// Create a copy of SocketIOAnswerResultInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOAnswerResultInputCopyWith<_SocketIOAnswerResultInput> get copyWith => __$SocketIOAnswerResultInputCopyWithImpl<_SocketIOAnswerResultInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOAnswerResultInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOAnswerResultInput&&(identical(other.scoreResult, scoreResult) || other.scoreResult == scoreResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scoreResult);

@override
String toString() {
  return 'SocketIOAnswerResultInput(scoreResult: $scoreResult)';
}


}

/// @nodoc
abstract mixin class _$SocketIOAnswerResultInputCopyWith<$Res> implements $SocketIOAnswerResultInputCopyWith<$Res> {
  factory _$SocketIOAnswerResultInputCopyWith(_SocketIOAnswerResultInput value, $Res Function(_SocketIOAnswerResultInput) _then) = __$SocketIOAnswerResultInputCopyWithImpl;
@override @useResult
$Res call({
 int scoreResult
});




}
/// @nodoc
class __$SocketIOAnswerResultInputCopyWithImpl<$Res>
    implements _$SocketIOAnswerResultInputCopyWith<$Res> {
  __$SocketIOAnswerResultInputCopyWithImpl(this._self, this._then);

  final _SocketIOAnswerResultInput _self;
  final $Res Function(_SocketIOAnswerResultInput) _then;

/// Create a copy of SocketIOAnswerResultInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scoreResult = null,}) {
  return _then(_SocketIOAnswerResultInput(
scoreResult: null == scoreResult ? _self.scoreResult : scoreResult // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

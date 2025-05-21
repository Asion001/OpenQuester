// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_question_finish_event_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOQuestionFinishEventPayload {

 List<List<PackageAnswerFile?>>? get answerFiles; QuestionAnswerText? get answerText;
/// Create a copy of SocketIOQuestionFinishEventPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOQuestionFinishEventPayloadCopyWith<SocketIOQuestionFinishEventPayload> get copyWith => _$SocketIOQuestionFinishEventPayloadCopyWithImpl<SocketIOQuestionFinishEventPayload>(this as SocketIOQuestionFinishEventPayload, _$identity);

  /// Serializes this SocketIOQuestionFinishEventPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOQuestionFinishEventPayload&&const DeepCollectionEquality().equals(other.answerFiles, answerFiles)&&(identical(other.answerText, answerText) || other.answerText == answerText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answerFiles),answerText);

@override
String toString() {
  return 'SocketIOQuestionFinishEventPayload(answerFiles: $answerFiles, answerText: $answerText)';
}


}

/// @nodoc
abstract mixin class $SocketIOQuestionFinishEventPayloadCopyWith<$Res>  {
  factory $SocketIOQuestionFinishEventPayloadCopyWith(SocketIOQuestionFinishEventPayload value, $Res Function(SocketIOQuestionFinishEventPayload) _then) = _$SocketIOQuestionFinishEventPayloadCopyWithImpl;
@useResult
$Res call({
 List<List<PackageAnswerFile?>>? answerFiles, QuestionAnswerText? answerText
});




}
/// @nodoc
class _$SocketIOQuestionFinishEventPayloadCopyWithImpl<$Res>
    implements $SocketIOQuestionFinishEventPayloadCopyWith<$Res> {
  _$SocketIOQuestionFinishEventPayloadCopyWithImpl(this._self, this._then);

  final SocketIOQuestionFinishEventPayload _self;
  final $Res Function(SocketIOQuestionFinishEventPayload) _then;

/// Create a copy of SocketIOQuestionFinishEventPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerFiles = freezed,Object? answerText = freezed,}) {
  return _then(_self.copyWith(
answerFiles: freezed == answerFiles ? _self.answerFiles : answerFiles // ignore: cast_nullable_to_non_nullable
as List<List<PackageAnswerFile?>>?,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as QuestionAnswerText?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocketIOQuestionFinishEventPayload implements SocketIOQuestionFinishEventPayload {
  const _SocketIOQuestionFinishEventPayload({final  List<List<PackageAnswerFile?>>? answerFiles, this.answerText}): _answerFiles = answerFiles;
  factory _SocketIOQuestionFinishEventPayload.fromJson(Map<String, dynamic> json) => _$SocketIOQuestionFinishEventPayloadFromJson(json);

 final  List<List<PackageAnswerFile?>>? _answerFiles;
@override List<List<PackageAnswerFile?>>? get answerFiles {
  final value = _answerFiles;
  if (value == null) return null;
  if (_answerFiles is EqualUnmodifiableListView) return _answerFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  QuestionAnswerText? answerText;

/// Create a copy of SocketIOQuestionFinishEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOQuestionFinishEventPayloadCopyWith<_SocketIOQuestionFinishEventPayload> get copyWith => __$SocketIOQuestionFinishEventPayloadCopyWithImpl<_SocketIOQuestionFinishEventPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOQuestionFinishEventPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOQuestionFinishEventPayload&&const DeepCollectionEquality().equals(other._answerFiles, _answerFiles)&&(identical(other.answerText, answerText) || other.answerText == answerText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answerFiles),answerText);

@override
String toString() {
  return 'SocketIOQuestionFinishEventPayload(answerFiles: $answerFiles, answerText: $answerText)';
}


}

/// @nodoc
abstract mixin class _$SocketIOQuestionFinishEventPayloadCopyWith<$Res> implements $SocketIOQuestionFinishEventPayloadCopyWith<$Res> {
  factory _$SocketIOQuestionFinishEventPayloadCopyWith(_SocketIOQuestionFinishEventPayload value, $Res Function(_SocketIOQuestionFinishEventPayload) _then) = __$SocketIOQuestionFinishEventPayloadCopyWithImpl;
@override @useResult
$Res call({
 List<List<PackageAnswerFile?>>? answerFiles, QuestionAnswerText? answerText
});




}
/// @nodoc
class __$SocketIOQuestionFinishEventPayloadCopyWithImpl<$Res>
    implements _$SocketIOQuestionFinishEventPayloadCopyWith<$Res> {
  __$SocketIOQuestionFinishEventPayloadCopyWithImpl(this._self, this._then);

  final _SocketIOQuestionFinishEventPayload _self;
  final $Res Function(_SocketIOQuestionFinishEventPayload) _then;

/// Create a copy of SocketIOQuestionFinishEventPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerFiles = freezed,Object? answerText = freezed,}) {
  return _then(_SocketIOQuestionFinishEventPayload(
answerFiles: freezed == answerFiles ? _self._answerFiles : answerFiles // ignore: cast_nullable_to_non_nullable
as List<List<PackageAnswerFile?>>?,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as QuestionAnswerText?,
  ));
}


}

// dart format on

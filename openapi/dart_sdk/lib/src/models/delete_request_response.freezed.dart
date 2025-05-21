// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteRequestResponse {

 String get message;
/// Create a copy of DeleteRequestResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteRequestResponseCopyWith<DeleteRequestResponse> get copyWith => _$DeleteRequestResponseCopyWithImpl<DeleteRequestResponse>(this as DeleteRequestResponse, _$identity);

  /// Serializes this DeleteRequestResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteRequestResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteRequestResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteRequestResponseCopyWith<$Res>  {
  factory $DeleteRequestResponseCopyWith(DeleteRequestResponse value, $Res Function(DeleteRequestResponse) _then) = _$DeleteRequestResponseCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DeleteRequestResponseCopyWithImpl<$Res>
    implements $DeleteRequestResponseCopyWith<$Res> {
  _$DeleteRequestResponseCopyWithImpl(this._self, this._then);

  final DeleteRequestResponse _self;
  final $Res Function(DeleteRequestResponse) _then;

/// Create a copy of DeleteRequestResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DeleteRequestResponse implements DeleteRequestResponse {
  const _DeleteRequestResponse({required this.message});
  factory _DeleteRequestResponse.fromJson(Map<String, dynamic> json) => _$DeleteRequestResponseFromJson(json);

@override final  String message;

/// Create a copy of DeleteRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRequestResponseCopyWith<_DeleteRequestResponse> get copyWith => __$DeleteRequestResponseCopyWithImpl<_DeleteRequestResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteRequestResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRequestResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteRequestResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteRequestResponseCopyWith<$Res> implements $DeleteRequestResponseCopyWith<$Res> {
  factory _$DeleteRequestResponseCopyWith(_DeleteRequestResponse value, $Res Function(_DeleteRequestResponse) _then) = __$DeleteRequestResponseCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$DeleteRequestResponseCopyWithImpl<$Res>
    implements _$DeleteRequestResponseCopyWith<$Res> {
  __$DeleteRequestResponseCopyWithImpl(this._self, this._then);

  final _DeleteRequestResponse _self;
  final $Res Function(_DeleteRequestResponse) _then;

/// Create a copy of DeleteRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_DeleteRequestResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

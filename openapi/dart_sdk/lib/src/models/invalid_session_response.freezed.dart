// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invalid_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvalidSessionResponse {

 String get error;
/// Create a copy of InvalidSessionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidSessionResponseCopyWith<InvalidSessionResponse> get copyWith => _$InvalidSessionResponseCopyWithImpl<InvalidSessionResponse>(this as InvalidSessionResponse, _$identity);

  /// Serializes this InvalidSessionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidSessionResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'InvalidSessionResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class $InvalidSessionResponseCopyWith<$Res>  {
  factory $InvalidSessionResponseCopyWith(InvalidSessionResponse value, $Res Function(InvalidSessionResponse) _then) = _$InvalidSessionResponseCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$InvalidSessionResponseCopyWithImpl<$Res>
    implements $InvalidSessionResponseCopyWith<$Res> {
  _$InvalidSessionResponseCopyWithImpl(this._self, this._then);

  final InvalidSessionResponse _self;
  final $Res Function(InvalidSessionResponse) _then;

/// Create a copy of InvalidSessionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InvalidSessionResponse implements InvalidSessionResponse {
  const _InvalidSessionResponse({required this.error});
  factory _InvalidSessionResponse.fromJson(Map<String, dynamic> json) => _$InvalidSessionResponseFromJson(json);

@override final  String error;

/// Create a copy of InvalidSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidSessionResponseCopyWith<_InvalidSessionResponse> get copyWith => __$InvalidSessionResponseCopyWithImpl<_InvalidSessionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvalidSessionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidSessionResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'InvalidSessionResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class _$InvalidSessionResponseCopyWith<$Res> implements $InvalidSessionResponseCopyWith<$Res> {
  factory _$InvalidSessionResponseCopyWith(_InvalidSessionResponse value, $Res Function(_InvalidSessionResponse) _then) = __$InvalidSessionResponseCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class __$InvalidSessionResponseCopyWithImpl<$Res>
    implements _$InvalidSessionResponseCopyWith<$Res> {
  __$InvalidSessionResponseCopyWithImpl(this._self, this._then);

  final _InvalidSessionResponse _self;
  final $Res Function(_InvalidSessionResponse) _then;

/// Create a copy of InvalidSessionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_InvalidSessionResponse(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

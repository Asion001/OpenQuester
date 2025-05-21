// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_not_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserNotFoundResponse {

 String get error;
/// Create a copy of UserNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserNotFoundResponseCopyWith<UserNotFoundResponse> get copyWith => _$UserNotFoundResponseCopyWithImpl<UserNotFoundResponse>(this as UserNotFoundResponse, _$identity);

  /// Serializes this UserNotFoundResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotFoundResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserNotFoundResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class $UserNotFoundResponseCopyWith<$Res>  {
  factory $UserNotFoundResponseCopyWith(UserNotFoundResponse value, $Res Function(UserNotFoundResponse) _then) = _$UserNotFoundResponseCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$UserNotFoundResponseCopyWithImpl<$Res>
    implements $UserNotFoundResponseCopyWith<$Res> {
  _$UserNotFoundResponseCopyWithImpl(this._self, this._then);

  final UserNotFoundResponse _self;
  final $Res Function(UserNotFoundResponse) _then;

/// Create a copy of UserNotFoundResponse
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

class _UserNotFoundResponse implements UserNotFoundResponse {
  const _UserNotFoundResponse({required this.error});
  factory _UserNotFoundResponse.fromJson(Map<String, dynamic> json) => _$UserNotFoundResponseFromJson(json);

@override final  String error;

/// Create a copy of UserNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserNotFoundResponseCopyWith<_UserNotFoundResponse> get copyWith => __$UserNotFoundResponseCopyWithImpl<_UserNotFoundResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserNotFoundResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserNotFoundResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserNotFoundResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class _$UserNotFoundResponseCopyWith<$Res> implements $UserNotFoundResponseCopyWith<$Res> {
  factory _$UserNotFoundResponseCopyWith(_UserNotFoundResponse value, $Res Function(_UserNotFoundResponse) _then) = __$UserNotFoundResponseCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class __$UserNotFoundResponseCopyWithImpl<$Res>
    implements _$UserNotFoundResponseCopyWith<$Res> {
  __$UserNotFoundResponseCopyWithImpl(this._self, this._then);

  final _UserNotFoundResponse _self;
  final $Res Function(_UserNotFoundResponse) _then;

/// Create a copy of UserNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_UserNotFoundResponse(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_not_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameNotFoundResponse {

 String get error;
/// Create a copy of GameNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameNotFoundResponseCopyWith<GameNotFoundResponse> get copyWith => _$GameNotFoundResponseCopyWithImpl<GameNotFoundResponse>(this as GameNotFoundResponse, _$identity);

  /// Serializes this GameNotFoundResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameNotFoundResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GameNotFoundResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class $GameNotFoundResponseCopyWith<$Res>  {
  factory $GameNotFoundResponseCopyWith(GameNotFoundResponse value, $Res Function(GameNotFoundResponse) _then) = _$GameNotFoundResponseCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GameNotFoundResponseCopyWithImpl<$Res>
    implements $GameNotFoundResponseCopyWith<$Res> {
  _$GameNotFoundResponseCopyWithImpl(this._self, this._then);

  final GameNotFoundResponse _self;
  final $Res Function(GameNotFoundResponse) _then;

/// Create a copy of GameNotFoundResponse
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

class _GameNotFoundResponse implements GameNotFoundResponse {
  const _GameNotFoundResponse({required this.error});
  factory _GameNotFoundResponse.fromJson(Map<String, dynamic> json) => _$GameNotFoundResponseFromJson(json);

@override final  String error;

/// Create a copy of GameNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameNotFoundResponseCopyWith<_GameNotFoundResponse> get copyWith => __$GameNotFoundResponseCopyWithImpl<_GameNotFoundResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameNotFoundResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameNotFoundResponse&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GameNotFoundResponse(error: $error)';
}


}

/// @nodoc
abstract mixin class _$GameNotFoundResponseCopyWith<$Res> implements $GameNotFoundResponseCopyWith<$Res> {
  factory _$GameNotFoundResponseCopyWith(_GameNotFoundResponse value, $Res Function(_GameNotFoundResponse) _then) = __$GameNotFoundResponseCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class __$GameNotFoundResponseCopyWithImpl<$Res>
    implements _$GameNotFoundResponseCopyWith<$Res> {
  __$GameNotFoundResponseCopyWithImpl(this._self, this._then);

  final _GameNotFoundResponse _self;
  final $Res Function(_GameNotFoundResponse) _then;

/// Create a copy of GameNotFoundResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_GameNotFoundResponse(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

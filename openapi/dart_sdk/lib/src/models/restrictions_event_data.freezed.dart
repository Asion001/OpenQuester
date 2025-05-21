// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restrictions_event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestrictionsEventData {

/// If true - player muted in in-game chat
 bool get muted;/// Restricted players can only join as spectators
 bool get restricted;
/// Create a copy of RestrictionsEventData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestrictionsEventDataCopyWith<RestrictionsEventData> get copyWith => _$RestrictionsEventDataCopyWithImpl<RestrictionsEventData>(this as RestrictionsEventData, _$identity);

  /// Serializes this RestrictionsEventData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestrictionsEventData&&(identical(other.muted, muted) || other.muted == muted)&&(identical(other.restricted, restricted) || other.restricted == restricted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muted,restricted);

@override
String toString() {
  return 'RestrictionsEventData(muted: $muted, restricted: $restricted)';
}


}

/// @nodoc
abstract mixin class $RestrictionsEventDataCopyWith<$Res>  {
  factory $RestrictionsEventDataCopyWith(RestrictionsEventData value, $Res Function(RestrictionsEventData) _then) = _$RestrictionsEventDataCopyWithImpl;
@useResult
$Res call({
 bool muted, bool restricted
});




}
/// @nodoc
class _$RestrictionsEventDataCopyWithImpl<$Res>
    implements $RestrictionsEventDataCopyWith<$Res> {
  _$RestrictionsEventDataCopyWithImpl(this._self, this._then);

  final RestrictionsEventData _self;
  final $Res Function(RestrictionsEventData) _then;

/// Create a copy of RestrictionsEventData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? muted = null,Object? restricted = null,}) {
  return _then(_self.copyWith(
muted: null == muted ? _self.muted : muted // ignore: cast_nullable_to_non_nullable
as bool,restricted: null == restricted ? _self.restricted : restricted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RestrictionsEventData implements RestrictionsEventData {
  const _RestrictionsEventData({required this.muted, required this.restricted});
  factory _RestrictionsEventData.fromJson(Map<String, dynamic> json) => _$RestrictionsEventDataFromJson(json);

/// If true - player muted in in-game chat
@override final  bool muted;
/// Restricted players can only join as spectators
@override final  bool restricted;

/// Create a copy of RestrictionsEventData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestrictionsEventDataCopyWith<_RestrictionsEventData> get copyWith => __$RestrictionsEventDataCopyWithImpl<_RestrictionsEventData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestrictionsEventDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestrictionsEventData&&(identical(other.muted, muted) || other.muted == muted)&&(identical(other.restricted, restricted) || other.restricted == restricted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muted,restricted);

@override
String toString() {
  return 'RestrictionsEventData(muted: $muted, restricted: $restricted)';
}


}

/// @nodoc
abstract mixin class _$RestrictionsEventDataCopyWith<$Res> implements $RestrictionsEventDataCopyWith<$Res> {
  factory _$RestrictionsEventDataCopyWith(_RestrictionsEventData value, $Res Function(_RestrictionsEventData) _then) = __$RestrictionsEventDataCopyWithImpl;
@override @useResult
$Res call({
 bool muted, bool restricted
});




}
/// @nodoc
class __$RestrictionsEventDataCopyWithImpl<$Res>
    implements _$RestrictionsEventDataCopyWith<$Res> {
  __$RestrictionsEventDataCopyWithImpl(this._self, this._then);

  final _RestrictionsEventData _self;
  final $Res Function(_RestrictionsEventData) _then;

/// Create a copy of RestrictionsEventData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? muted = null,Object? restricted = null,}) {
  return _then(_RestrictionsEventData(
muted: null == muted ? _self.muted : muted // ignore: cast_nullable_to_non_nullable
as bool,restricted: null == restricted ? _self.restricted : restricted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

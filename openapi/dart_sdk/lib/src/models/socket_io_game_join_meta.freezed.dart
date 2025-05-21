// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_join_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameJoinMeta {

 String get title;
/// Create a copy of SocketIOGameJoinMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketIOGameJoinMetaCopyWith<SocketIOGameJoinMeta> get copyWith => _$SocketIOGameJoinMetaCopyWithImpl<SocketIOGameJoinMeta>(this as SocketIOGameJoinMeta, _$identity);

  /// Serializes this SocketIOGameJoinMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketIOGameJoinMeta&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'SocketIOGameJoinMeta(title: $title)';
}


}

/// @nodoc
abstract mixin class $SocketIOGameJoinMetaCopyWith<$Res>  {
  factory $SocketIOGameJoinMetaCopyWith(SocketIOGameJoinMeta value, $Res Function(SocketIOGameJoinMeta) _then) = _$SocketIOGameJoinMetaCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$SocketIOGameJoinMetaCopyWithImpl<$Res>
    implements $SocketIOGameJoinMetaCopyWith<$Res> {
  _$SocketIOGameJoinMetaCopyWithImpl(this._self, this._then);

  final SocketIOGameJoinMeta _self;
  final $Res Function(SocketIOGameJoinMeta) _then;

/// Create a copy of SocketIOGameJoinMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocketIOGameJoinMeta implements SocketIOGameJoinMeta {
  const _SocketIOGameJoinMeta({required this.title});
  factory _SocketIOGameJoinMeta.fromJson(Map<String, dynamic> json) => _$SocketIOGameJoinMetaFromJson(json);

@override final  String title;

/// Create a copy of SocketIOGameJoinMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketIOGameJoinMetaCopyWith<_SocketIOGameJoinMeta> get copyWith => __$SocketIOGameJoinMetaCopyWithImpl<_SocketIOGameJoinMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketIOGameJoinMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketIOGameJoinMeta&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'SocketIOGameJoinMeta(title: $title)';
}


}

/// @nodoc
abstract mixin class _$SocketIOGameJoinMetaCopyWith<$Res> implements $SocketIOGameJoinMetaCopyWith<$Res> {
  factory _$SocketIOGameJoinMetaCopyWith(_SocketIOGameJoinMeta value, $Res Function(_SocketIOGameJoinMeta) _then) = __$SocketIOGameJoinMetaCopyWithImpl;
@override @useResult
$Res call({
 String title
});




}
/// @nodoc
class __$SocketIOGameJoinMetaCopyWithImpl<$Res>
    implements _$SocketIOGameJoinMetaCopyWith<$Res> {
  __$SocketIOGameJoinMetaCopyWithImpl(this._self, this._then);

  final _SocketIOGameJoinMeta _self;
  final $Res Function(_SocketIOGameJoinMeta) _then;

/// Create a copy of SocketIOGameJoinMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_SocketIOGameJoinMeta(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

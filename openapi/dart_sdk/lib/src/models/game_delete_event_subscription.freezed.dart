// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_delete_event_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameDeleteEventSubscription {

 GameDeleteEventSubscriptionEvent get event; Data get data;
/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameDeleteEventSubscriptionCopyWith<GameDeleteEventSubscription> get copyWith => _$GameDeleteEventSubscriptionCopyWithImpl<GameDeleteEventSubscription>(this as GameDeleteEventSubscription, _$identity);

  /// Serializes this GameDeleteEventSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameDeleteEventSubscription&&(identical(other.event, event) || other.event == event)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,data);

@override
String toString() {
  return 'GameDeleteEventSubscription(event: $event, data: $data)';
}


}

/// @nodoc
abstract mixin class $GameDeleteEventSubscriptionCopyWith<$Res>  {
  factory $GameDeleteEventSubscriptionCopyWith(GameDeleteEventSubscription value, $Res Function(GameDeleteEventSubscription) _then) = _$GameDeleteEventSubscriptionCopyWithImpl;
@useResult
$Res call({
 GameDeleteEventSubscriptionEvent event, Data data
});


$DataCopyWith<$Res> get data;

}
/// @nodoc
class _$GameDeleteEventSubscriptionCopyWithImpl<$Res>
    implements $GameDeleteEventSubscriptionCopyWith<$Res> {
  _$GameDeleteEventSubscriptionCopyWithImpl(this._self, this._then);

  final GameDeleteEventSubscription _self;
  final $Res Function(GameDeleteEventSubscription) _then;

/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? data = null,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as GameDeleteEventSubscriptionEvent,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}
/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GameDeleteEventSubscription implements GameDeleteEventSubscription {
  const _GameDeleteEventSubscription({required this.event, required this.data});
  factory _GameDeleteEventSubscription.fromJson(Map<String, dynamic> json) => _$GameDeleteEventSubscriptionFromJson(json);

@override final  GameDeleteEventSubscriptionEvent event;
@override final  Data data;

/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameDeleteEventSubscriptionCopyWith<_GameDeleteEventSubscription> get copyWith => __$GameDeleteEventSubscriptionCopyWithImpl<_GameDeleteEventSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameDeleteEventSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameDeleteEventSubscription&&(identical(other.event, event) || other.event == event)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,data);

@override
String toString() {
  return 'GameDeleteEventSubscription(event: $event, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GameDeleteEventSubscriptionCopyWith<$Res> implements $GameDeleteEventSubscriptionCopyWith<$Res> {
  factory _$GameDeleteEventSubscriptionCopyWith(_GameDeleteEventSubscription value, $Res Function(_GameDeleteEventSubscription) _then) = __$GameDeleteEventSubscriptionCopyWithImpl;
@override @useResult
$Res call({
 GameDeleteEventSubscriptionEvent event, Data data
});


@override $DataCopyWith<$Res> get data;

}
/// @nodoc
class __$GameDeleteEventSubscriptionCopyWithImpl<$Res>
    implements _$GameDeleteEventSubscriptionCopyWith<$Res> {
  __$GameDeleteEventSubscriptionCopyWithImpl(this._self, this._then);

  final _GameDeleteEventSubscription _self;
  final $Res Function(_GameDeleteEventSubscription) _then;

/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? data = null,}) {
  return _then(_GameDeleteEventSubscription(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as GameDeleteEventSubscriptionEvent,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}

/// Create a copy of GameDeleteEventSubscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on

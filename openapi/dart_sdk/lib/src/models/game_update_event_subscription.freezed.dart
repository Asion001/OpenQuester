// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_update_event_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameUpdateEventSubscription _$GameUpdateEventSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _GameUpdateEventSubscription.fromJson(json);
}

/// @nodoc
mixin _$GameUpdateEventSubscription {
  GameUpdateEventSubscriptionEvent get event =>
      throw _privateConstructorUsedError;
  GameListItem get data => throw _privateConstructorUsedError;

  /// Serializes this GameUpdateEventSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameUpdateEventSubscriptionCopyWith<GameUpdateEventSubscription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameUpdateEventSubscriptionCopyWith<$Res> {
  factory $GameUpdateEventSubscriptionCopyWith(
          GameUpdateEventSubscription value,
          $Res Function(GameUpdateEventSubscription) then) =
      _$GameUpdateEventSubscriptionCopyWithImpl<$Res,
          GameUpdateEventSubscription>;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$GameUpdateEventSubscriptionCopyWithImpl<$Res,
        $Val extends GameUpdateEventSubscription>
    implements $GameUpdateEventSubscriptionCopyWith<$Res> {
  _$GameUpdateEventSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameUpdateEventSubscriptionEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ) as $Val);
  }

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameUpdateEventSubscriptionImplCopyWith<$Res>
    implements $GameUpdateEventSubscriptionCopyWith<$Res> {
  factory _$$GameUpdateEventSubscriptionImplCopyWith(
          _$GameUpdateEventSubscriptionImpl value,
          $Res Function(_$GameUpdateEventSubscriptionImpl) then) =
      __$$GameUpdateEventSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  @override
  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameUpdateEventSubscriptionImplCopyWithImpl<$Res>
    extends _$GameUpdateEventSubscriptionCopyWithImpl<$Res,
        _$GameUpdateEventSubscriptionImpl>
    implements _$$GameUpdateEventSubscriptionImplCopyWith<$Res> {
  __$$GameUpdateEventSubscriptionImplCopyWithImpl(
      _$GameUpdateEventSubscriptionImpl _value,
      $Res Function(_$GameUpdateEventSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameUpdateEventSubscriptionImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameUpdateEventSubscriptionEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameUpdateEventSubscriptionImpl
    implements _GameUpdateEventSubscription {
  const _$GameUpdateEventSubscriptionImpl(
      {required this.event, required this.data});

  factory _$GameUpdateEventSubscriptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameUpdateEventSubscriptionImplFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  @override
  String toString() {
    return 'GameUpdateEventSubscription(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameUpdateEventSubscriptionImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameUpdateEventSubscriptionImplCopyWith<_$GameUpdateEventSubscriptionImpl>
      get copyWith => __$$GameUpdateEventSubscriptionImplCopyWithImpl<
          _$GameUpdateEventSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameUpdateEventSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _GameUpdateEventSubscription
    implements GameUpdateEventSubscription {
  const factory _GameUpdateEventSubscription(
      {required final GameUpdateEventSubscriptionEvent event,
      required final GameListItem data}) = _$GameUpdateEventSubscriptionImpl;

  factory _GameUpdateEventSubscription.fromJson(Map<String, dynamic> json) =
      _$GameUpdateEventSubscriptionImpl.fromJson;

  @override
  GameUpdateEventSubscriptionEvent get event;
  @override
  GameListItem get data;

  /// Create a copy of GameUpdateEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameUpdateEventSubscriptionImplCopyWith<_$GameUpdateEventSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

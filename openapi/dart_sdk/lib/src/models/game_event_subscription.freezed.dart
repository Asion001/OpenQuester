// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameEventSubscription _$GameEventSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _GameEventSubscription.fromJson(json);
}

/// @nodoc
mixin _$GameEventSubscription {
  IGameEvent get event => throw _privateConstructorUsedError;
  IGameListItem get data => throw _privateConstructorUsedError;

  /// Serializes this GameEventSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameEventSubscriptionCopyWith<GameEventSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventSubscriptionCopyWith<$Res> {
  factory $GameEventSubscriptionCopyWith(GameEventSubscription value,
          $Res Function(GameEventSubscription) then) =
      _$GameEventSubscriptionCopyWithImpl<$Res, GameEventSubscription>;
  @useResult
  $Res call({IGameEvent event, IGameListItem data});

  $IGameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$GameEventSubscriptionCopyWithImpl<$Res,
        $Val extends GameEventSubscription>
    implements $GameEventSubscriptionCopyWith<$Res> {
  _$GameEventSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEventSubscription
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
              as IGameEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IGameListItem,
    ) as $Val);
  }

  /// Create a copy of GameEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IGameListItemCopyWith<$Res> get data {
    return $IGameListItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameEventSubscriptionImplCopyWith<$Res>
    implements $GameEventSubscriptionCopyWith<$Res> {
  factory _$$GameEventSubscriptionImplCopyWith(
          _$GameEventSubscriptionImpl value,
          $Res Function(_$GameEventSubscriptionImpl) then) =
      __$$GameEventSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IGameEvent event, IGameListItem data});

  @override
  $IGameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameEventSubscriptionImplCopyWithImpl<$Res>
    extends _$GameEventSubscriptionCopyWithImpl<$Res,
        _$GameEventSubscriptionImpl>
    implements _$$GameEventSubscriptionImplCopyWith<$Res> {
  __$$GameEventSubscriptionImplCopyWithImpl(_$GameEventSubscriptionImpl _value,
      $Res Function(_$GameEventSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameEventSubscriptionImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as IGameEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IGameListItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventSubscriptionImpl implements _GameEventSubscription {
  const _$GameEventSubscriptionImpl({required this.event, required this.data});

  factory _$GameEventSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameEventSubscriptionImplFromJson(json);

  @override
  final IGameEvent event;
  @override
  final IGameListItem data;

  @override
  String toString() {
    return 'GameEventSubscription(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventSubscriptionImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventSubscriptionImplCopyWith<_$GameEventSubscriptionImpl>
      get copyWith => __$$GameEventSubscriptionImplCopyWithImpl<
          _$GameEventSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _GameEventSubscription implements GameEventSubscription {
  const factory _GameEventSubscription(
      {required final IGameEvent event,
      required final IGameListItem data}) = _$GameEventSubscriptionImpl;

  factory _GameEventSubscription.fromJson(Map<String, dynamic> json) =
      _$GameEventSubscriptionImpl.fromJson;

  @override
  IGameEvent get event;
  @override
  IGameListItem get data;

  /// Create a copy of GameEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventSubscriptionImplCopyWith<_$GameEventSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

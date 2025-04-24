// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_delete_event_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameDeleteEventSubscription _$GameDeleteEventSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _GameDeleteEventSubscription.fromJson(json);
}

/// @nodoc
mixin _$GameDeleteEventSubscription {
  GameDeleteEventSubscriptionEvent get event =>
      throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this GameDeleteEventSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameDeleteEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameDeleteEventSubscriptionCopyWith<GameDeleteEventSubscription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDeleteEventSubscriptionCopyWith<$Res> {
  factory $GameDeleteEventSubscriptionCopyWith(
          GameDeleteEventSubscription value,
          $Res Function(GameDeleteEventSubscription) then) =
      _$GameDeleteEventSubscriptionCopyWithImpl<$Res,
          GameDeleteEventSubscription>;
  @useResult
  $Res call({GameDeleteEventSubscriptionEvent event, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$GameDeleteEventSubscriptionCopyWithImpl<$Res,
        $Val extends GameDeleteEventSubscription>
    implements $GameDeleteEventSubscriptionCopyWith<$Res> {
  _$GameDeleteEventSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDeleteEventSubscription
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
              as GameDeleteEventSubscriptionEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  /// Create a copy of GameDeleteEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameDeleteEventSubscriptionImplCopyWith<$Res>
    implements $GameDeleteEventSubscriptionCopyWith<$Res> {
  factory _$$GameDeleteEventSubscriptionImplCopyWith(
          _$GameDeleteEventSubscriptionImpl value,
          $Res Function(_$GameDeleteEventSubscriptionImpl) then) =
      __$$GameDeleteEventSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameDeleteEventSubscriptionEvent event, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameDeleteEventSubscriptionImplCopyWithImpl<$Res>
    extends _$GameDeleteEventSubscriptionCopyWithImpl<$Res,
        _$GameDeleteEventSubscriptionImpl>
    implements _$$GameDeleteEventSubscriptionImplCopyWith<$Res> {
  __$$GameDeleteEventSubscriptionImplCopyWithImpl(
      _$GameDeleteEventSubscriptionImpl _value,
      $Res Function(_$GameDeleteEventSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDeleteEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameDeleteEventSubscriptionImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameDeleteEventSubscriptionEvent,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameDeleteEventSubscriptionImpl
    implements _GameDeleteEventSubscription {
  const _$GameDeleteEventSubscriptionImpl(
      {required this.event, required this.data});

  factory _$GameDeleteEventSubscriptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameDeleteEventSubscriptionImplFromJson(json);

  @override
  final GameDeleteEventSubscriptionEvent event;
  @override
  final Data data;

  @override
  String toString() {
    return 'GameDeleteEventSubscription(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDeleteEventSubscriptionImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameDeleteEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDeleteEventSubscriptionImplCopyWith<_$GameDeleteEventSubscriptionImpl>
      get copyWith => __$$GameDeleteEventSubscriptionImplCopyWithImpl<
          _$GameDeleteEventSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameDeleteEventSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _GameDeleteEventSubscription
    implements GameDeleteEventSubscription {
  const factory _GameDeleteEventSubscription(
      {required final GameDeleteEventSubscriptionEvent event,
      required final Data data}) = _$GameDeleteEventSubscriptionImpl;

  factory _GameDeleteEventSubscription.fromJson(Map<String, dynamic> json) =
      _$GameDeleteEventSubscriptionImpl.fromJson;

  @override
  GameDeleteEventSubscriptionEvent get event;
  @override
  Data get data;

  /// Create a copy of GameDeleteEventSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDeleteEventSubscriptionImplCopyWith<_$GameDeleteEventSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

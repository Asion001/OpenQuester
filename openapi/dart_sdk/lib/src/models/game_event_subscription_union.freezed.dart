// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event_subscription_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GameEventSubscriptionUnion _$GameEventSubscriptionUnionFromJson(
    Map<String, dynamic> json) {
  switch (json['event']) {
    case 'created':
      return GameEventSubscriptionUnionCreated.fromJson(json);
    case 'changed':
      return GameEventSubscriptionUnionChanged.fromJson(json);
    case 'started':
      return GameEventSubscriptionUnionStarted.fromJson(json);
    case 'deleted':
      return GameEventSubscriptionUnionDeleted.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'event',
          'GameEventSubscriptionUnion',
          'Invalid union type "${json['event']}"!');
  }
}

/// @nodoc
mixin _$GameEventSubscriptionUnion {
  Enum get event;
  Object get data;

  /// Serializes this GameEventSubscriptionUnion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameEventSubscriptionUnion &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'GameEventSubscriptionUnion(event: $event, data: $data)';
  }
}

/// @nodoc
class $GameEventSubscriptionUnionCopyWith<$Res> {
  $GameEventSubscriptionUnionCopyWith(GameEventSubscriptionUnion _,
      $Res Function(GameEventSubscriptionUnion) __);
}

/// @nodoc
@JsonSerializable()
class GameEventSubscriptionUnionCreated implements GameEventSubscriptionUnion {
  const GameEventSubscriptionUnionCreated(
      {required this.event, required this.data});
  factory GameEventSubscriptionUnionCreated.fromJson(
          Map<String, dynamic> json) =>
      _$GameEventSubscriptionUnionCreatedFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameEventSubscriptionUnionCreatedCopyWith<GameEventSubscriptionUnionCreated>
      get copyWith => _$GameEventSubscriptionUnionCreatedCopyWithImpl<
          GameEventSubscriptionUnionCreated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameEventSubscriptionUnionCreatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameEventSubscriptionUnionCreated &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.created(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GameEventSubscriptionUnionCreatedCopyWith<$Res>
    implements $GameEventSubscriptionUnionCopyWith<$Res> {
  factory $GameEventSubscriptionUnionCreatedCopyWith(
          GameEventSubscriptionUnionCreated value,
          $Res Function(GameEventSubscriptionUnionCreated) _then) =
      _$GameEventSubscriptionUnionCreatedCopyWithImpl;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$GameEventSubscriptionUnionCreatedCopyWithImpl<$Res>
    implements $GameEventSubscriptionUnionCreatedCopyWith<$Res> {
  _$GameEventSubscriptionUnionCreatedCopyWithImpl(this._self, this._then);

  final GameEventSubscriptionUnionCreated _self;
  final $Res Function(GameEventSubscriptionUnionCreated) _then;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(GameEventSubscriptionUnionCreated(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameUpdateEventSubscriptionEvent,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ));
  }

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class GameEventSubscriptionUnionChanged implements GameEventSubscriptionUnion {
  const GameEventSubscriptionUnionChanged(
      {required this.event, required this.data});
  factory GameEventSubscriptionUnionChanged.fromJson(
          Map<String, dynamic> json) =>
      _$GameEventSubscriptionUnionChangedFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameEventSubscriptionUnionChangedCopyWith<GameEventSubscriptionUnionChanged>
      get copyWith => _$GameEventSubscriptionUnionChangedCopyWithImpl<
          GameEventSubscriptionUnionChanged>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameEventSubscriptionUnionChangedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameEventSubscriptionUnionChanged &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.changed(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GameEventSubscriptionUnionChangedCopyWith<$Res>
    implements $GameEventSubscriptionUnionCopyWith<$Res> {
  factory $GameEventSubscriptionUnionChangedCopyWith(
          GameEventSubscriptionUnionChanged value,
          $Res Function(GameEventSubscriptionUnionChanged) _then) =
      _$GameEventSubscriptionUnionChangedCopyWithImpl;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$GameEventSubscriptionUnionChangedCopyWithImpl<$Res>
    implements $GameEventSubscriptionUnionChangedCopyWith<$Res> {
  _$GameEventSubscriptionUnionChangedCopyWithImpl(this._self, this._then);

  final GameEventSubscriptionUnionChanged _self;
  final $Res Function(GameEventSubscriptionUnionChanged) _then;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(GameEventSubscriptionUnionChanged(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameUpdateEventSubscriptionEvent,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ));
  }

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class GameEventSubscriptionUnionStarted implements GameEventSubscriptionUnion {
  const GameEventSubscriptionUnionStarted(
      {required this.event, required this.data});
  factory GameEventSubscriptionUnionStarted.fromJson(
          Map<String, dynamic> json) =>
      _$GameEventSubscriptionUnionStartedFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameEventSubscriptionUnionStartedCopyWith<GameEventSubscriptionUnionStarted>
      get copyWith => _$GameEventSubscriptionUnionStartedCopyWithImpl<
          GameEventSubscriptionUnionStarted>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameEventSubscriptionUnionStartedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameEventSubscriptionUnionStarted &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.started(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GameEventSubscriptionUnionStartedCopyWith<$Res>
    implements $GameEventSubscriptionUnionCopyWith<$Res> {
  factory $GameEventSubscriptionUnionStartedCopyWith(
          GameEventSubscriptionUnionStarted value,
          $Res Function(GameEventSubscriptionUnionStarted) _then) =
      _$GameEventSubscriptionUnionStartedCopyWithImpl;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$GameEventSubscriptionUnionStartedCopyWithImpl<$Res>
    implements $GameEventSubscriptionUnionStartedCopyWith<$Res> {
  _$GameEventSubscriptionUnionStartedCopyWithImpl(this._self, this._then);

  final GameEventSubscriptionUnionStarted _self;
  final $Res Function(GameEventSubscriptionUnionStarted) _then;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(GameEventSubscriptionUnionStarted(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameUpdateEventSubscriptionEvent,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GameListItem,
    ));
  }

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class GameEventSubscriptionUnionDeleted implements GameEventSubscriptionUnion {
  const GameEventSubscriptionUnionDeleted(
      {required this.event, required this.data});
  factory GameEventSubscriptionUnionDeleted.fromJson(
          Map<String, dynamic> json) =>
      _$GameEventSubscriptionUnionDeletedFromJson(json);

  @override
  final GameDeleteEventSubscriptionEvent event;
  @override
  final Data data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameEventSubscriptionUnionDeletedCopyWith<GameEventSubscriptionUnionDeleted>
      get copyWith => _$GameEventSubscriptionUnionDeletedCopyWithImpl<
          GameEventSubscriptionUnionDeleted>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameEventSubscriptionUnionDeletedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GameEventSubscriptionUnionDeleted &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.deleted(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GameEventSubscriptionUnionDeletedCopyWith<$Res>
    implements $GameEventSubscriptionUnionCopyWith<$Res> {
  factory $GameEventSubscriptionUnionDeletedCopyWith(
          GameEventSubscriptionUnionDeleted value,
          $Res Function(GameEventSubscriptionUnionDeleted) _then) =
      _$GameEventSubscriptionUnionDeletedCopyWithImpl;
  @useResult
  $Res call({GameDeleteEventSubscriptionEvent event, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$GameEventSubscriptionUnionDeletedCopyWithImpl<$Res>
    implements $GameEventSubscriptionUnionDeletedCopyWith<$Res> {
  _$GameEventSubscriptionUnionDeletedCopyWithImpl(this._self, this._then);

  final GameEventSubscriptionUnionDeleted _self;
  final $Res Function(GameEventSubscriptionUnionDeleted) _then;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(GameEventSubscriptionUnionDeleted(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameDeleteEventSubscriptionEvent,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  /// Create a copy of GameEventSubscriptionUnion
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

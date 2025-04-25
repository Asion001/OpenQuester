// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event_subscription_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  Enum get event => throw _privateConstructorUsedError;
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        created,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        changed,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        started,
    required TResult Function(GameDeleteEventSubscriptionEvent event, Data data)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult? Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameEventSubscriptionUnionCreated value) created,
    required TResult Function(GameEventSubscriptionUnionChanged value) changed,
    required TResult Function(GameEventSubscriptionUnionStarted value) started,
    required TResult Function(GameEventSubscriptionUnionDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameEventSubscriptionUnionCreated value)? created,
    TResult? Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult? Function(GameEventSubscriptionUnionStarted value)? started,
    TResult? Function(GameEventSubscriptionUnionDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameEventSubscriptionUnionCreated value)? created,
    TResult Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult Function(GameEventSubscriptionUnionStarted value)? started,
    TResult Function(GameEventSubscriptionUnionDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this GameEventSubscriptionUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventSubscriptionUnionCopyWith<$Res> {
  factory $GameEventSubscriptionUnionCopyWith(GameEventSubscriptionUnion value,
          $Res Function(GameEventSubscriptionUnion) then) =
      _$GameEventSubscriptionUnionCopyWithImpl<$Res,
          GameEventSubscriptionUnion>;
}

/// @nodoc
class _$GameEventSubscriptionUnionCopyWithImpl<$Res,
        $Val extends GameEventSubscriptionUnion>
    implements $GameEventSubscriptionUnionCopyWith<$Res> {
  _$GameEventSubscriptionUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GameEventSubscriptionUnionCreatedImplCopyWith<$Res> {
  factory _$$GameEventSubscriptionUnionCreatedImplCopyWith(
          _$GameEventSubscriptionUnionCreatedImpl value,
          $Res Function(_$GameEventSubscriptionUnionCreatedImpl) then) =
      __$$GameEventSubscriptionUnionCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameEventSubscriptionUnionCreatedImplCopyWithImpl<$Res>
    extends _$GameEventSubscriptionUnionCopyWithImpl<$Res,
        _$GameEventSubscriptionUnionCreatedImpl>
    implements _$$GameEventSubscriptionUnionCreatedImplCopyWith<$Res> {
  __$$GameEventSubscriptionUnionCreatedImplCopyWithImpl(
      _$GameEventSubscriptionUnionCreatedImpl _value,
      $Res Function(_$GameEventSubscriptionUnionCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameEventSubscriptionUnionCreatedImpl(
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

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventSubscriptionUnionCreatedImpl
    implements GameEventSubscriptionUnionCreated {
  const _$GameEventSubscriptionUnionCreatedImpl(
      {required this.event, required this.data});

  factory _$GameEventSubscriptionUnionCreatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameEventSubscriptionUnionCreatedImplFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.created(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventSubscriptionUnionCreatedImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventSubscriptionUnionCreatedImplCopyWith<
          _$GameEventSubscriptionUnionCreatedImpl>
      get copyWith => __$$GameEventSubscriptionUnionCreatedImplCopyWithImpl<
          _$GameEventSubscriptionUnionCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        created,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        changed,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        started,
    required TResult Function(GameDeleteEventSubscriptionEvent event, Data data)
        deleted,
  }) {
    return created(event, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult? Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
  }) {
    return created?.call(event, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(event, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameEventSubscriptionUnionCreated value) created,
    required TResult Function(GameEventSubscriptionUnionChanged value) changed,
    required TResult Function(GameEventSubscriptionUnionStarted value) started,
    required TResult Function(GameEventSubscriptionUnionDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameEventSubscriptionUnionCreated value)? created,
    TResult? Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult? Function(GameEventSubscriptionUnionStarted value)? started,
    TResult? Function(GameEventSubscriptionUnionDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameEventSubscriptionUnionCreated value)? created,
    TResult Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult Function(GameEventSubscriptionUnionStarted value)? started,
    TResult Function(GameEventSubscriptionUnionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventSubscriptionUnionCreatedImplToJson(
      this,
    );
  }
}

abstract class GameEventSubscriptionUnionCreated
    implements GameEventSubscriptionUnion {
  const factory GameEventSubscriptionUnionCreated(
          {required final GameUpdateEventSubscriptionEvent event,
          required final GameListItem data}) =
      _$GameEventSubscriptionUnionCreatedImpl;

  factory GameEventSubscriptionUnionCreated.fromJson(
          Map<String, dynamic> json) =
      _$GameEventSubscriptionUnionCreatedImpl.fromJson;

  @override
  GameUpdateEventSubscriptionEvent get event;
  @override
  GameListItem get data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventSubscriptionUnionCreatedImplCopyWith<
          _$GameEventSubscriptionUnionCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameEventSubscriptionUnionChangedImplCopyWith<$Res> {
  factory _$$GameEventSubscriptionUnionChangedImplCopyWith(
          _$GameEventSubscriptionUnionChangedImpl value,
          $Res Function(_$GameEventSubscriptionUnionChangedImpl) then) =
      __$$GameEventSubscriptionUnionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameEventSubscriptionUnionChangedImplCopyWithImpl<$Res>
    extends _$GameEventSubscriptionUnionCopyWithImpl<$Res,
        _$GameEventSubscriptionUnionChangedImpl>
    implements _$$GameEventSubscriptionUnionChangedImplCopyWith<$Res> {
  __$$GameEventSubscriptionUnionChangedImplCopyWithImpl(
      _$GameEventSubscriptionUnionChangedImpl _value,
      $Res Function(_$GameEventSubscriptionUnionChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameEventSubscriptionUnionChangedImpl(
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

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventSubscriptionUnionChangedImpl
    implements GameEventSubscriptionUnionChanged {
  const _$GameEventSubscriptionUnionChangedImpl(
      {required this.event, required this.data});

  factory _$GameEventSubscriptionUnionChangedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameEventSubscriptionUnionChangedImplFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.changed(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventSubscriptionUnionChangedImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventSubscriptionUnionChangedImplCopyWith<
          _$GameEventSubscriptionUnionChangedImpl>
      get copyWith => __$$GameEventSubscriptionUnionChangedImplCopyWithImpl<
          _$GameEventSubscriptionUnionChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        created,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        changed,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        started,
    required TResult Function(GameDeleteEventSubscriptionEvent event, Data data)
        deleted,
  }) {
    return changed(event, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult? Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
  }) {
    return changed?.call(event, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(event, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameEventSubscriptionUnionCreated value) created,
    required TResult Function(GameEventSubscriptionUnionChanged value) changed,
    required TResult Function(GameEventSubscriptionUnionStarted value) started,
    required TResult Function(GameEventSubscriptionUnionDeleted value) deleted,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameEventSubscriptionUnionCreated value)? created,
    TResult? Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult? Function(GameEventSubscriptionUnionStarted value)? started,
    TResult? Function(GameEventSubscriptionUnionDeleted value)? deleted,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameEventSubscriptionUnionCreated value)? created,
    TResult Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult Function(GameEventSubscriptionUnionStarted value)? started,
    TResult Function(GameEventSubscriptionUnionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventSubscriptionUnionChangedImplToJson(
      this,
    );
  }
}

abstract class GameEventSubscriptionUnionChanged
    implements GameEventSubscriptionUnion {
  const factory GameEventSubscriptionUnionChanged(
          {required final GameUpdateEventSubscriptionEvent event,
          required final GameListItem data}) =
      _$GameEventSubscriptionUnionChangedImpl;

  factory GameEventSubscriptionUnionChanged.fromJson(
          Map<String, dynamic> json) =
      _$GameEventSubscriptionUnionChangedImpl.fromJson;

  @override
  GameUpdateEventSubscriptionEvent get event;
  @override
  GameListItem get data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventSubscriptionUnionChangedImplCopyWith<
          _$GameEventSubscriptionUnionChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameEventSubscriptionUnionStartedImplCopyWith<$Res> {
  factory _$$GameEventSubscriptionUnionStartedImplCopyWith(
          _$GameEventSubscriptionUnionStartedImpl value,
          $Res Function(_$GameEventSubscriptionUnionStartedImpl) then) =
      __$$GameEventSubscriptionUnionStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameUpdateEventSubscriptionEvent event, GameListItem data});

  $GameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameEventSubscriptionUnionStartedImplCopyWithImpl<$Res>
    extends _$GameEventSubscriptionUnionCopyWithImpl<$Res,
        _$GameEventSubscriptionUnionStartedImpl>
    implements _$$GameEventSubscriptionUnionStartedImplCopyWith<$Res> {
  __$$GameEventSubscriptionUnionStartedImplCopyWithImpl(
      _$GameEventSubscriptionUnionStartedImpl _value,
      $Res Function(_$GameEventSubscriptionUnionStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameEventSubscriptionUnionStartedImpl(
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

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameListItemCopyWith<$Res> get data {
    return $GameListItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventSubscriptionUnionStartedImpl
    implements GameEventSubscriptionUnionStarted {
  const _$GameEventSubscriptionUnionStartedImpl(
      {required this.event, required this.data});

  factory _$GameEventSubscriptionUnionStartedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameEventSubscriptionUnionStartedImplFromJson(json);

  @override
  final GameUpdateEventSubscriptionEvent event;
  @override
  final GameListItem data;

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.started(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventSubscriptionUnionStartedImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventSubscriptionUnionStartedImplCopyWith<
          _$GameEventSubscriptionUnionStartedImpl>
      get copyWith => __$$GameEventSubscriptionUnionStartedImplCopyWithImpl<
          _$GameEventSubscriptionUnionStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        created,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        changed,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        started,
    required TResult Function(GameDeleteEventSubscriptionEvent event, Data data)
        deleted,
  }) {
    return started(event, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult? Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
  }) {
    return started?.call(event, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(event, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameEventSubscriptionUnionCreated value) created,
    required TResult Function(GameEventSubscriptionUnionChanged value) changed,
    required TResult Function(GameEventSubscriptionUnionStarted value) started,
    required TResult Function(GameEventSubscriptionUnionDeleted value) deleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameEventSubscriptionUnionCreated value)? created,
    TResult? Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult? Function(GameEventSubscriptionUnionStarted value)? started,
    TResult? Function(GameEventSubscriptionUnionDeleted value)? deleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameEventSubscriptionUnionCreated value)? created,
    TResult Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult Function(GameEventSubscriptionUnionStarted value)? started,
    TResult Function(GameEventSubscriptionUnionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventSubscriptionUnionStartedImplToJson(
      this,
    );
  }
}

abstract class GameEventSubscriptionUnionStarted
    implements GameEventSubscriptionUnion {
  const factory GameEventSubscriptionUnionStarted(
          {required final GameUpdateEventSubscriptionEvent event,
          required final GameListItem data}) =
      _$GameEventSubscriptionUnionStartedImpl;

  factory GameEventSubscriptionUnionStarted.fromJson(
          Map<String, dynamic> json) =
      _$GameEventSubscriptionUnionStartedImpl.fromJson;

  @override
  GameUpdateEventSubscriptionEvent get event;
  @override
  GameListItem get data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventSubscriptionUnionStartedImplCopyWith<
          _$GameEventSubscriptionUnionStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameEventSubscriptionUnionDeletedImplCopyWith<$Res> {
  factory _$$GameEventSubscriptionUnionDeletedImplCopyWith(
          _$GameEventSubscriptionUnionDeletedImpl value,
          $Res Function(_$GameEventSubscriptionUnionDeletedImpl) then) =
      __$$GameEventSubscriptionUnionDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameDeleteEventSubscriptionEvent event, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GameEventSubscriptionUnionDeletedImplCopyWithImpl<$Res>
    extends _$GameEventSubscriptionUnionCopyWithImpl<$Res,
        _$GameEventSubscriptionUnionDeletedImpl>
    implements _$$GameEventSubscriptionUnionDeletedImplCopyWith<$Res> {
  __$$GameEventSubscriptionUnionDeletedImplCopyWithImpl(
      _$GameEventSubscriptionUnionDeletedImpl _value,
      $Res Function(_$GameEventSubscriptionUnionDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$GameEventSubscriptionUnionDeletedImpl(
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

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GameEventSubscriptionUnionDeletedImpl
    implements GameEventSubscriptionUnionDeleted {
  const _$GameEventSubscriptionUnionDeletedImpl(
      {required this.event, required this.data});

  factory _$GameEventSubscriptionUnionDeletedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GameEventSubscriptionUnionDeletedImplFromJson(json);

  @override
  final GameDeleteEventSubscriptionEvent event;
  @override
  final Data data;

  @override
  String toString() {
    return 'GameEventSubscriptionUnion.deleted(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameEventSubscriptionUnionDeletedImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameEventSubscriptionUnionDeletedImplCopyWith<
          _$GameEventSubscriptionUnionDeletedImpl>
      get copyWith => __$$GameEventSubscriptionUnionDeletedImplCopyWithImpl<
          _$GameEventSubscriptionUnionDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        created,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        changed,
    required TResult Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)
        started,
    required TResult Function(GameDeleteEventSubscriptionEvent event, Data data)
        deleted,
  }) {
    return deleted(event, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult? Function(
            GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult? Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
  }) {
    return deleted?.call(event, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        created,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        changed,
    TResult Function(GameUpdateEventSubscriptionEvent event, GameListItem data)?
        started,
    TResult Function(GameDeleteEventSubscriptionEvent event, Data data)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(event, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameEventSubscriptionUnionCreated value) created,
    required TResult Function(GameEventSubscriptionUnionChanged value) changed,
    required TResult Function(GameEventSubscriptionUnionStarted value) started,
    required TResult Function(GameEventSubscriptionUnionDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameEventSubscriptionUnionCreated value)? created,
    TResult? Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult? Function(GameEventSubscriptionUnionStarted value)? started,
    TResult? Function(GameEventSubscriptionUnionDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameEventSubscriptionUnionCreated value)? created,
    TResult Function(GameEventSubscriptionUnionChanged value)? changed,
    TResult Function(GameEventSubscriptionUnionStarted value)? started,
    TResult Function(GameEventSubscriptionUnionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameEventSubscriptionUnionDeletedImplToJson(
      this,
    );
  }
}

abstract class GameEventSubscriptionUnionDeleted
    implements GameEventSubscriptionUnion {
  const factory GameEventSubscriptionUnionDeleted(
      {required final GameDeleteEventSubscriptionEvent event,
      required final Data data}) = _$GameEventSubscriptionUnionDeletedImpl;

  factory GameEventSubscriptionUnionDeleted.fromJson(
          Map<String, dynamic> json) =
      _$GameEventSubscriptionUnionDeletedImpl.fromJson;

  @override
  GameDeleteEventSubscriptionEvent get event;
  @override
  Data get data;

  /// Create a copy of GameEventSubscriptionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameEventSubscriptionUnionDeletedImplCopyWith<
          _$GameEventSubscriptionUnionDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

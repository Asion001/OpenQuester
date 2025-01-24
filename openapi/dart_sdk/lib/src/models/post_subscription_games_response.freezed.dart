// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_subscription_games_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSubscriptionGamesResponse _$PostSubscriptionGamesResponseFromJson(
    Map<String, dynamic> json) {
  return _PostSubscriptionGamesResponse.fromJson(json);
}

/// @nodoc
mixin _$PostSubscriptionGamesResponse {
  IGameEvent get event => throw _privateConstructorUsedError;
  IGameListItem get data => throw _privateConstructorUsedError;

  /// Serializes this PostSubscriptionGamesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSubscriptionGamesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSubscriptionGamesResponseCopyWith<PostSubscriptionGamesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSubscriptionGamesResponseCopyWith<$Res> {
  factory $PostSubscriptionGamesResponseCopyWith(
          PostSubscriptionGamesResponse value,
          $Res Function(PostSubscriptionGamesResponse) then) =
      _$PostSubscriptionGamesResponseCopyWithImpl<$Res,
          PostSubscriptionGamesResponse>;
  @useResult
  $Res call({IGameEvent event, IGameListItem data});

  $IGameListItemCopyWith<$Res> get data;
}

/// @nodoc
class _$PostSubscriptionGamesResponseCopyWithImpl<$Res,
        $Val extends PostSubscriptionGamesResponse>
    implements $PostSubscriptionGamesResponseCopyWith<$Res> {
  _$PostSubscriptionGamesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSubscriptionGamesResponse
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

  /// Create a copy of PostSubscriptionGamesResponse
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
abstract class _$$PostSubscriptionGamesResponseImplCopyWith<$Res>
    implements $PostSubscriptionGamesResponseCopyWith<$Res> {
  factory _$$PostSubscriptionGamesResponseImplCopyWith(
          _$PostSubscriptionGamesResponseImpl value,
          $Res Function(_$PostSubscriptionGamesResponseImpl) then) =
      __$$PostSubscriptionGamesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IGameEvent event, IGameListItem data});

  @override
  $IGameListItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostSubscriptionGamesResponseImplCopyWithImpl<$Res>
    extends _$PostSubscriptionGamesResponseCopyWithImpl<$Res,
        _$PostSubscriptionGamesResponseImpl>
    implements _$$PostSubscriptionGamesResponseImplCopyWith<$Res> {
  __$$PostSubscriptionGamesResponseImplCopyWithImpl(
      _$PostSubscriptionGamesResponseImpl _value,
      $Res Function(_$PostSubscriptionGamesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSubscriptionGamesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$PostSubscriptionGamesResponseImpl(
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
class _$PostSubscriptionGamesResponseImpl
    implements _PostSubscriptionGamesResponse {
  const _$PostSubscriptionGamesResponseImpl(
      {required this.event, required this.data});

  factory _$PostSubscriptionGamesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostSubscriptionGamesResponseImplFromJson(json);

  @override
  final IGameEvent event;
  @override
  final IGameListItem data;

  @override
  String toString() {
    return 'PostSubscriptionGamesResponse(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSubscriptionGamesResponseImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, data);

  /// Create a copy of PostSubscriptionGamesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSubscriptionGamesResponseImplCopyWith<
          _$PostSubscriptionGamesResponseImpl>
      get copyWith => __$$PostSubscriptionGamesResponseImplCopyWithImpl<
          _$PostSubscriptionGamesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSubscriptionGamesResponseImplToJson(
      this,
    );
  }
}

abstract class _PostSubscriptionGamesResponse
    implements PostSubscriptionGamesResponse {
  const factory _PostSubscriptionGamesResponse(
      {required final IGameEvent event,
      required final IGameListItem data}) = _$PostSubscriptionGamesResponseImpl;

  factory _PostSubscriptionGamesResponse.fromJson(Map<String, dynamic> json) =
      _$PostSubscriptionGamesResponseImpl.fromJson;

  @override
  IGameEvent get event;
  @override
  IGameListItem get data;

  /// Create a copy of PostSubscriptionGamesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSubscriptionGamesResponseImplCopyWith<
          _$PostSubscriptionGamesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

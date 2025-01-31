// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_pagination_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GamesPaginationParams _$GamesPaginationParamsFromJson(
    Map<String, dynamic> json) {
  return _GamesPaginationParams.fromJson(json);
}

/// @nodoc
mixin _$GamesPaginationParams {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  GamesPaginationParamsOrder get order => throw _privateConstructorUsedError;
  GamesPaginationParamsSortBy get sortBy => throw _privateConstructorUsedError;

  /// Serializes this GamesPaginationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GamesPaginationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamesPaginationParamsCopyWith<GamesPaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesPaginationParamsCopyWith<$Res> {
  factory $GamesPaginationParamsCopyWith(GamesPaginationParams value,
          $Res Function(GamesPaginationParams) then) =
      _$GamesPaginationParamsCopyWithImpl<$Res, GamesPaginationParams>;
  @useResult
  $Res call(
      {int limit,
      int offset,
      GamesPaginationParamsOrder order,
      GamesPaginationParamsSortBy sortBy});
}

/// @nodoc
class _$GamesPaginationParamsCopyWithImpl<$Res,
        $Val extends GamesPaginationParams>
    implements $GamesPaginationParamsCopyWith<$Res> {
  _$GamesPaginationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamesPaginationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? order = null,
    Object? sortBy = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as GamesPaginationParamsOrder,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as GamesPaginationParamsSortBy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesPaginationParamsImplCopyWith<$Res>
    implements $GamesPaginationParamsCopyWith<$Res> {
  factory _$$GamesPaginationParamsImplCopyWith(
          _$GamesPaginationParamsImpl value,
          $Res Function(_$GamesPaginationParamsImpl) then) =
      __$$GamesPaginationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      int offset,
      GamesPaginationParamsOrder order,
      GamesPaginationParamsSortBy sortBy});
}

/// @nodoc
class __$$GamesPaginationParamsImplCopyWithImpl<$Res>
    extends _$GamesPaginationParamsCopyWithImpl<$Res,
        _$GamesPaginationParamsImpl>
    implements _$$GamesPaginationParamsImplCopyWith<$Res> {
  __$$GamesPaginationParamsImplCopyWithImpl(_$GamesPaginationParamsImpl _value,
      $Res Function(_$GamesPaginationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamesPaginationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? order = null,
    Object? sortBy = null,
  }) {
    return _then(_$GamesPaginationParamsImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as GamesPaginationParamsOrder,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as GamesPaginationParamsSortBy,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesPaginationParamsImpl implements _GamesPaginationParams {
  const _$GamesPaginationParamsImpl(
      {required this.limit,
      required this.offset,
      this.order = GamesPaginationParamsOrder.asc,
      this.sortBy = GamesPaginationParamsSortBy.createdAt});

  factory _$GamesPaginationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesPaginationParamsImplFromJson(json);

  @override
  final int limit;
  @override
  final int offset;
  @override
  @JsonKey()
  final GamesPaginationParamsOrder order;
  @override
  @JsonKey()
  final GamesPaginationParamsSortBy sortBy;

  @override
  String toString() {
    return 'GamesPaginationParams(limit: $limit, offset: $offset, order: $order, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesPaginationParamsImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, order, sortBy);

  /// Create a copy of GamesPaginationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesPaginationParamsImplCopyWith<_$GamesPaginationParamsImpl>
      get copyWith => __$$GamesPaginationParamsImplCopyWithImpl<
          _$GamesPaginationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesPaginationParamsImplToJson(
      this,
    );
  }
}

abstract class _GamesPaginationParams implements GamesPaginationParams {
  const factory _GamesPaginationParams(
      {required final int limit,
      required final int offset,
      final GamesPaginationParamsOrder order,
      final GamesPaginationParamsSortBy sortBy}) = _$GamesPaginationParamsImpl;

  factory _GamesPaginationParams.fromJson(Map<String, dynamic> json) =
      _$GamesPaginationParamsImpl.fromJson;

  @override
  int get limit;
  @override
  int get offset;
  @override
  GamesPaginationParamsOrder get order;
  @override
  GamesPaginationParamsSortBy get sortBy;

  /// Create a copy of GamesPaginationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamesPaginationParamsImplCopyWith<_$GamesPaginationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pagination2 _$Pagination2FromJson(Map<String, dynamic> json) {
  return _Pagination2.fromJson(json);
}

/// @nodoc
mixin _$Pagination2 {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  SortBy2 get sortBy => throw _privateConstructorUsedError;

  /// Serializes this Pagination2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Pagination2CopyWith<Pagination2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Pagination2CopyWith<$Res> {
  factory $Pagination2CopyWith(
          Pagination2 value, $Res Function(Pagination2) then) =
      _$Pagination2CopyWithImpl<$Res, Pagination2>;
  @useResult
  $Res call({int limit, int offset, Order order, SortBy2 sortBy});
}

/// @nodoc
class _$Pagination2CopyWithImpl<$Res, $Val extends Pagination2>
    implements $Pagination2CopyWith<$Res> {
  _$Pagination2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination2
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
              as Order,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy2,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Pagination2ImplCopyWith<$Res>
    implements $Pagination2CopyWith<$Res> {
  factory _$$Pagination2ImplCopyWith(
          _$Pagination2Impl value, $Res Function(_$Pagination2Impl) then) =
      __$$Pagination2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int offset, Order order, SortBy2 sortBy});
}

/// @nodoc
class __$$Pagination2ImplCopyWithImpl<$Res>
    extends _$Pagination2CopyWithImpl<$Res, _$Pagination2Impl>
    implements _$$Pagination2ImplCopyWith<$Res> {
  __$$Pagination2ImplCopyWithImpl(
      _$Pagination2Impl _value, $Res Function(_$Pagination2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? order = null,
    Object? sortBy = null,
  }) {
    return _then(_$Pagination2Impl(
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
              as Order,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Pagination2Impl implements _Pagination2 {
  const _$Pagination2Impl(
      {required this.limit,
      required this.offset,
      this.order = Order.asc,
      this.sortBy = SortBy2.createdAt});

  factory _$Pagination2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Pagination2ImplFromJson(json);

  @override
  final int limit;
  @override
  final int offset;
  @override
  @JsonKey()
  final Order order;
  @override
  @JsonKey()
  final SortBy2 sortBy;

  @override
  String toString() {
    return 'Pagination2(limit: $limit, offset: $offset, order: $order, sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Pagination2Impl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, order, sortBy);

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Pagination2ImplCopyWith<_$Pagination2Impl> get copyWith =>
      __$$Pagination2ImplCopyWithImpl<_$Pagination2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Pagination2ImplToJson(
      this,
    );
  }
}

abstract class _Pagination2 implements Pagination2 {
  const factory _Pagination2(
      {required final int limit,
      required final int offset,
      final Order order,
      final SortBy2 sortBy}) = _$Pagination2Impl;

  factory _Pagination2.fromJson(Map<String, dynamic> json) =
      _$Pagination2Impl.fromJson;

  @override
  int get limit;
  @override
  int get offset;
  @override
  Order get order;
  @override
  SortBy2 get sortBy;

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Pagination2ImplCopyWith<_$Pagination2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

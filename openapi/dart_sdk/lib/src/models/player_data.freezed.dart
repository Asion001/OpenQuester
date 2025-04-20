// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerData _$PlayerDataFromJson(Map<String, dynamic> json) {
  return _PlayerData.fromJson(json);
}

/// @nodoc
mixin _$PlayerData {
  PlayerMeta get meta => throw _privateConstructorUsedError;
  PlayerRole get role => throw _privateConstructorUsedError;
  RestrictionsEventData get restrictions => throw _privateConstructorUsedError;
  num get balance => throw _privateConstructorUsedError;

  /// Slot null has only showman and spectators
  num? get slot => throw _privateConstructorUsedError;

  /// Serializes this PlayerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerDataCopyWith<PlayerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerDataCopyWith<$Res> {
  factory $PlayerDataCopyWith(
          PlayerData value, $Res Function(PlayerData) then) =
      _$PlayerDataCopyWithImpl<$Res, PlayerData>;
  @useResult
  $Res call(
      {PlayerMeta meta,
      PlayerRole role,
      RestrictionsEventData restrictions,
      num balance,
      num? slot});

  $PlayerMetaCopyWith<$Res> get meta;
  $RestrictionsEventDataCopyWith<$Res> get restrictions;
}

/// @nodoc
class _$PlayerDataCopyWithImpl<$Res, $Val extends PlayerData>
    implements $PlayerDataCopyWith<$Res> {
  _$PlayerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? role = null,
    Object? restrictions = null,
    Object? balance = null,
    Object? slot = freezed,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PlayerMeta,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PlayerRole,
      restrictions: null == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as RestrictionsEventData,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerMetaCopyWith<$Res> get meta {
    return $PlayerMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestrictionsEventDataCopyWith<$Res> get restrictions {
    return $RestrictionsEventDataCopyWith<$Res>(_value.restrictions, (value) {
      return _then(_value.copyWith(restrictions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerDataImplCopyWith<$Res>
    implements $PlayerDataCopyWith<$Res> {
  factory _$$PlayerDataImplCopyWith(
          _$PlayerDataImpl value, $Res Function(_$PlayerDataImpl) then) =
      __$$PlayerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayerMeta meta,
      PlayerRole role,
      RestrictionsEventData restrictions,
      num balance,
      num? slot});

  @override
  $PlayerMetaCopyWith<$Res> get meta;
  @override
  $RestrictionsEventDataCopyWith<$Res> get restrictions;
}

/// @nodoc
class __$$PlayerDataImplCopyWithImpl<$Res>
    extends _$PlayerDataCopyWithImpl<$Res, _$PlayerDataImpl>
    implements _$$PlayerDataImplCopyWith<$Res> {
  __$$PlayerDataImplCopyWithImpl(
      _$PlayerDataImpl _value, $Res Function(_$PlayerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? role = null,
    Object? restrictions = null,
    Object? balance = null,
    Object? slot = freezed,
  }) {
    return _then(_$PlayerDataImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PlayerMeta,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PlayerRole,
      restrictions: null == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as RestrictionsEventData,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerDataImpl implements _PlayerData {
  const _$PlayerDataImpl(
      {required this.meta,
      required this.role,
      required this.restrictions,
      required this.balance,
      required this.slot});

  factory _$PlayerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerDataImplFromJson(json);

  @override
  final PlayerMeta meta;
  @override
  final PlayerRole role;
  @override
  final RestrictionsEventData restrictions;
  @override
  final num balance;

  /// Slot null has only showman and spectators
  @override
  final num? slot;

  @override
  String toString() {
    return 'PlayerData(meta: $meta, role: $role, restrictions: $restrictions, balance: $balance, slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerDataImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.restrictions, restrictions) ||
                other.restrictions == restrictions) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, meta, role, restrictions, balance, slot);

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerDataImplCopyWith<_$PlayerDataImpl> get copyWith =>
      __$$PlayerDataImplCopyWithImpl<_$PlayerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerDataImplToJson(
      this,
    );
  }
}

abstract class _PlayerData implements PlayerData {
  const factory _PlayerData(
      {required final PlayerMeta meta,
      required final PlayerRole role,
      required final RestrictionsEventData restrictions,
      required final num balance,
      required final num? slot}) = _$PlayerDataImpl;

  factory _PlayerData.fromJson(Map<String, dynamic> json) =
      _$PlayerDataImpl.fromJson;

  @override
  PlayerMeta get meta;
  @override
  PlayerRole get role;
  @override
  RestrictionsEventData get restrictions;
  @override
  num get balance;

  /// Slot null has only showman and spectators
  @override
  num? get slot;

  /// Create a copy of PlayerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerDataImplCopyWith<_$PlayerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restrictions_event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestrictionsEventData _$RestrictionsEventDataFromJson(
    Map<String, dynamic> json) {
  return _RestrictionsEventData.fromJson(json);
}

/// @nodoc
mixin _$RestrictionsEventData {
  /// If true - player muted in in-game chat
  bool get muted => throw _privateConstructorUsedError;

  /// Restricted players can only join as spectators
  bool get restricted => throw _privateConstructorUsedError;

  /// Serializes this RestrictionsEventData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestrictionsEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictionsEventDataCopyWith<RestrictionsEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionsEventDataCopyWith<$Res> {
  factory $RestrictionsEventDataCopyWith(RestrictionsEventData value,
          $Res Function(RestrictionsEventData) then) =
      _$RestrictionsEventDataCopyWithImpl<$Res, RestrictionsEventData>;
  @useResult
  $Res call({bool muted, bool restricted});
}

/// @nodoc
class _$RestrictionsEventDataCopyWithImpl<$Res,
        $Val extends RestrictionsEventData>
    implements $RestrictionsEventDataCopyWith<$Res> {
  _$RestrictionsEventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestrictionsEventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muted = null,
    Object? restricted = null,
  }) {
    return _then(_value.copyWith(
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
      restricted: null == restricted
          ? _value.restricted
          : restricted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestrictionsEventDataImplCopyWith<$Res>
    implements $RestrictionsEventDataCopyWith<$Res> {
  factory _$$RestrictionsEventDataImplCopyWith(
          _$RestrictionsEventDataImpl value,
          $Res Function(_$RestrictionsEventDataImpl) then) =
      __$$RestrictionsEventDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool muted, bool restricted});
}

/// @nodoc
class __$$RestrictionsEventDataImplCopyWithImpl<$Res>
    extends _$RestrictionsEventDataCopyWithImpl<$Res,
        _$RestrictionsEventDataImpl>
    implements _$$RestrictionsEventDataImplCopyWith<$Res> {
  __$$RestrictionsEventDataImplCopyWithImpl(_$RestrictionsEventDataImpl _value,
      $Res Function(_$RestrictionsEventDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestrictionsEventData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muted = null,
    Object? restricted = null,
  }) {
    return _then(_$RestrictionsEventDataImpl(
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
      restricted: null == restricted
          ? _value.restricted
          : restricted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestrictionsEventDataImpl implements _RestrictionsEventData {
  const _$RestrictionsEventDataImpl(
      {required this.muted, required this.restricted});

  factory _$RestrictionsEventDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictionsEventDataImplFromJson(json);

  /// If true - player muted in in-game chat
  @override
  final bool muted;

  /// Restricted players can only join as spectators
  @override
  final bool restricted;

  @override
  String toString() {
    return 'RestrictionsEventData(muted: $muted, restricted: $restricted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictionsEventDataImpl &&
            (identical(other.muted, muted) || other.muted == muted) &&
            (identical(other.restricted, restricted) ||
                other.restricted == restricted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, muted, restricted);

  /// Create a copy of RestrictionsEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictionsEventDataImplCopyWith<_$RestrictionsEventDataImpl>
      get copyWith => __$$RestrictionsEventDataImplCopyWithImpl<
          _$RestrictionsEventDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictionsEventDataImplToJson(
      this,
    );
  }
}

abstract class _RestrictionsEventData implements RestrictionsEventData {
  const factory _RestrictionsEventData(
      {required final bool muted,
      required final bool restricted}) = _$RestrictionsEventDataImpl;

  factory _RestrictionsEventData.fromJson(Map<String, dynamic> json) =
      _$RestrictionsEventDataImpl.fromJson;

  /// If true - player muted in in-game chat
  @override
  bool get muted;

  /// Restricted players can only join as spectators
  @override
  bool get restricted;

  /// Create a copy of RestrictionsEventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictionsEventDataImplCopyWith<_$RestrictionsEventDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

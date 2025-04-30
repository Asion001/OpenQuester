// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_state_round_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameStateRoundData {
  PackageEntitiesOrder get order;
  String get name;
  String? get description;
  List<SocketIOGameStateThemeData> get themes;

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOGameStateRoundDataCopyWith<SocketIOGameStateRoundData>
      get copyWith =>
          _$SocketIOGameStateRoundDataCopyWithImpl<SocketIOGameStateRoundData>(
              this as SocketIOGameStateRoundData, _$identity);

  /// Serializes this SocketIOGameStateRoundData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOGameStateRoundData &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.themes, themes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, description,
      const DeepCollectionEquality().hash(themes));

  @override
  String toString() {
    return 'SocketIOGameStateRoundData(order: $order, name: $name, description: $description, themes: $themes)';
  }
}

/// @nodoc
abstract mixin class $SocketIOGameStateRoundDataCopyWith<$Res> {
  factory $SocketIOGameStateRoundDataCopyWith(SocketIOGameStateRoundData value,
          $Res Function(SocketIOGameStateRoundData) _then) =
      _$SocketIOGameStateRoundDataCopyWithImpl;
  @useResult
  $Res call(
      {PackageEntitiesOrder order,
      String name,
      String? description,
      List<SocketIOGameStateThemeData> themes});
}

/// @nodoc
class _$SocketIOGameStateRoundDataCopyWithImpl<$Res>
    implements $SocketIOGameStateRoundDataCopyWith<$Res> {
  _$SocketIOGameStateRoundDataCopyWithImpl(this._self, this._then);

  final SocketIOGameStateRoundData _self;
  final $Res Function(SocketIOGameStateRoundData) _then;

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? themes = null,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _self.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateThemeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOGameStateRoundData implements SocketIOGameStateRoundData {
  const _SocketIOGameStateRoundData(
      {required this.order,
      required this.name,
      required this.description,
      required final List<SocketIOGameStateThemeData> themes})
      : _themes = themes;
  factory _SocketIOGameStateRoundData.fromJson(Map<String, dynamic> json) =>
      _$SocketIOGameStateRoundDataFromJson(json);

  @override
  final PackageEntitiesOrder order;
  @override
  final String name;
  @override
  final String? description;
  final List<SocketIOGameStateThemeData> _themes;
  @override
  List<SocketIOGameStateThemeData> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOGameStateRoundDataCopyWith<_SocketIOGameStateRoundData>
      get copyWith => __$SocketIOGameStateRoundDataCopyWithImpl<
          _SocketIOGameStateRoundData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOGameStateRoundDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOGameStateRoundData &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, description,
      const DeepCollectionEquality().hash(_themes));

  @override
  String toString() {
    return 'SocketIOGameStateRoundData(order: $order, name: $name, description: $description, themes: $themes)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOGameStateRoundDataCopyWith<$Res>
    implements $SocketIOGameStateRoundDataCopyWith<$Res> {
  factory _$SocketIOGameStateRoundDataCopyWith(
          _SocketIOGameStateRoundData value,
          $Res Function(_SocketIOGameStateRoundData) _then) =
      __$SocketIOGameStateRoundDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PackageEntitiesOrder order,
      String name,
      String? description,
      List<SocketIOGameStateThemeData> themes});
}

/// @nodoc
class __$SocketIOGameStateRoundDataCopyWithImpl<$Res>
    implements _$SocketIOGameStateRoundDataCopyWith<$Res> {
  __$SocketIOGameStateRoundDataCopyWithImpl(this._self, this._then);

  final _SocketIOGameStateRoundData _self;
  final $Res Function(_SocketIOGameStateRoundData) _then;

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? themes = null,
  }) {
    return _then(_SocketIOGameStateRoundData(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _self._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateThemeData>,
    ));
  }
}

// dart format on

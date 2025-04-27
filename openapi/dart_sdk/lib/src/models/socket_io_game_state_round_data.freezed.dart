// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_state_round_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameStateRoundData _$SocketIOGameStateRoundDataFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameStateRoundData.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameStateRoundData {
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<SocketIOGameStateThemeData> get themes =>
      throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameStateRoundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameStateRoundDataCopyWith<SocketIOGameStateRoundData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameStateRoundDataCopyWith<$Res> {
  factory $SocketIOGameStateRoundDataCopyWith(SocketIOGameStateRoundData value,
          $Res Function(SocketIOGameStateRoundData) then) =
      _$SocketIOGameStateRoundDataCopyWithImpl<$Res,
          SocketIOGameStateRoundData>;
  @useResult
  $Res call(
      {int order,
      String name,
      String? description,
      List<SocketIOGameStateThemeData> themes});
}

/// @nodoc
class _$SocketIOGameStateRoundDataCopyWithImpl<$Res,
        $Val extends SocketIOGameStateRoundData>
    implements $SocketIOGameStateRoundDataCopyWith<$Res> {
  _$SocketIOGameStateRoundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateThemeData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOGameStateRoundDataImplCopyWith<$Res>
    implements $SocketIOGameStateRoundDataCopyWith<$Res> {
  factory _$$SocketIOGameStateRoundDataImplCopyWith(
          _$SocketIOGameStateRoundDataImpl value,
          $Res Function(_$SocketIOGameStateRoundDataImpl) then) =
      __$$SocketIOGameStateRoundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      String name,
      String? description,
      List<SocketIOGameStateThemeData> themes});
}

/// @nodoc
class __$$SocketIOGameStateRoundDataImplCopyWithImpl<$Res>
    extends _$SocketIOGameStateRoundDataCopyWithImpl<$Res,
        _$SocketIOGameStateRoundDataImpl>
    implements _$$SocketIOGameStateRoundDataImplCopyWith<$Res> {
  __$$SocketIOGameStateRoundDataImplCopyWithImpl(
      _$SocketIOGameStateRoundDataImpl _value,
      $Res Function(_$SocketIOGameStateRoundDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$SocketIOGameStateRoundDataImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateThemeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameStateRoundDataImpl implements _SocketIOGameStateRoundData {
  const _$SocketIOGameStateRoundDataImpl(
      {required this.order,
      required this.name,
      required this.description,
      required final List<SocketIOGameStateThemeData> themes})
      : _themes = themes;

  factory _$SocketIOGameStateRoundDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOGameStateRoundDataImplFromJson(json);

  @override
  final int order;
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

  @override
  String toString() {
    return 'SocketIOGameStateRoundData(order: $order, name: $name, description: $description, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameStateRoundDataImpl &&
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

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameStateRoundDataImplCopyWith<_$SocketIOGameStateRoundDataImpl>
      get copyWith => __$$SocketIOGameStateRoundDataImplCopyWithImpl<
          _$SocketIOGameStateRoundDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameStateRoundDataImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameStateRoundData
    implements SocketIOGameStateRoundData {
  const factory _SocketIOGameStateRoundData(
          {required final int order,
          required final String name,
          required final String? description,
          required final List<SocketIOGameStateThemeData> themes}) =
      _$SocketIOGameStateRoundDataImpl;

  factory _SocketIOGameStateRoundData.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameStateRoundDataImpl.fromJson;

  @override
  int get order;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<SocketIOGameStateThemeData> get themes;

  /// Create a copy of SocketIOGameStateRoundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameStateRoundDataImplCopyWith<_$SocketIOGameStateRoundDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

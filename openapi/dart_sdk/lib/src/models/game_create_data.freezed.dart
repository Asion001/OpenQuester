// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_create_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameCreateData _$GameCreateDataFromJson(Map<String, dynamic> json) {
  return _GameCreateData.fromJson(json);
}

/// @nodoc
mixin _$GameCreateData {
  String get title => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  AgeRestriction get ageRestriction => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;

  /// Serializes this GameCreateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCreateDataCopyWith<GameCreateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCreateDataCopyWith<$Res> {
  factory $GameCreateDataCopyWith(
          GameCreateData value, $Res Function(GameCreateData) then) =
      _$GameCreateDataCopyWithImpl<$Res, GameCreateData>;
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      AgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class _$GameCreateDataCopyWithImpl<$Res, $Val extends GameCreateData>
    implements $GameCreateDataCopyWith<$Res> {
  _$GameCreateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? packageId = null,
    Object? isPrivate = null,
    Object? ageRestriction = null,
    Object? maxPlayers = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCreateDataImplCopyWith<$Res>
    implements $GameCreateDataCopyWith<$Res> {
  factory _$$GameCreateDataImplCopyWith(_$GameCreateDataImpl value,
          $Res Function(_$GameCreateDataImpl) then) =
      __$$GameCreateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      AgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class __$$GameCreateDataImplCopyWithImpl<$Res>
    extends _$GameCreateDataCopyWithImpl<$Res, _$GameCreateDataImpl>
    implements _$$GameCreateDataImplCopyWith<$Res> {
  __$$GameCreateDataImplCopyWithImpl(
      _$GameCreateDataImpl _value, $Res Function(_$GameCreateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? packageId = null,
    Object? isPrivate = null,
    Object? ageRestriction = null,
    Object? maxPlayers = null,
  }) {
    return _then(_$GameCreateDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameCreateDataImpl implements _GameCreateData {
  const _$GameCreateDataImpl(
      {required this.title,
      required this.packageId,
      required this.isPrivate,
      required this.ageRestriction,
      required this.maxPlayers});

  factory _$GameCreateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameCreateDataImplFromJson(json);

  @override
  final String title;
  @override
  final int packageId;
  @override
  final bool isPrivate;
  @override
  final AgeRestriction ageRestriction;
  @override
  final int maxPlayers;

  @override
  String toString() {
    return 'GameCreateData(title: $title, packageId: $packageId, isPrivate: $isPrivate, ageRestriction: $ageRestriction, maxPlayers: $maxPlayers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCreateDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, packageId, isPrivate, ageRestriction, maxPlayers);

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCreateDataImplCopyWith<_$GameCreateDataImpl> get copyWith =>
      __$$GameCreateDataImplCopyWithImpl<_$GameCreateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameCreateDataImplToJson(
      this,
    );
  }
}

abstract class _GameCreateData implements GameCreateData {
  const factory _GameCreateData(
      {required final String title,
      required final int packageId,
      required final bool isPrivate,
      required final AgeRestriction ageRestriction,
      required final int maxPlayers}) = _$GameCreateDataImpl;

  factory _GameCreateData.fromJson(Map<String, dynamic> json) =
      _$GameCreateDataImpl.fromJson;

  @override
  String get title;
  @override
  int get packageId;
  @override
  bool get isPrivate;
  @override
  AgeRestriction get ageRestriction;
  @override
  int get maxPlayers;

  /// Create a copy of GameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameCreateDataImplCopyWith<_$GameCreateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

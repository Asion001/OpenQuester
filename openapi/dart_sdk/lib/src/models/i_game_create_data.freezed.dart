// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_game_create_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IGameCreateData _$IGameCreateDataFromJson(Map<String, dynamic> json) {
  return _IGameCreateData.fromJson(json);
}

/// @nodoc
mixin _$IGameCreateData {
  String get title => throw _privateConstructorUsedError;
  int get packageId => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  IGameCreateDataAgeRestriction get ageRestriction =>
      throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;

  /// Serializes this IGameCreateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IGameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IGameCreateDataCopyWith<IGameCreateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IGameCreateDataCopyWith<$Res> {
  factory $IGameCreateDataCopyWith(
          IGameCreateData value, $Res Function(IGameCreateData) then) =
      _$IGameCreateDataCopyWithImpl<$Res, IGameCreateData>;
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      IGameCreateDataAgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class _$IGameCreateDataCopyWithImpl<$Res, $Val extends IGameCreateData>
    implements $IGameCreateDataCopyWith<$Res> {
  _$IGameCreateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IGameCreateData
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
              as IGameCreateDataAgeRestriction,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IGameCreateDataImplCopyWith<$Res>
    implements $IGameCreateDataCopyWith<$Res> {
  factory _$$IGameCreateDataImplCopyWith(_$IGameCreateDataImpl value,
          $Res Function(_$IGameCreateDataImpl) then) =
      __$$IGameCreateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int packageId,
      bool isPrivate,
      IGameCreateDataAgeRestriction ageRestriction,
      int maxPlayers});
}

/// @nodoc
class __$$IGameCreateDataImplCopyWithImpl<$Res>
    extends _$IGameCreateDataCopyWithImpl<$Res, _$IGameCreateDataImpl>
    implements _$$IGameCreateDataImplCopyWith<$Res> {
  __$$IGameCreateDataImplCopyWithImpl(
      _$IGameCreateDataImpl _value, $Res Function(_$IGameCreateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of IGameCreateData
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
    return _then(_$IGameCreateDataImpl(
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
              as IGameCreateDataAgeRestriction,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IGameCreateDataImpl implements _IGameCreateData {
  const _$IGameCreateDataImpl(
      {required this.title,
      required this.packageId,
      required this.isPrivate,
      required this.ageRestriction,
      required this.maxPlayers});

  factory _$IGameCreateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IGameCreateDataImplFromJson(json);

  @override
  final String title;
  @override
  final int packageId;
  @override
  final bool isPrivate;
  @override
  final IGameCreateDataAgeRestriction ageRestriction;
  @override
  final int maxPlayers;

  @override
  String toString() {
    return 'IGameCreateData(title: $title, packageId: $packageId, isPrivate: $isPrivate, ageRestriction: $ageRestriction, maxPlayers: $maxPlayers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IGameCreateDataImpl &&
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

  /// Create a copy of IGameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IGameCreateDataImplCopyWith<_$IGameCreateDataImpl> get copyWith =>
      __$$IGameCreateDataImplCopyWithImpl<_$IGameCreateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IGameCreateDataImplToJson(
      this,
    );
  }
}

abstract class _IGameCreateData implements IGameCreateData {
  const factory _IGameCreateData(
      {required final String title,
      required final int packageId,
      required final bool isPrivate,
      required final IGameCreateDataAgeRestriction ageRestriction,
      required final int maxPlayers}) = _$IGameCreateDataImpl;

  factory _IGameCreateData.fromJson(Map<String, dynamic> json) =
      _$IGameCreateDataImpl.fromJson;

  @override
  String get title;
  @override
  int get packageId;
  @override
  bool get isPrivate;
  @override
  IGameCreateDataAgeRestriction get ageRestriction;
  @override
  int get maxPlayers;

  /// Create a copy of IGameCreateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IGameCreateDataImplCopyWith<_$IGameCreateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

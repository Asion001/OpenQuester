// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateGameDto {
  PackageItem? get package => throw _privateConstructorUsedError;
  String? get gameName => throw _privateConstructorUsedError;
  AgeRestriction get ageRestriction => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateGameDtoCopyWith<CreateGameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGameDtoCopyWith<$Res> {
  factory $CreateGameDtoCopyWith(
          CreateGameDto value, $Res Function(CreateGameDto) then) =
      _$CreateGameDtoCopyWithImpl<$Res, CreateGameDto>;
  @useResult
  $Res call(
      {PackageItem? package,
      String? gameName,
      AgeRestriction ageRestriction,
      bool private,
      int maxPlayers});

  $PackageItemCopyWith<$Res>? get package;
}

/// @nodoc
class _$CreateGameDtoCopyWithImpl<$Res, $Val extends CreateGameDto>
    implements $CreateGameDtoCopyWith<$Res> {
  _$CreateGameDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? gameName = freezed,
    Object? ageRestriction = null,
    Object? private = null,
    Object? maxPlayers = null,
  }) {
    return _then(_value.copyWith(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageItemCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageItemCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateGameDtoImplCopyWith<$Res>
    implements $CreateGameDtoCopyWith<$Res> {
  factory _$$CreateGameDtoImplCopyWith(
          _$CreateGameDtoImpl value, $Res Function(_$CreateGameDtoImpl) then) =
      __$$CreateGameDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PackageItem? package,
      String? gameName,
      AgeRestriction ageRestriction,
      bool private,
      int maxPlayers});

  @override
  $PackageItemCopyWith<$Res>? get package;
}

/// @nodoc
class __$$CreateGameDtoImplCopyWithImpl<$Res>
    extends _$CreateGameDtoCopyWithImpl<$Res, _$CreateGameDtoImpl>
    implements _$$CreateGameDtoImplCopyWith<$Res> {
  __$$CreateGameDtoImplCopyWithImpl(
      _$CreateGameDtoImpl _value, $Res Function(_$CreateGameDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? gameName = freezed,
    Object? ageRestriction = null,
    Object? private = null,
    Object? maxPlayers = null,
  }) {
    return _then(_$CreateGameDtoImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageItem?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRestriction: null == ageRestriction
          ? _value.ageRestriction
          : ageRestriction // ignore: cast_nullable_to_non_nullable
              as AgeRestriction,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateGameDtoImpl implements _CreateGameDto {
  const _$CreateGameDtoImpl(
      {this.package,
      this.gameName,
      this.ageRestriction = AgeRestriction.none,
      this.private = false,
      this.maxPlayers = 10});

  @override
  final PackageItem? package;
  @override
  final String? gameName;
  @override
  @JsonKey()
  final AgeRestriction ageRestriction;
  @override
  @JsonKey()
  final bool private;
  @override
  @JsonKey()
  final int maxPlayers;

  @override
  String toString() {
    return 'CreateGameDto(package: $package, gameName: $gameName, ageRestriction: $ageRestriction, private: $private, maxPlayers: $maxPlayers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGameDtoImpl &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.ageRestriction, ageRestriction) ||
                other.ageRestriction == ageRestriction) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, package, gameName, ageRestriction, private, maxPlayers);

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGameDtoImplCopyWith<_$CreateGameDtoImpl> get copyWith =>
      __$$CreateGameDtoImplCopyWithImpl<_$CreateGameDtoImpl>(this, _$identity);
}

abstract class _CreateGameDto implements CreateGameDto {
  const factory _CreateGameDto(
      {final PackageItem? package,
      final String? gameName,
      final AgeRestriction ageRestriction,
      final bool private,
      final int maxPlayers}) = _$CreateGameDtoImpl;

  @override
  PackageItem? get package;
  @override
  String? get gameName;
  @override
  AgeRestriction get ageRestriction;
  @override
  bool get private;
  @override
  int get maxPlayers;

  /// Create a copy of CreateGameDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGameDtoImplCopyWith<_$CreateGameDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

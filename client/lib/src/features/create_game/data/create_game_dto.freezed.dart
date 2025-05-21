// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateGameDto {

 PackageListItem? get package; String? get gameName; AgeRestriction get ageRestriction; bool get private; int get maxPlayers;
/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGameDtoCopyWith<CreateGameDto> get copyWith => _$CreateGameDtoCopyWithImpl<CreateGameDto>(this as CreateGameDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGameDto&&(identical(other.package, package) || other.package == package)&&(identical(other.gameName, gameName) || other.gameName == gameName)&&(identical(other.ageRestriction, ageRestriction) || other.ageRestriction == ageRestriction)&&(identical(other.private, private) || other.private == private)&&(identical(other.maxPlayers, maxPlayers) || other.maxPlayers == maxPlayers));
}


@override
int get hashCode => Object.hash(runtimeType,package,gameName,ageRestriction,private,maxPlayers);

@override
String toString() {
  return 'CreateGameDto(package: $package, gameName: $gameName, ageRestriction: $ageRestriction, private: $private, maxPlayers: $maxPlayers)';
}


}

/// @nodoc
abstract mixin class $CreateGameDtoCopyWith<$Res>  {
  factory $CreateGameDtoCopyWith(CreateGameDto value, $Res Function(CreateGameDto) _then) = _$CreateGameDtoCopyWithImpl;
@useResult
$Res call({
 PackageListItem? package, String? gameName, AgeRestriction ageRestriction, bool private, int maxPlayers
});


$PackageListItemCopyWith<$Res>? get package;

}
/// @nodoc
class _$CreateGameDtoCopyWithImpl<$Res>
    implements $CreateGameDtoCopyWith<$Res> {
  _$CreateGameDtoCopyWithImpl(this._self, this._then);

  final CreateGameDto _self;
  final $Res Function(CreateGameDto) _then;

/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? package = freezed,Object? gameName = freezed,Object? ageRestriction = null,Object? private = null,Object? maxPlayers = null,}) {
  return _then(_self.copyWith(
package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageListItem?,gameName: freezed == gameName ? _self.gameName : gameName // ignore: cast_nullable_to_non_nullable
as String?,ageRestriction: null == ageRestriction ? _self.ageRestriction : ageRestriction // ignore: cast_nullable_to_non_nullable
as AgeRestriction,private: null == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool,maxPlayers: null == maxPlayers ? _self.maxPlayers : maxPlayers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageListItemCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageListItemCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}


/// @nodoc


class _CreateGameDto implements CreateGameDto {
  const _CreateGameDto({this.package, this.gameName, this.ageRestriction = AgeRestriction.none, this.private = false, this.maxPlayers = 10});
  

@override final  PackageListItem? package;
@override final  String? gameName;
@override@JsonKey() final  AgeRestriction ageRestriction;
@override@JsonKey() final  bool private;
@override@JsonKey() final  int maxPlayers;

/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGameDtoCopyWith<_CreateGameDto> get copyWith => __$CreateGameDtoCopyWithImpl<_CreateGameDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGameDto&&(identical(other.package, package) || other.package == package)&&(identical(other.gameName, gameName) || other.gameName == gameName)&&(identical(other.ageRestriction, ageRestriction) || other.ageRestriction == ageRestriction)&&(identical(other.private, private) || other.private == private)&&(identical(other.maxPlayers, maxPlayers) || other.maxPlayers == maxPlayers));
}


@override
int get hashCode => Object.hash(runtimeType,package,gameName,ageRestriction,private,maxPlayers);

@override
String toString() {
  return 'CreateGameDto(package: $package, gameName: $gameName, ageRestriction: $ageRestriction, private: $private, maxPlayers: $maxPlayers)';
}


}

/// @nodoc
abstract mixin class _$CreateGameDtoCopyWith<$Res> implements $CreateGameDtoCopyWith<$Res> {
  factory _$CreateGameDtoCopyWith(_CreateGameDto value, $Res Function(_CreateGameDto) _then) = __$CreateGameDtoCopyWithImpl;
@override @useResult
$Res call({
 PackageListItem? package, String? gameName, AgeRestriction ageRestriction, bool private, int maxPlayers
});


@override $PackageListItemCopyWith<$Res>? get package;

}
/// @nodoc
class __$CreateGameDtoCopyWithImpl<$Res>
    implements _$CreateGameDtoCopyWith<$Res> {
  __$CreateGameDtoCopyWithImpl(this._self, this._then);

  final _CreateGameDto _self;
  final $Res Function(_CreateGameDto) _then;

/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? package = freezed,Object? gameName = freezed,Object? ageRestriction = null,Object? private = null,Object? maxPlayers = null,}) {
  return _then(_CreateGameDto(
package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageListItem?,gameName: freezed == gameName ? _self.gameName : gameName // ignore: cast_nullable_to_non_nullable
as String?,ageRestriction: null == ageRestriction ? _self.ageRestriction : ageRestriction // ignore: cast_nullable_to_non_nullable
as AgeRestriction,private: null == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool,maxPlayers: null == maxPlayers ? _self.maxPlayers : maxPlayers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CreateGameDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageListItemCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageListItemCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}

// dart format on

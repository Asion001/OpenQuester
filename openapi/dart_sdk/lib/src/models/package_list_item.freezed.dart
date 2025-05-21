// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageListItem {

 int get id; String get title; String? get description; DateTime get createdAt; ShortUserInfo get author;/// Package age restriction
 AgeRestriction get ageRestriction; String? get language;/// Tags for the package. Can be null or an array of tag objects
 List<PackageTag>? get tags;/// Logo file for the package
 PackageLogoFileItem? get logo;
/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageListItemCopyWith<PackageListItem> get copyWith => _$PackageListItemCopyWithImpl<PackageListItem>(this as PackageListItem, _$identity);

  /// Serializes this PackageListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.author, author) || other.author == author)&&(identical(other.ageRestriction, ageRestriction) || other.ageRestriction == ageRestriction)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,createdAt,author,ageRestriction,language,const DeepCollectionEquality().hash(tags),logo);

@override
String toString() {
  return 'PackageListItem(id: $id, title: $title, description: $description, createdAt: $createdAt, author: $author, ageRestriction: $ageRestriction, language: $language, tags: $tags, logo: $logo)';
}


}

/// @nodoc
abstract mixin class $PackageListItemCopyWith<$Res>  {
  factory $PackageListItemCopyWith(PackageListItem value, $Res Function(PackageListItem) _then) = _$PackageListItemCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? description, DateTime createdAt, ShortUserInfo author, AgeRestriction ageRestriction, String? language, List<PackageTag>? tags, PackageLogoFileItem? logo
});


$ShortUserInfoCopyWith<$Res> get author;$PackageLogoFileItemCopyWith<$Res>? get logo;

}
/// @nodoc
class _$PackageListItemCopyWithImpl<$Res>
    implements $PackageListItemCopyWith<$Res> {
  _$PackageListItemCopyWithImpl(this._self, this._then);

  final PackageListItem _self;
  final $Res Function(PackageListItem) _then;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? createdAt = null,Object? author = null,Object? ageRestriction = null,Object? language = freezed,Object? tags = freezed,Object? logo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ShortUserInfo,ageRestriction: null == ageRestriction ? _self.ageRestriction : ageRestriction // ignore: cast_nullable_to_non_nullable
as AgeRestriction,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<PackageTag>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as PackageLogoFileItem?,
  ));
}
/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortUserInfoCopyWith<$Res> get author {
  
  return $ShortUserInfoCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageLogoFileItemCopyWith<$Res>? get logo {
    if (_self.logo == null) {
    return null;
  }

  return $PackageLogoFileItemCopyWith<$Res>(_self.logo!, (value) {
    return _then(_self.copyWith(logo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PackageListItem implements PackageListItem {
  const _PackageListItem({required this.id, required this.title, required this.description, required this.createdAt, required this.author, required this.ageRestriction, required this.language, required final  List<PackageTag>? tags, this.logo}): _tags = tags;
  factory _PackageListItem.fromJson(Map<String, dynamic> json) => _$PackageListItemFromJson(json);

@override final  int id;
@override final  String title;
@override final  String? description;
@override final  DateTime createdAt;
@override final  ShortUserInfo author;
/// Package age restriction
@override final  AgeRestriction ageRestriction;
@override final  String? language;
/// Tags for the package. Can be null or an array of tag objects
 final  List<PackageTag>? _tags;
/// Tags for the package. Can be null or an array of tag objects
@override List<PackageTag>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Logo file for the package
@override final  PackageLogoFileItem? logo;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageListItemCopyWith<_PackageListItem> get copyWith => __$PackageListItemCopyWithImpl<_PackageListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.author, author) || other.author == author)&&(identical(other.ageRestriction, ageRestriction) || other.ageRestriction == ageRestriction)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,createdAt,author,ageRestriction,language,const DeepCollectionEquality().hash(_tags),logo);

@override
String toString() {
  return 'PackageListItem(id: $id, title: $title, description: $description, createdAt: $createdAt, author: $author, ageRestriction: $ageRestriction, language: $language, tags: $tags, logo: $logo)';
}


}

/// @nodoc
abstract mixin class _$PackageListItemCopyWith<$Res> implements $PackageListItemCopyWith<$Res> {
  factory _$PackageListItemCopyWith(_PackageListItem value, $Res Function(_PackageListItem) _then) = __$PackageListItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? description, DateTime createdAt, ShortUserInfo author, AgeRestriction ageRestriction, String? language, List<PackageTag>? tags, PackageLogoFileItem? logo
});


@override $ShortUserInfoCopyWith<$Res> get author;@override $PackageLogoFileItemCopyWith<$Res>? get logo;

}
/// @nodoc
class __$PackageListItemCopyWithImpl<$Res>
    implements _$PackageListItemCopyWith<$Res> {
  __$PackageListItemCopyWithImpl(this._self, this._then);

  final _PackageListItem _self;
  final $Res Function(_PackageListItem) _then;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? createdAt = null,Object? author = null,Object? ageRestriction = null,Object? language = freezed,Object? tags = freezed,Object? logo = freezed,}) {
  return _then(_PackageListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ShortUserInfo,ageRestriction: null == ageRestriction ? _self.ageRestriction : ageRestriction // ignore: cast_nullable_to_non_nullable
as AgeRestriction,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<PackageTag>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as PackageLogoFileItem?,
  ));
}

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortUserInfoCopyWith<$Res> get author {
  
  return $ShortUserInfoCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageLogoFileItemCopyWith<$Res>? get logo {
    if (_self.logo == null) {
    return null;
  }

  return $PackageLogoFileItemCopyWith<$Res>(_self.logo!, (value) {
    return _then(_self.copyWith(logo: value));
  });
}
}

// dart format on

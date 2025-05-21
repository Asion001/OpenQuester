// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageTag {

 int get id;/// A single tag for the package
 String get tag;
/// Create a copy of PackageTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageTagCopyWith<PackageTag> get copyWith => _$PackageTagCopyWithImpl<PackageTag>(this as PackageTag, _$identity);

  /// Serializes this PackageTag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageTag&&(identical(other.id, id) || other.id == id)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tag);

@override
String toString() {
  return 'PackageTag(id: $id, tag: $tag)';
}


}

/// @nodoc
abstract mixin class $PackageTagCopyWith<$Res>  {
  factory $PackageTagCopyWith(PackageTag value, $Res Function(PackageTag) _then) = _$PackageTagCopyWithImpl;
@useResult
$Res call({
 int id, String tag
});




}
/// @nodoc
class _$PackageTagCopyWithImpl<$Res>
    implements $PackageTagCopyWith<$Res> {
  _$PackageTagCopyWithImpl(this._self, this._then);

  final PackageTag _self;
  final $Res Function(PackageTag) _then;

/// Create a copy of PackageTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tag = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PackageTag implements PackageTag {
  const _PackageTag({required this.id, required this.tag});
  factory _PackageTag.fromJson(Map<String, dynamic> json) => _$PackageTagFromJson(json);

@override final  int id;
/// A single tag for the package
@override final  String tag;

/// Create a copy of PackageTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageTagCopyWith<_PackageTag> get copyWith => __$PackageTagCopyWithImpl<_PackageTag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageTagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageTag&&(identical(other.id, id) || other.id == id)&&(identical(other.tag, tag) || other.tag == tag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tag);

@override
String toString() {
  return 'PackageTag(id: $id, tag: $tag)';
}


}

/// @nodoc
abstract mixin class _$PackageTagCopyWith<$Res> implements $PackageTagCopyWith<$Res> {
  factory _$PackageTagCopyWith(_PackageTag value, $Res Function(_PackageTag) _then) = __$PackageTagCopyWithImpl;
@override @useResult
$Res call({
 int id, String tag
});




}
/// @nodoc
class __$PackageTagCopyWithImpl<$Res>
    implements _$PackageTagCopyWith<$Res> {
  __$PackageTagCopyWithImpl(this._self, this._then);

  final _PackageTag _self;
  final $Res Function(_PackageTag) _then;

/// Create a copy of PackageTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tag = null,}) {
  return _then(_PackageTag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_upload_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageUploadCart {

 String get hash;
/// Create a copy of PackageUploadCart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageUploadCartCopyWith<PackageUploadCart> get copyWith => _$PackageUploadCartCopyWithImpl<PackageUploadCart>(this as PackageUploadCart, _$identity);

  /// Serializes this PackageUploadCart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageUploadCart&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash);

@override
String toString() {
  return 'PackageUploadCart(hash: $hash)';
}


}

/// @nodoc
abstract mixin class $PackageUploadCartCopyWith<$Res>  {
  factory $PackageUploadCartCopyWith(PackageUploadCart value, $Res Function(PackageUploadCart) _then) = _$PackageUploadCartCopyWithImpl;
@useResult
$Res call({
 String hash
});




}
/// @nodoc
class _$PackageUploadCartCopyWithImpl<$Res>
    implements $PackageUploadCartCopyWith<$Res> {
  _$PackageUploadCartCopyWithImpl(this._self, this._then);

  final PackageUploadCart _self;
  final $Res Function(PackageUploadCart) _then;

/// Create a copy of PackageUploadCart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hash = null,}) {
  return _then(_self.copyWith(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PackageUploadCart implements PackageUploadCart {
  const _PackageUploadCart({required this.hash});
  factory _PackageUploadCart.fromJson(Map<String, dynamic> json) => _$PackageUploadCartFromJson(json);

@override final  String hash;

/// Create a copy of PackageUploadCart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageUploadCartCopyWith<_PackageUploadCart> get copyWith => __$PackageUploadCartCopyWithImpl<_PackageUploadCart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageUploadCartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageUploadCart&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hash);

@override
String toString() {
  return 'PackageUploadCart(hash: $hash)';
}


}

/// @nodoc
abstract mixin class _$PackageUploadCartCopyWith<$Res> implements $PackageUploadCartCopyWith<$Res> {
  factory _$PackageUploadCartCopyWith(_PackageUploadCart value, $Res Function(_PackageUploadCart) _then) = __$PackageUploadCartCopyWithImpl;
@override @useResult
$Res call({
 String hash
});




}
/// @nodoc
class __$PackageUploadCartCopyWithImpl<$Res>
    implements _$PackageUploadCartCopyWith<$Res> {
  __$PackageUploadCartCopyWithImpl(this._self, this._then);

  final _PackageUploadCart _self;
  final $Res Function(_PackageUploadCart) _then;

/// Create a copy of PackageUploadCart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hash = null,}) {
  return _then(_PackageUploadCart(
hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

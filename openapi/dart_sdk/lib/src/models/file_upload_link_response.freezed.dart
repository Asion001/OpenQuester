// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileUploadLinkResponse {

 String get url;
/// Create a copy of FileUploadLinkResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileUploadLinkResponseCopyWith<FileUploadLinkResponse> get copyWith => _$FileUploadLinkResponseCopyWithImpl<FileUploadLinkResponse>(this as FileUploadLinkResponse, _$identity);

  /// Serializes this FileUploadLinkResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileUploadLinkResponse&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'FileUploadLinkResponse(url: $url)';
}


}

/// @nodoc
abstract mixin class $FileUploadLinkResponseCopyWith<$Res>  {
  factory $FileUploadLinkResponseCopyWith(FileUploadLinkResponse value, $Res Function(FileUploadLinkResponse) _then) = _$FileUploadLinkResponseCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$FileUploadLinkResponseCopyWithImpl<$Res>
    implements $FileUploadLinkResponseCopyWith<$Res> {
  _$FileUploadLinkResponseCopyWithImpl(this._self, this._then);

  final FileUploadLinkResponse _self;
  final $Res Function(FileUploadLinkResponse) _then;

/// Create a copy of FileUploadLinkResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FileUploadLinkResponse implements FileUploadLinkResponse {
  const _FileUploadLinkResponse({required this.url});
  factory _FileUploadLinkResponse.fromJson(Map<String, dynamic> json) => _$FileUploadLinkResponseFromJson(json);

@override final  String url;

/// Create a copy of FileUploadLinkResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadLinkResponseCopyWith<_FileUploadLinkResponse> get copyWith => __$FileUploadLinkResponseCopyWithImpl<_FileUploadLinkResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileUploadLinkResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploadLinkResponse&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'FileUploadLinkResponse(url: $url)';
}


}

/// @nodoc
abstract mixin class _$FileUploadLinkResponseCopyWith<$Res> implements $FileUploadLinkResponseCopyWith<$Res> {
  factory _$FileUploadLinkResponseCopyWith(_FileUploadLinkResponse value, $Res Function(_FileUploadLinkResponse) _then) = __$FileUploadLinkResponseCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$FileUploadLinkResponseCopyWithImpl<$Res>
    implements _$FileUploadLinkResponseCopyWith<$Res> {
  __$FileUploadLinkResponseCopyWithImpl(this._self, this._then);

  final _FileUploadLinkResponse _self;
  final $Res Function(_FileUploadLinkResponse) _then;

/// Create a copy of FileUploadLinkResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_FileUploadLinkResponse(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameQuestionData {

 String? get text; PackageQuestionFile? get file;
/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameQuestionDataCopyWith<GameQuestionData> get copyWith => _$GameQuestionDataCopyWithImpl<GameQuestionData>(this as GameQuestionData, _$identity);

  /// Serializes this GameQuestionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameQuestionData&&(identical(other.text, text) || other.text == text)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,file);

@override
String toString() {
  return 'GameQuestionData(text: $text, file: $file)';
}


}

/// @nodoc
abstract mixin class $GameQuestionDataCopyWith<$Res>  {
  factory $GameQuestionDataCopyWith(GameQuestionData value, $Res Function(GameQuestionData) _then) = _$GameQuestionDataCopyWithImpl;
@useResult
$Res call({
 String? text, PackageQuestionFile? file
});


$PackageQuestionFileCopyWith<$Res>? get file;

}
/// @nodoc
class _$GameQuestionDataCopyWithImpl<$Res>
    implements $GameQuestionDataCopyWith<$Res> {
  _$GameQuestionDataCopyWithImpl(this._self, this._then);

  final GameQuestionData _self;
  final $Res Function(GameQuestionData) _then;

/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? file = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as PackageQuestionFile?,
  ));
}
/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageQuestionFileCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $PackageQuestionFileCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _GameQuestionData implements GameQuestionData {
  const _GameQuestionData({this.text, this.file});
  factory _GameQuestionData.fromJson(Map<String, dynamic> json) => _$GameQuestionDataFromJson(json);

@override final  String? text;
@override final  PackageQuestionFile? file;

/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameQuestionDataCopyWith<_GameQuestionData> get copyWith => __$GameQuestionDataCopyWithImpl<_GameQuestionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameQuestionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameQuestionData&&(identical(other.text, text) || other.text == text)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,file);

@override
String toString() {
  return 'GameQuestionData(text: $text, file: $file)';
}


}

/// @nodoc
abstract mixin class _$GameQuestionDataCopyWith<$Res> implements $GameQuestionDataCopyWith<$Res> {
  factory _$GameQuestionDataCopyWith(_GameQuestionData value, $Res Function(_GameQuestionData) _then) = __$GameQuestionDataCopyWithImpl;
@override @useResult
$Res call({
 String? text, PackageQuestionFile? file
});


@override $PackageQuestionFileCopyWith<$Res>? get file;

}
/// @nodoc
class __$GameQuestionDataCopyWithImpl<$Res>
    implements _$GameQuestionDataCopyWith<$Res> {
  __$GameQuestionDataCopyWithImpl(this._self, this._then);

  final _GameQuestionData _self;
  final $Res Function(_GameQuestionData) _then;

/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? file = freezed,}) {
  return _then(_GameQuestionData(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as PackageQuestionFile?,
  ));
}

/// Create a copy of GameQuestionData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageQuestionFileCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $PackageQuestionFileCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

// dart format on

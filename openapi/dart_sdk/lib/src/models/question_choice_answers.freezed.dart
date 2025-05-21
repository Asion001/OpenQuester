// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_choice_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionChoiceAnswers {

 int? get id; PackageEntitiesOrder get order;/// Text of the answer option
 String? get text;/// File associated with the answer option
 FileItem? get file;
/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionChoiceAnswersCopyWith<QuestionChoiceAnswers> get copyWith => _$QuestionChoiceAnswersCopyWithImpl<QuestionChoiceAnswers>(this as QuestionChoiceAnswers, _$identity);

  /// Serializes this QuestionChoiceAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionChoiceAnswers&&(identical(other.id, id) || other.id == id)&&(identical(other.order, order) || other.order == order)&&(identical(other.text, text) || other.text == text)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,order,text,file);

@override
String toString() {
  return 'QuestionChoiceAnswers(id: $id, order: $order, text: $text, file: $file)';
}


}

/// @nodoc
abstract mixin class $QuestionChoiceAnswersCopyWith<$Res>  {
  factory $QuestionChoiceAnswersCopyWith(QuestionChoiceAnswers value, $Res Function(QuestionChoiceAnswers) _then) = _$QuestionChoiceAnswersCopyWithImpl;
@useResult
$Res call({
 int? id, PackageEntitiesOrder order, String? text, FileItem? file
});


$FileItemCopyWith<$Res>? get file;

}
/// @nodoc
class _$QuestionChoiceAnswersCopyWithImpl<$Res>
    implements $QuestionChoiceAnswersCopyWith<$Res> {
  _$QuestionChoiceAnswersCopyWithImpl(this._self, this._then);

  final QuestionChoiceAnswers _self;
  final $Res Function(QuestionChoiceAnswers) _then;

/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? order = null,Object? text = freezed,Object? file = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as FileItem?,
  ));
}
/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileItemCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $FileItemCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _QuestionChoiceAnswers implements QuestionChoiceAnswers {
  const _QuestionChoiceAnswers({required this.id, required this.order, required this.text, this.file});
  factory _QuestionChoiceAnswers.fromJson(Map<String, dynamic> json) => _$QuestionChoiceAnswersFromJson(json);

@override final  int? id;
@override final  PackageEntitiesOrder order;
/// Text of the answer option
@override final  String? text;
/// File associated with the answer option
@override final  FileItem? file;

/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionChoiceAnswersCopyWith<_QuestionChoiceAnswers> get copyWith => __$QuestionChoiceAnswersCopyWithImpl<_QuestionChoiceAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionChoiceAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionChoiceAnswers&&(identical(other.id, id) || other.id == id)&&(identical(other.order, order) || other.order == order)&&(identical(other.text, text) || other.text == text)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,order,text,file);

@override
String toString() {
  return 'QuestionChoiceAnswers(id: $id, order: $order, text: $text, file: $file)';
}


}

/// @nodoc
abstract mixin class _$QuestionChoiceAnswersCopyWith<$Res> implements $QuestionChoiceAnswersCopyWith<$Res> {
  factory _$QuestionChoiceAnswersCopyWith(_QuestionChoiceAnswers value, $Res Function(_QuestionChoiceAnswers) _then) = __$QuestionChoiceAnswersCopyWithImpl;
@override @useResult
$Res call({
 int? id, PackageEntitiesOrder order, String? text, FileItem? file
});


@override $FileItemCopyWith<$Res>? get file;

}
/// @nodoc
class __$QuestionChoiceAnswersCopyWithImpl<$Res>
    implements _$QuestionChoiceAnswersCopyWith<$Res> {
  __$QuestionChoiceAnswersCopyWithImpl(this._self, this._then);

  final _QuestionChoiceAnswers _self;
  final $Res Function(_QuestionChoiceAnswers) _then;

/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? order = null,Object? text = freezed,Object? file = freezed,}) {
  return _then(_QuestionChoiceAnswers(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as FileItem?,
  ));
}

/// Create a copy of QuestionChoiceAnswers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileItemCopyWith<$Res>? get file {
    if (_self.file == null) {
    return null;
  }

  return $FileItemCopyWith<$Res>(_self.file!, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

// dart format on

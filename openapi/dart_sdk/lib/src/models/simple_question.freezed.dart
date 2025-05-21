// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleQuestion {

 int? get id; PackageEntitiesOrder get order;/// Price is null only if price is hidden
 int? get price;/// Question text
 String? get text;/// Hint for the answer
 String? get answerHint;/// Comment or note about the question
 String? get questionComment; SimpleQuestionType get type; QuestionAnswerText? get answerText; List<PackageQuestionFile?>? get questionFiles; List<PackageQuestionFile?>? get answerFiles;/// Whether the question is hidden
 bool get isHidden;/// Delay in milliseconds before being able to answer, if applicable
 int get answerDelay;
/// Create a copy of SimpleQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleQuestionCopyWith<SimpleQuestion> get copyWith => _$SimpleQuestionCopyWithImpl<SimpleQuestion>(this as SimpleQuestion, _$identity);

  /// Serializes this SimpleQuestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.order, order) || other.order == order)&&(identical(other.price, price) || other.price == price)&&(identical(other.text, text) || other.text == text)&&(identical(other.answerHint, answerHint) || other.answerHint == answerHint)&&(identical(other.questionComment, questionComment) || other.questionComment == questionComment)&&(identical(other.type, type) || other.type == type)&&(identical(other.answerText, answerText) || other.answerText == answerText)&&const DeepCollectionEquality().equals(other.questionFiles, questionFiles)&&const DeepCollectionEquality().equals(other.answerFiles, answerFiles)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.answerDelay, answerDelay) || other.answerDelay == answerDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,order,price,text,answerHint,questionComment,type,answerText,const DeepCollectionEquality().hash(questionFiles),const DeepCollectionEquality().hash(answerFiles),isHidden,answerDelay);

@override
String toString() {
  return 'SimpleQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, questionComment: $questionComment, type: $type, answerText: $answerText, questionFiles: $questionFiles, answerFiles: $answerFiles, isHidden: $isHidden, answerDelay: $answerDelay)';
}


}

/// @nodoc
abstract mixin class $SimpleQuestionCopyWith<$Res>  {
  factory $SimpleQuestionCopyWith(SimpleQuestion value, $Res Function(SimpleQuestion) _then) = _$SimpleQuestionCopyWithImpl;
@useResult
$Res call({
 int? id, PackageEntitiesOrder order, int? price, String? text, String? answerHint, String? questionComment, SimpleQuestionType type, QuestionAnswerText? answerText, List<PackageQuestionFile?>? questionFiles, List<PackageQuestionFile?>? answerFiles, bool isHidden, int answerDelay
});




}
/// @nodoc
class _$SimpleQuestionCopyWithImpl<$Res>
    implements $SimpleQuestionCopyWith<$Res> {
  _$SimpleQuestionCopyWithImpl(this._self, this._then);

  final SimpleQuestion _self;
  final $Res Function(SimpleQuestion) _then;

/// Create a copy of SimpleQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? order = null,Object? price = freezed,Object? text = freezed,Object? answerHint = freezed,Object? questionComment = freezed,Object? type = null,Object? answerText = freezed,Object? questionFiles = freezed,Object? answerFiles = freezed,Object? isHidden = null,Object? answerDelay = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,answerHint: freezed == answerHint ? _self.answerHint : answerHint // ignore: cast_nullable_to_non_nullable
as String?,questionComment: freezed == questionComment ? _self.questionComment : questionComment // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SimpleQuestionType,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as QuestionAnswerText?,questionFiles: freezed == questionFiles ? _self.questionFiles : questionFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,answerFiles: freezed == answerFiles ? _self.answerFiles : answerFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,answerDelay: null == answerDelay ? _self.answerDelay : answerDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SimpleQuestion implements SimpleQuestion {
  const _SimpleQuestion({required this.id, required this.order, required this.price, required this.text, required this.answerHint, required this.questionComment, required this.type, this.answerText, final  List<PackageQuestionFile?>? questionFiles, final  List<PackageQuestionFile?>? answerFiles, this.isHidden = false, this.answerDelay = 4000}): _questionFiles = questionFiles,_answerFiles = answerFiles;
  factory _SimpleQuestion.fromJson(Map<String, dynamic> json) => _$SimpleQuestionFromJson(json);

@override final  int? id;
@override final  PackageEntitiesOrder order;
/// Price is null only if price is hidden
@override final  int? price;
/// Question text
@override final  String? text;
/// Hint for the answer
@override final  String? answerHint;
/// Comment or note about the question
@override final  String? questionComment;
@override final  SimpleQuestionType type;
@override final  QuestionAnswerText? answerText;
 final  List<PackageQuestionFile?>? _questionFiles;
@override List<PackageQuestionFile?>? get questionFiles {
  final value = _questionFiles;
  if (value == null) return null;
  if (_questionFiles is EqualUnmodifiableListView) return _questionFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PackageQuestionFile?>? _answerFiles;
@override List<PackageQuestionFile?>? get answerFiles {
  final value = _answerFiles;
  if (value == null) return null;
  if (_answerFiles is EqualUnmodifiableListView) return _answerFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Whether the question is hidden
@override@JsonKey() final  bool isHidden;
/// Delay in milliseconds before being able to answer, if applicable
@override@JsonKey() final  int answerDelay;

/// Create a copy of SimpleQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleQuestionCopyWith<_SimpleQuestion> get copyWith => __$SimpleQuestionCopyWithImpl<_SimpleQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.order, order) || other.order == order)&&(identical(other.price, price) || other.price == price)&&(identical(other.text, text) || other.text == text)&&(identical(other.answerHint, answerHint) || other.answerHint == answerHint)&&(identical(other.questionComment, questionComment) || other.questionComment == questionComment)&&(identical(other.type, type) || other.type == type)&&(identical(other.answerText, answerText) || other.answerText == answerText)&&const DeepCollectionEquality().equals(other._questionFiles, _questionFiles)&&const DeepCollectionEquality().equals(other._answerFiles, _answerFiles)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.answerDelay, answerDelay) || other.answerDelay == answerDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,order,price,text,answerHint,questionComment,type,answerText,const DeepCollectionEquality().hash(_questionFiles),const DeepCollectionEquality().hash(_answerFiles),isHidden,answerDelay);

@override
String toString() {
  return 'SimpleQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, questionComment: $questionComment, type: $type, answerText: $answerText, questionFiles: $questionFiles, answerFiles: $answerFiles, isHidden: $isHidden, answerDelay: $answerDelay)';
}


}

/// @nodoc
abstract mixin class _$SimpleQuestionCopyWith<$Res> implements $SimpleQuestionCopyWith<$Res> {
  factory _$SimpleQuestionCopyWith(_SimpleQuestion value, $Res Function(_SimpleQuestion) _then) = __$SimpleQuestionCopyWithImpl;
@override @useResult
$Res call({
 int? id, PackageEntitiesOrder order, int? price, String? text, String? answerHint, String? questionComment, SimpleQuestionType type, QuestionAnswerText? answerText, List<PackageQuestionFile?>? questionFiles, List<PackageQuestionFile?>? answerFiles, bool isHidden, int answerDelay
});




}
/// @nodoc
class __$SimpleQuestionCopyWithImpl<$Res>
    implements _$SimpleQuestionCopyWith<$Res> {
  __$SimpleQuestionCopyWithImpl(this._self, this._then);

  final _SimpleQuestion _self;
  final $Res Function(_SimpleQuestion) _then;

/// Create a copy of SimpleQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? order = null,Object? price = freezed,Object? text = freezed,Object? answerHint = freezed,Object? questionComment = freezed,Object? type = null,Object? answerText = freezed,Object? questionFiles = freezed,Object? answerFiles = freezed,Object? isHidden = null,Object? answerDelay = null,}) {
  return _then(_SimpleQuestion(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,answerHint: freezed == answerHint ? _self.answerHint : answerHint // ignore: cast_nullable_to_non_nullable
as String?,questionComment: freezed == questionComment ? _self.questionComment : questionComment // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SimpleQuestionType,answerText: freezed == answerText ? _self.answerText : answerText // ignore: cast_nullable_to_non_nullable
as QuestionAnswerText?,questionFiles: freezed == questionFiles ? _self._questionFiles : questionFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,answerFiles: freezed == answerFiles ? _self._answerFiles : answerFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,answerDelay: null == answerDelay ? _self.answerDelay : answerDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

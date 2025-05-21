// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_package_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimplePackageQuestionData {

 int? get id; QuestionType get type; PackageEntitiesOrder get order;/// Price is null only if price is hidden
 int? get price;/// Question text
 String? get text;/// Comment or note about the question
 String? get questionComment; QuestionSubType get subType; List<PackageQuestionFile?>? get questionFiles; QuestionMaxPrice? get maxPrice; QuestionAllowedPrices? get allowedPrices; QuestionTransferType? get transferType; QuestionPriceMultiplier? get priceMultiplier; QuestionShowDelay? get showDelay; List<QuestionChoiceAnswers?>? get answers;/// Whether the question is hidden
 bool get isHidden;/// Delay in milliseconds before being able to answer, if applicable
 int get answerDelay;
/// Create a copy of SimplePackageQuestionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimplePackageQuestionDataCopyWith<SimplePackageQuestionData> get copyWith => _$SimplePackageQuestionDataCopyWithImpl<SimplePackageQuestionData>(this as SimplePackageQuestionData, _$identity);

  /// Serializes this SimplePackageQuestionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimplePackageQuestionData&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.order, order) || other.order == order)&&(identical(other.price, price) || other.price == price)&&(identical(other.text, text) || other.text == text)&&(identical(other.questionComment, questionComment) || other.questionComment == questionComment)&&(identical(other.subType, subType) || other.subType == subType)&&const DeepCollectionEquality().equals(other.questionFiles, questionFiles)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other.allowedPrices, allowedPrices)&&(identical(other.transferType, transferType) || other.transferType == transferType)&&(identical(other.priceMultiplier, priceMultiplier) || other.priceMultiplier == priceMultiplier)&&(identical(other.showDelay, showDelay) || other.showDelay == showDelay)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.answerDelay, answerDelay) || other.answerDelay == answerDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,order,price,text,questionComment,subType,const DeepCollectionEquality().hash(questionFiles),maxPrice,const DeepCollectionEquality().hash(allowedPrices),transferType,priceMultiplier,showDelay,const DeepCollectionEquality().hash(answers),isHidden,answerDelay);

@override
String toString() {
  return 'SimplePackageQuestionData(id: $id, type: $type, order: $order, price: $price, text: $text, questionComment: $questionComment, subType: $subType, questionFiles: $questionFiles, maxPrice: $maxPrice, allowedPrices: $allowedPrices, transferType: $transferType, priceMultiplier: $priceMultiplier, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
}


}

/// @nodoc
abstract mixin class $SimplePackageQuestionDataCopyWith<$Res>  {
  factory $SimplePackageQuestionDataCopyWith(SimplePackageQuestionData value, $Res Function(SimplePackageQuestionData) _then) = _$SimplePackageQuestionDataCopyWithImpl;
@useResult
$Res call({
 int? id, QuestionType type, PackageEntitiesOrder order, int? price, String? text, String? questionComment, QuestionSubType subType, List<PackageQuestionFile?>? questionFiles, QuestionMaxPrice? maxPrice, QuestionAllowedPrices? allowedPrices, QuestionTransferType? transferType, QuestionPriceMultiplier? priceMultiplier, QuestionShowDelay? showDelay, List<QuestionChoiceAnswers?>? answers, bool isHidden, int answerDelay
});




}
/// @nodoc
class _$SimplePackageQuestionDataCopyWithImpl<$Res>
    implements $SimplePackageQuestionDataCopyWith<$Res> {
  _$SimplePackageQuestionDataCopyWithImpl(this._self, this._then);

  final SimplePackageQuestionData _self;
  final $Res Function(SimplePackageQuestionData) _then;

/// Create a copy of SimplePackageQuestionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = null,Object? order = null,Object? price = freezed,Object? text = freezed,Object? questionComment = freezed,Object? subType = null,Object? questionFiles = freezed,Object? maxPrice = freezed,Object? allowedPrices = freezed,Object? transferType = freezed,Object? priceMultiplier = freezed,Object? showDelay = freezed,Object? answers = freezed,Object? isHidden = null,Object? answerDelay = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionType,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,questionComment: freezed == questionComment ? _self.questionComment : questionComment // ignore: cast_nullable_to_non_nullable
as String?,subType: null == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as QuestionSubType,questionFiles: freezed == questionFiles ? _self.questionFiles : questionFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as QuestionMaxPrice?,allowedPrices: freezed == allowedPrices ? _self.allowedPrices : allowedPrices // ignore: cast_nullable_to_non_nullable
as QuestionAllowedPrices?,transferType: freezed == transferType ? _self.transferType : transferType // ignore: cast_nullable_to_non_nullable
as QuestionTransferType?,priceMultiplier: freezed == priceMultiplier ? _self.priceMultiplier : priceMultiplier // ignore: cast_nullable_to_non_nullable
as QuestionPriceMultiplier?,showDelay: freezed == showDelay ? _self.showDelay : showDelay // ignore: cast_nullable_to_non_nullable
as QuestionShowDelay?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionChoiceAnswers?>?,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,answerDelay: null == answerDelay ? _self.answerDelay : answerDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SimplePackageQuestionData implements SimplePackageQuestionData {
  const _SimplePackageQuestionData({required this.id, required this.type, required this.order, required this.price, required this.text, required this.questionComment, required this.subType, final  List<PackageQuestionFile?>? questionFiles, this.maxPrice, final  QuestionAllowedPrices? allowedPrices, this.transferType, this.priceMultiplier, this.showDelay, final  List<QuestionChoiceAnswers?>? answers, this.isHidden = false, this.answerDelay = 4000}): _questionFiles = questionFiles,_allowedPrices = allowedPrices,_answers = answers;
  factory _SimplePackageQuestionData.fromJson(Map<String, dynamic> json) => _$SimplePackageQuestionDataFromJson(json);

@override final  int? id;
@override final  QuestionType type;
@override final  PackageEntitiesOrder order;
/// Price is null only if price is hidden
@override final  int? price;
/// Question text
@override final  String? text;
/// Comment or note about the question
@override final  String? questionComment;
@override final  QuestionSubType subType;
 final  List<PackageQuestionFile?>? _questionFiles;
@override List<PackageQuestionFile?>? get questionFiles {
  final value = _questionFiles;
  if (value == null) return null;
  if (_questionFiles is EqualUnmodifiableListView) return _questionFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  QuestionMaxPrice? maxPrice;
 final  QuestionAllowedPrices? _allowedPrices;
@override QuestionAllowedPrices? get allowedPrices {
  final value = _allowedPrices;
  if (value == null) return null;
  if (_allowedPrices is EqualUnmodifiableListView) return _allowedPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  QuestionTransferType? transferType;
@override final  QuestionPriceMultiplier? priceMultiplier;
@override final  QuestionShowDelay? showDelay;
 final  List<QuestionChoiceAnswers?>? _answers;
@override List<QuestionChoiceAnswers?>? get answers {
  final value = _answers;
  if (value == null) return null;
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Whether the question is hidden
@override@JsonKey() final  bool isHidden;
/// Delay in milliseconds before being able to answer, if applicable
@override@JsonKey() final  int answerDelay;

/// Create a copy of SimplePackageQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimplePackageQuestionDataCopyWith<_SimplePackageQuestionData> get copyWith => __$SimplePackageQuestionDataCopyWithImpl<_SimplePackageQuestionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimplePackageQuestionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimplePackageQuestionData&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.order, order) || other.order == order)&&(identical(other.price, price) || other.price == price)&&(identical(other.text, text) || other.text == text)&&(identical(other.questionComment, questionComment) || other.questionComment == questionComment)&&(identical(other.subType, subType) || other.subType == subType)&&const DeepCollectionEquality().equals(other._questionFiles, _questionFiles)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other._allowedPrices, _allowedPrices)&&(identical(other.transferType, transferType) || other.transferType == transferType)&&(identical(other.priceMultiplier, priceMultiplier) || other.priceMultiplier == priceMultiplier)&&(identical(other.showDelay, showDelay) || other.showDelay == showDelay)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.answerDelay, answerDelay) || other.answerDelay == answerDelay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,order,price,text,questionComment,subType,const DeepCollectionEquality().hash(_questionFiles),maxPrice,const DeepCollectionEquality().hash(_allowedPrices),transferType,priceMultiplier,showDelay,const DeepCollectionEquality().hash(_answers),isHidden,answerDelay);

@override
String toString() {
  return 'SimplePackageQuestionData(id: $id, type: $type, order: $order, price: $price, text: $text, questionComment: $questionComment, subType: $subType, questionFiles: $questionFiles, maxPrice: $maxPrice, allowedPrices: $allowedPrices, transferType: $transferType, priceMultiplier: $priceMultiplier, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
}


}

/// @nodoc
abstract mixin class _$SimplePackageQuestionDataCopyWith<$Res> implements $SimplePackageQuestionDataCopyWith<$Res> {
  factory _$SimplePackageQuestionDataCopyWith(_SimplePackageQuestionData value, $Res Function(_SimplePackageQuestionData) _then) = __$SimplePackageQuestionDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, QuestionType type, PackageEntitiesOrder order, int? price, String? text, String? questionComment, QuestionSubType subType, List<PackageQuestionFile?>? questionFiles, QuestionMaxPrice? maxPrice, QuestionAllowedPrices? allowedPrices, QuestionTransferType? transferType, QuestionPriceMultiplier? priceMultiplier, QuestionShowDelay? showDelay, List<QuestionChoiceAnswers?>? answers, bool isHidden, int answerDelay
});




}
/// @nodoc
class __$SimplePackageQuestionDataCopyWithImpl<$Res>
    implements _$SimplePackageQuestionDataCopyWith<$Res> {
  __$SimplePackageQuestionDataCopyWithImpl(this._self, this._then);

  final _SimplePackageQuestionData _self;
  final $Res Function(_SimplePackageQuestionData) _then;

/// Create a copy of SimplePackageQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = null,Object? order = null,Object? price = freezed,Object? text = freezed,Object? questionComment = freezed,Object? subType = null,Object? questionFiles = freezed,Object? maxPrice = freezed,Object? allowedPrices = freezed,Object? transferType = freezed,Object? priceMultiplier = freezed,Object? showDelay = freezed,Object? answers = freezed,Object? isHidden = null,Object? answerDelay = null,}) {
  return _then(_SimplePackageQuestionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionType,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as PackageEntitiesOrder,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,questionComment: freezed == questionComment ? _self.questionComment : questionComment // ignore: cast_nullable_to_non_nullable
as String?,subType: null == subType ? _self.subType : subType // ignore: cast_nullable_to_non_nullable
as QuestionSubType,questionFiles: freezed == questionFiles ? _self._questionFiles : questionFiles // ignore: cast_nullable_to_non_nullable
as List<PackageQuestionFile?>?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as QuestionMaxPrice?,allowedPrices: freezed == allowedPrices ? _self._allowedPrices : allowedPrices // ignore: cast_nullable_to_non_nullable
as QuestionAllowedPrices?,transferType: freezed == transferType ? _self.transferType : transferType // ignore: cast_nullable_to_non_nullable
as QuestionTransferType?,priceMultiplier: freezed == priceMultiplier ? _self.priceMultiplier : priceMultiplier // ignore: cast_nullable_to_non_nullable
as QuestionPriceMultiplier?,showDelay: freezed == showDelay ? _self.showDelay : showDelay // ignore: cast_nullable_to_non_nullable
as QuestionShowDelay?,answers: freezed == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionChoiceAnswers?>?,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,answerDelay: null == answerDelay ? _self.answerDelay : answerDelay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

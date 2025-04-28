// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'no_risk_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoRiskQuestion {
  int? get id;
  PackageEntitiesOrder get order;

  /// Point value of the question
  int get price;

  /// Question text
  String? get text;

  /// Hint for the answer
  String? get answerHint;

  /// Correct answer text
  String? get answerText;

  /// Comment or note about the question
  String? get questionComment;

  /// Media files for the question
  List<PackageQuestionFile>? get questionFiles;

  /// Media files for the answer
  List<PackageAnswerFile>? get answerFiles;
  NoRiskQuestionType get type;

  /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
  NoRiskQuestionSubType get subType;

  /// Whether the question is hidden
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay;

  /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
  String get priceMultiplier;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoRiskQuestionCopyWith<NoRiskQuestion> get copyWith =>
      _$NoRiskQuestionCopyWithImpl<NoRiskQuestion>(
          this as NoRiskQuestion, _$identity);

  /// Serializes this NoRiskQuestion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoRiskQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.answerHint, answerHint) ||
                other.answerHint == answerHint) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment) &&
            const DeepCollectionEquality()
                .equals(other.questionFiles, questionFiles) &&
            const DeepCollectionEquality()
                .equals(other.answerFiles, answerFiles) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay) &&
            (identical(other.priceMultiplier, priceMultiplier) ||
                other.priceMultiplier == priceMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      order,
      price,
      text,
      answerHint,
      answerText,
      questionComment,
      const DeepCollectionEquality().hash(questionFiles),
      const DeepCollectionEquality().hash(answerFiles),
      type,
      subType,
      isHidden,
      answerDelay,
      priceMultiplier);

  @override
  String toString() {
    return 'NoRiskQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, isHidden: $isHidden, answerDelay: $answerDelay, priceMultiplier: $priceMultiplier)';
  }
}

/// @nodoc
abstract mixin class $NoRiskQuestionCopyWith<$Res> {
  factory $NoRiskQuestionCopyWith(
          NoRiskQuestion value, $Res Function(NoRiskQuestion) _then) =
      _$NoRiskQuestionCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      int price,
      String? text,
      String? answerHint,
      String? answerText,
      String? questionComment,
      List<PackageQuestionFile>? questionFiles,
      List<PackageAnswerFile>? answerFiles,
      NoRiskQuestionType type,
      NoRiskQuestionSubType subType,
      bool isHidden,
      int answerDelay,
      String priceMultiplier});
}

/// @nodoc
class _$NoRiskQuestionCopyWithImpl<$Res>
    implements $NoRiskQuestionCopyWith<$Res> {
  _$NoRiskQuestionCopyWithImpl(this._self, this._then);

  final NoRiskQuestion _self;
  final $Res Function(NoRiskQuestion) _then;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? price = null,
    Object? text = freezed,
    Object? answerHint = freezed,
    Object? answerText = freezed,
    Object? questionComment = freezed,
    Object? questionFiles = freezed,
    Object? answerFiles = freezed,
    Object? type = null,
    Object? subType = null,
    Object? isHidden = null,
    Object? answerDelay = null,
    Object? priceMultiplier = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _self.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _self.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFiles: freezed == questionFiles
          ? _self.questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile>?,
      answerFiles: freezed == answerFiles
          ? _self.answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionType,
      subType: null == subType
          ? _self.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionSubType,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _self.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _self.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NoRiskQuestion implements NoRiskQuestion {
  const _NoRiskQuestion(
      {required this.id,
      required this.order,
      required this.price,
      required this.text,
      required this.answerHint,
      required this.answerText,
      required this.questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required this.type,
      required this.subType,
      this.isHidden = false,
      this.answerDelay = 4000,
      this.priceMultiplier = '1.5'})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;
  factory _NoRiskQuestion.fromJson(Map<String, dynamic> json) =>
      _$NoRiskQuestionFromJson(json);

  @override
  final int? id;
  @override
  final PackageEntitiesOrder order;

  /// Point value of the question
  @override
  final int price;

  /// Question text
  @override
  final String? text;

  /// Hint for the answer
  @override
  final String? answerHint;

  /// Correct answer text
  @override
  final String? answerText;

  /// Comment or note about the question
  @override
  final String? questionComment;

  /// Media files for the question
  final List<PackageQuestionFile>? _questionFiles;

  /// Media files for the question
  @override
  List<PackageQuestionFile>? get questionFiles {
    final value = _questionFiles;
    if (value == null) return null;
    if (_questionFiles is EqualUnmodifiableListView) return _questionFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Media files for the answer
  final List<PackageAnswerFile>? _answerFiles;

  /// Media files for the answer
  @override
  List<PackageAnswerFile>? get answerFiles {
    final value = _answerFiles;
    if (value == null) return null;
    if (_answerFiles is EqualUnmodifiableListView) return _answerFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final NoRiskQuestionType type;

  /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
  @override
  final NoRiskQuestionSubType subType;

  /// Whether the question is hidden
  @override
  @JsonKey()
  final bool isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  @JsonKey()
  final int answerDelay;

  /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
  @override
  @JsonKey()
  final String priceMultiplier;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoRiskQuestionCopyWith<_NoRiskQuestion> get copyWith =>
      __$NoRiskQuestionCopyWithImpl<_NoRiskQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoRiskQuestionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoRiskQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.answerHint, answerHint) ||
                other.answerHint == answerHint) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment) &&
            const DeepCollectionEquality()
                .equals(other._questionFiles, _questionFiles) &&
            const DeepCollectionEquality()
                .equals(other._answerFiles, _answerFiles) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay) &&
            (identical(other.priceMultiplier, priceMultiplier) ||
                other.priceMultiplier == priceMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      order,
      price,
      text,
      answerHint,
      answerText,
      questionComment,
      const DeepCollectionEquality().hash(_questionFiles),
      const DeepCollectionEquality().hash(_answerFiles),
      type,
      subType,
      isHidden,
      answerDelay,
      priceMultiplier);

  @override
  String toString() {
    return 'NoRiskQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, isHidden: $isHidden, answerDelay: $answerDelay, priceMultiplier: $priceMultiplier)';
  }
}

/// @nodoc
abstract mixin class _$NoRiskQuestionCopyWith<$Res>
    implements $NoRiskQuestionCopyWith<$Res> {
  factory _$NoRiskQuestionCopyWith(
          _NoRiskQuestion value, $Res Function(_NoRiskQuestion) _then) =
      __$NoRiskQuestionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      int price,
      String? text,
      String? answerHint,
      String? answerText,
      String? questionComment,
      List<PackageQuestionFile>? questionFiles,
      List<PackageAnswerFile>? answerFiles,
      NoRiskQuestionType type,
      NoRiskQuestionSubType subType,
      bool isHidden,
      int answerDelay,
      String priceMultiplier});
}

/// @nodoc
class __$NoRiskQuestionCopyWithImpl<$Res>
    implements _$NoRiskQuestionCopyWith<$Res> {
  __$NoRiskQuestionCopyWithImpl(this._self, this._then);

  final _NoRiskQuestion _self;
  final $Res Function(_NoRiskQuestion) _then;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? price = null,
    Object? text = freezed,
    Object? answerHint = freezed,
    Object? answerText = freezed,
    Object? questionComment = freezed,
    Object? questionFiles = freezed,
    Object? answerFiles = freezed,
    Object? type = null,
    Object? subType = null,
    Object? isHidden = null,
    Object? answerDelay = null,
    Object? priceMultiplier = null,
  }) {
    return _then(_NoRiskQuestion(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _self.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _self.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFiles: freezed == questionFiles
          ? _self._questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile>?,
      answerFiles: freezed == answerFiles
          ? _self._answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionType,
      subType: null == subType
          ? _self.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionSubType,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _self.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _self.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

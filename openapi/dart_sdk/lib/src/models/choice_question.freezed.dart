// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChoiceQuestion {
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
  ChoiceQuestionType get type;
  dynamic get subType;

  /// Delay before showing options in milliseconds
  int get showDelay;

  /// Multiple choice options; minimum 2, maximum 8 answers
  List<Answers> get answers;

  /// Whether the question is hidden
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay;

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceQuestionCopyWith<ChoiceQuestion> get copyWith =>
      _$ChoiceQuestionCopyWithImpl<ChoiceQuestion>(
          this as ChoiceQuestion, _$identity);

  /// Serializes this ChoiceQuestion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceQuestion &&
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
            const DeepCollectionEquality().equals(other.subType, subType) &&
            (identical(other.showDelay, showDelay) ||
                other.showDelay == showDelay) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay));
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
      const DeepCollectionEquality().hash(subType),
      showDelay,
      const DeepCollectionEquality().hash(answers),
      isHidden,
      answerDelay);

  @override
  String toString() {
    return 'ChoiceQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
  }
}

/// @nodoc
abstract mixin class $ChoiceQuestionCopyWith<$Res> {
  factory $ChoiceQuestionCopyWith(
          ChoiceQuestion value, $Res Function(ChoiceQuestion) _then) =
      _$ChoiceQuestionCopyWithImpl;
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
      ChoiceQuestionType type,
      dynamic subType,
      int showDelay,
      List<Answers> answers,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class _$ChoiceQuestionCopyWithImpl<$Res>
    implements $ChoiceQuestionCopyWith<$Res> {
  _$ChoiceQuestionCopyWithImpl(this._self, this._then);

  final ChoiceQuestion _self;
  final $Res Function(ChoiceQuestion) _then;

  /// Create a copy of ChoiceQuestion
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
    Object? subType = freezed,
    Object? showDelay = null,
    Object? answers = null,
    Object? isHidden = null,
    Object? answerDelay = null,
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
              as ChoiceQuestionType,
      subType: freezed == subType
          ? _self.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showDelay: null == showDelay
          ? _self.showDelay
          : showDelay // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _self.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChoiceQuestion implements ChoiceQuestion {
  const _ChoiceQuestion(
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
      required this.showDelay,
      required final List<Answers> answers,
      this.isHidden = false,
      this.answerDelay = 4000})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles,
        _answers = answers;
  factory _ChoiceQuestion.fromJson(Map<String, dynamic> json) =>
      _$ChoiceQuestionFromJson(json);

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
  final ChoiceQuestionType type;
  @override
  final dynamic subType;

  /// Delay before showing options in milliseconds
  @override
  final int showDelay;

  /// Multiple choice options; minimum 2, maximum 8 answers
  final List<Answers> _answers;

  /// Multiple choice options; minimum 2, maximum 8 answers
  @override
  List<Answers> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  /// Whether the question is hidden
  @override
  @JsonKey()
  final bool isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  @JsonKey()
  final int answerDelay;

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoiceQuestionCopyWith<_ChoiceQuestion> get copyWith =>
      __$ChoiceQuestionCopyWithImpl<_ChoiceQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoiceQuestionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceQuestion &&
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
            const DeepCollectionEquality().equals(other.subType, subType) &&
            (identical(other.showDelay, showDelay) ||
                other.showDelay == showDelay) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay));
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
      const DeepCollectionEquality().hash(subType),
      showDelay,
      const DeepCollectionEquality().hash(_answers),
      isHidden,
      answerDelay);

  @override
  String toString() {
    return 'ChoiceQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
  }
}

/// @nodoc
abstract mixin class _$ChoiceQuestionCopyWith<$Res>
    implements $ChoiceQuestionCopyWith<$Res> {
  factory _$ChoiceQuestionCopyWith(
          _ChoiceQuestion value, $Res Function(_ChoiceQuestion) _then) =
      __$ChoiceQuestionCopyWithImpl;
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
      ChoiceQuestionType type,
      dynamic subType,
      int showDelay,
      List<Answers> answers,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$ChoiceQuestionCopyWithImpl<$Res>
    implements _$ChoiceQuestionCopyWith<$Res> {
  __$ChoiceQuestionCopyWithImpl(this._self, this._then);

  final _ChoiceQuestion _self;
  final $Res Function(_ChoiceQuestion) _then;

  /// Create a copy of ChoiceQuestion
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
    Object? subType = freezed,
    Object? showDelay = null,
    Object? answers = null,
    Object? isHidden = null,
    Object? answerDelay = null,
  }) {
    return _then(_ChoiceQuestion(
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
              as ChoiceQuestionType,
      subType: freezed == subType
          ? _self.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showDelay: null == showDelay
          ? _self.showDelay
          : showDelay // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _self.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

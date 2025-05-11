// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageQuestion {
  int? get id;
  PackageEntitiesOrder get order;

  /// Price is null only if price is hidden
  int? get price;

  /// Question text
  String? get text;

  /// Hint for the answer
  String? get answerHint;

  /// Comment or note about the question
  String? get questionComment;
  QuestionAnswerText? get answerText;
  List<PackageQuestionFile?>? get questionFiles;
  List<PackageAnswerFile?>? get answerFiles;

  /// Whether the question is hidden
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay;

  /// Create a copy of PackageQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageQuestionCopyWith<PackageQuestion> get copyWith =>
      _$PackageQuestionCopyWithImpl<PackageQuestion>(
          this as PackageQuestion, _$identity);

  /// Serializes this PackageQuestion to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.answerHint, answerHint) ||
                other.answerHint == answerHint) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            const DeepCollectionEquality()
                .equals(other.questionFiles, questionFiles) &&
            const DeepCollectionEquality()
                .equals(other.answerFiles, answerFiles) &&
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
      questionComment,
      answerText,
      const DeepCollectionEquality().hash(questionFiles),
      const DeepCollectionEquality().hash(answerFiles),
      isHidden,
      answerDelay);

  @override
  String toString() {
    return 'PackageQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, questionComment: $questionComment, answerText: $answerText, questionFiles: $questionFiles, answerFiles: $answerFiles, isHidden: $isHidden, answerDelay: $answerDelay)';
  }
}

/// @nodoc
abstract mixin class $PackageQuestionCopyWith<$Res> {
  factory $PackageQuestionCopyWith(
          PackageQuestion value, $Res Function(PackageQuestion) _then) =
      _$PackageQuestionCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      int? price,
      String? text,
      String? answerHint,
      String? questionComment,
      QuestionAnswerText? answerText,
      List<PackageQuestionFile?>? questionFiles,
      List<PackageAnswerFile?>? answerFiles,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class _$PackageQuestionCopyWithImpl<$Res>
    implements $PackageQuestionCopyWith<$Res> {
  _$PackageQuestionCopyWithImpl(this._self, this._then);

  final PackageQuestion _self;
  final $Res Function(PackageQuestion) _then;

  /// Create a copy of PackageQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? price = freezed,
    Object? text = freezed,
    Object? answerHint = freezed,
    Object? questionComment = freezed,
    Object? answerText = freezed,
    Object? questionFiles = freezed,
    Object? answerFiles = freezed,
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
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _self.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _self.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerText?,
      questionFiles: freezed == questionFiles
          ? _self.questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile?>?,
      answerFiles: freezed == answerFiles
          ? _self.answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile?>?,
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
class _PackageQuestion implements PackageQuestion {
  const _PackageQuestion(
      {required this.id,
      required this.order,
      required this.price,
      required this.text,
      required this.answerHint,
      required this.questionComment,
      this.answerText,
      final List<PackageQuestionFile?>? questionFiles,
      final List<PackageAnswerFile?>? answerFiles,
      this.isHidden = false,
      this.answerDelay = 4000})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;
  factory _PackageQuestion.fromJson(Map<String, dynamic> json) =>
      _$PackageQuestionFromJson(json);

  @override
  final int? id;
  @override
  final PackageEntitiesOrder order;

  /// Price is null only if price is hidden
  @override
  final int? price;

  /// Question text
  @override
  final String? text;

  /// Hint for the answer
  @override
  final String? answerHint;

  /// Comment or note about the question
  @override
  final String? questionComment;
  @override
  final QuestionAnswerText? answerText;
  final List<PackageQuestionFile?>? _questionFiles;
  @override
  List<PackageQuestionFile?>? get questionFiles {
    final value = _questionFiles;
    if (value == null) return null;
    if (_questionFiles is EqualUnmodifiableListView) return _questionFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PackageAnswerFile?>? _answerFiles;
  @override
  List<PackageAnswerFile?>? get answerFiles {
    final value = _answerFiles;
    if (value == null) return null;
    if (_answerFiles is EqualUnmodifiableListView) return _answerFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether the question is hidden
  @override
  @JsonKey()
  final bool isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  @JsonKey()
  final int answerDelay;

  /// Create a copy of PackageQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageQuestionCopyWith<_PackageQuestion> get copyWith =>
      __$PackageQuestionCopyWithImpl<_PackageQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageQuestionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.answerHint, answerHint) ||
                other.answerHint == answerHint) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            const DeepCollectionEquality()
                .equals(other._questionFiles, _questionFiles) &&
            const DeepCollectionEquality()
                .equals(other._answerFiles, _answerFiles) &&
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
      questionComment,
      answerText,
      const DeepCollectionEquality().hash(_questionFiles),
      const DeepCollectionEquality().hash(_answerFiles),
      isHidden,
      answerDelay);

  @override
  String toString() {
    return 'PackageQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, questionComment: $questionComment, answerText: $answerText, questionFiles: $questionFiles, answerFiles: $answerFiles, isHidden: $isHidden, answerDelay: $answerDelay)';
  }
}

/// @nodoc
abstract mixin class _$PackageQuestionCopyWith<$Res>
    implements $PackageQuestionCopyWith<$Res> {
  factory _$PackageQuestionCopyWith(
          _PackageQuestion value, $Res Function(_PackageQuestion) _then) =
      __$PackageQuestionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      PackageEntitiesOrder order,
      int? price,
      String? text,
      String? answerHint,
      String? questionComment,
      QuestionAnswerText? answerText,
      List<PackageQuestionFile?>? questionFiles,
      List<PackageAnswerFile?>? answerFiles,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$PackageQuestionCopyWithImpl<$Res>
    implements _$PackageQuestionCopyWith<$Res> {
  __$PackageQuestionCopyWithImpl(this._self, this._then);

  final _PackageQuestion _self;
  final $Res Function(_PackageQuestion) _then;

  /// Create a copy of PackageQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? order = null,
    Object? price = freezed,
    Object? text = freezed,
    Object? answerHint = freezed,
    Object? questionComment = freezed,
    Object? answerText = freezed,
    Object? questionFiles = freezed,
    Object? answerFiles = freezed,
    Object? isHidden = null,
    Object? answerDelay = null,
  }) {
    return _then(_PackageQuestion(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _self.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _self.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerText?,
      questionFiles: freezed == questionFiles
          ? _self._questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile?>?,
      answerFiles: freezed == answerFiles
          ? _self._answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile?>?,
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

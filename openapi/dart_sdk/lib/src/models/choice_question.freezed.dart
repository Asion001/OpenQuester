// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoiceQuestion _$ChoiceQuestionFromJson(Map<String, dynamic> json) {
  return _ChoiceQuestion.fromJson(json);
}

/// @nodoc
mixin _$ChoiceQuestion {
  int? get id => throw _privateConstructorUsedError;

  /// Point value of the question
  int get price => throw _privateConstructorUsedError;

  /// Question text
  String? get text => throw _privateConstructorUsedError;

  /// Hint for the answer
  String? get answerHint => throw _privateConstructorUsedError;

  /// Correct answer text
  String? get answerText => throw _privateConstructorUsedError;

  /// Comment or note about the question
  String? get questionComment => throw _privateConstructorUsedError;

  /// Media files for the question
  List<PackageQuestionFile>? get questionFiles =>
      throw _privateConstructorUsedError;

  /// Media files for the answer
  List<PackageAnswerFile>? get answerFiles =>
      throw _privateConstructorUsedError;
  ChoiceQuestionType get type => throw _privateConstructorUsedError;
  dynamic get subType => throw _privateConstructorUsedError;

  /// Delay before showing options in milliseconds
  int get showDelay => throw _privateConstructorUsedError;

  /// Multiple choice options; minimum 2, maximum 8 answers
  List<Answers> get answers => throw _privateConstructorUsedError;

  /// Whether the question is hidden
  bool get isHidden => throw _privateConstructorUsedError;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay => throw _privateConstructorUsedError;

  /// Serializes this ChoiceQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceQuestionCopyWith<ChoiceQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceQuestionCopyWith<$Res> {
  factory $ChoiceQuestionCopyWith(
          ChoiceQuestion value, $Res Function(ChoiceQuestion) then) =
      _$ChoiceQuestionCopyWithImpl<$Res, ChoiceQuestion>;
  @useResult
  $Res call(
      {int? id,
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
class _$ChoiceQuestionCopyWithImpl<$Res, $Val extends ChoiceQuestion>
    implements $ChoiceQuestionCopyWith<$Res> {
  _$ChoiceQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _value.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _value.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFiles: freezed == questionFiles
          ? _value.questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile>?,
      answerFiles: freezed == answerFiles
          ? _value.answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChoiceQuestionType,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showDelay: null == showDelay
          ? _value.showDelay
          : showDelay // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceQuestionImplCopyWith<$Res>
    implements $ChoiceQuestionCopyWith<$Res> {
  factory _$$ChoiceQuestionImplCopyWith(_$ChoiceQuestionImpl value,
          $Res Function(_$ChoiceQuestionImpl) then) =
      __$$ChoiceQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
class __$$ChoiceQuestionImplCopyWithImpl<$Res>
    extends _$ChoiceQuestionCopyWithImpl<$Res, _$ChoiceQuestionImpl>
    implements _$$ChoiceQuestionImplCopyWith<$Res> {
  __$$ChoiceQuestionImplCopyWithImpl(
      _$ChoiceQuestionImpl _value, $Res Function(_$ChoiceQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    return _then(_$ChoiceQuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      answerHint: freezed == answerHint
          ? _value.answerHint
          : answerHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionComment: freezed == questionComment
          ? _value.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFiles: freezed == questionFiles
          ? _value._questionFiles
          : questionFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageQuestionFile>?,
      answerFiles: freezed == answerFiles
          ? _value._answerFiles
          : answerFiles // ignore: cast_nullable_to_non_nullable
              as List<PackageAnswerFile>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChoiceQuestionType,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showDelay: null == showDelay
          ? _value.showDelay
          : showDelay // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceQuestionImpl implements _ChoiceQuestion {
  const _$ChoiceQuestionImpl(
      {required this.id,
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

  factory _$ChoiceQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceQuestionImplFromJson(json);

  @override
  final int? id;

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

  @override
  String toString() {
    return 'ChoiceQuestion(id: $id, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceQuestionImplCopyWith<_$ChoiceQuestionImpl> get copyWith =>
      __$$ChoiceQuestionImplCopyWithImpl<_$ChoiceQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceQuestionImplToJson(
      this,
    );
  }
}

abstract class _ChoiceQuestion implements ChoiceQuestion {
  const factory _ChoiceQuestion(
      {required final int? id,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final ChoiceQuestionType type,
      required final dynamic subType,
      required final int showDelay,
      required final List<Answers> answers,
      final bool isHidden,
      final int answerDelay}) = _$ChoiceQuestionImpl;

  factory _ChoiceQuestion.fromJson(Map<String, dynamic> json) =
      _$ChoiceQuestionImpl.fromJson;

  @override
  int? get id;

  /// Point value of the question
  @override
  int get price;

  /// Question text
  @override
  String? get text;

  /// Hint for the answer
  @override
  String? get answerHint;

  /// Correct answer text
  @override
  String? get answerText;

  /// Comment or note about the question
  @override
  String? get questionComment;

  /// Media files for the question
  @override
  List<PackageQuestionFile>? get questionFiles;

  /// Media files for the answer
  @override
  List<PackageAnswerFile>? get answerFiles;
  @override
  ChoiceQuestionType get type;
  @override
  dynamic get subType;

  /// Delay before showing options in milliseconds
  @override
  int get showDelay;

  /// Multiple choice options; minimum 2, maximum 8 answers
  @override
  List<Answers> get answers;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of ChoiceQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceQuestionImplCopyWith<_$ChoiceQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StakeQuestion _$StakeQuestionFromJson(Map<String, dynamic> json) {
  return _StakeQuestion.fromJson(json);
}

/// @nodoc
mixin _$StakeQuestion {
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
  StakeQuestionType get type => throw _privateConstructorUsedError;

  /// Maximum price for the stake question, most useful when type is forEveryone - Does not allow top players to go all-in and win. Typically maxPrice can be 2x or 3x of nominal price
  int? get maxPrice => throw _privateConstructorUsedError;

  /// Whether the question is hidden
  bool get isHidden => throw _privateConstructorUsedError;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay => throw _privateConstructorUsedError;

  /// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
  StakeQuestionSubType get subType => throw _privateConstructorUsedError;

  /// Serializes this StakeQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StakeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StakeQuestionCopyWith<StakeQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeQuestionCopyWith<$Res> {
  factory $StakeQuestionCopyWith(
          StakeQuestion value, $Res Function(StakeQuestion) then) =
      _$StakeQuestionCopyWithImpl<$Res, StakeQuestion>;
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
      StakeQuestionType type,
      int? maxPrice,
      bool isHidden,
      int answerDelay,
      StakeQuestionSubType subType});
}

/// @nodoc
class _$StakeQuestionCopyWithImpl<$Res, $Val extends StakeQuestion>
    implements $StakeQuestionCopyWith<$Res> {
  _$StakeQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StakeQuestion
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
    Object? maxPrice = freezed,
    Object? isHidden = null,
    Object? answerDelay = null,
    Object? subType = null,
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
              as StakeQuestionType,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as StakeQuestionSubType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StakeQuestionImplCopyWith<$Res>
    implements $StakeQuestionCopyWith<$Res> {
  factory _$$StakeQuestionImplCopyWith(
          _$StakeQuestionImpl value, $Res Function(_$StakeQuestionImpl) then) =
      __$$StakeQuestionImplCopyWithImpl<$Res>;
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
      StakeQuestionType type,
      int? maxPrice,
      bool isHidden,
      int answerDelay,
      StakeQuestionSubType subType});
}

/// @nodoc
class __$$StakeQuestionImplCopyWithImpl<$Res>
    extends _$StakeQuestionCopyWithImpl<$Res, _$StakeQuestionImpl>
    implements _$$StakeQuestionImplCopyWith<$Res> {
  __$$StakeQuestionImplCopyWithImpl(
      _$StakeQuestionImpl _value, $Res Function(_$StakeQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakeQuestion
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
    Object? maxPrice = freezed,
    Object? isHidden = null,
    Object? answerDelay = null,
    Object? subType = null,
  }) {
    return _then(_$StakeQuestionImpl(
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
              as StakeQuestionType,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as StakeQuestionSubType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeQuestionImpl implements _StakeQuestion {
  const _$StakeQuestionImpl(
      {required this.id,
      required this.price,
      required this.text,
      required this.answerHint,
      required this.answerText,
      required this.questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required this.type,
      required this.maxPrice,
      this.isHidden = false,
      this.answerDelay = 4000,
      this.subType = StakeQuestionSubType.simple})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;

  factory _$StakeQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakeQuestionImplFromJson(json);

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
  final StakeQuestionType type;

  /// Maximum price for the stake question, most useful when type is forEveryone - Does not allow top players to go all-in and win. Typically maxPrice can be 2x or 3x of nominal price
  @override
  final int? maxPrice;

  /// Whether the question is hidden
  @override
  @JsonKey()
  final bool isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  @JsonKey()
  final int answerDelay;

  /// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
  @override
  @JsonKey()
  final StakeQuestionSubType subType;

  @override
  String toString() {
    return 'StakeQuestion(id: $id, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, maxPrice: $maxPrice, isHidden: $isHidden, answerDelay: $answerDelay, subType: $subType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeQuestionImpl &&
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
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.answerDelay, answerDelay) ||
                other.answerDelay == answerDelay) &&
            (identical(other.subType, subType) || other.subType == subType));
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
      maxPrice,
      isHidden,
      answerDelay,
      subType);

  /// Create a copy of StakeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeQuestionImplCopyWith<_$StakeQuestionImpl> get copyWith =>
      __$$StakeQuestionImplCopyWithImpl<_$StakeQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeQuestionImplToJson(
      this,
    );
  }
}

abstract class _StakeQuestion implements StakeQuestion {
  const factory _StakeQuestion(
      {required final int? id,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final StakeQuestionType type,
      required final int? maxPrice,
      final bool isHidden,
      final int answerDelay,
      final StakeQuestionSubType subType}) = _$StakeQuestionImpl;

  factory _StakeQuestion.fromJson(Map<String, dynamic> json) =
      _$StakeQuestionImpl.fromJson;

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
  StakeQuestionType get type;

  /// Maximum price for the stake question, most useful when type is forEveryone - Does not allow top players to go all-in and win. Typically maxPrice can be 2x or 3x of nominal price
  @override
  int? get maxPrice;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
  @override
  StakeQuestionSubType get subType;

  /// Create a copy of StakeQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakeQuestionImplCopyWith<_$StakeQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

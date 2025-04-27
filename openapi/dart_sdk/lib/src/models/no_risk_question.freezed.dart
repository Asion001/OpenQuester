// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'no_risk_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoRiskQuestion _$NoRiskQuestionFromJson(Map<String, dynamic> json) {
  return _NoRiskQuestion.fromJson(json);
}

/// @nodoc
mixin _$NoRiskQuestion {
  int? get id => throw _privateConstructorUsedError;

  /// Order of the question in the theme, should be unique, starting from 0
  int get order => throw _privateConstructorUsedError;

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
  NoRiskQuestionType get type => throw _privateConstructorUsedError;

  /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
  NoRiskQuestionSubType get subType => throw _privateConstructorUsedError;

  /// Whether the question is hidden
  bool get isHidden => throw _privateConstructorUsedError;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay => throw _privateConstructorUsedError;

  /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
  String get priceMultiplier => throw _privateConstructorUsedError;

  /// Serializes this NoRiskQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoRiskQuestionCopyWith<NoRiskQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoRiskQuestionCopyWith<$Res> {
  factory $NoRiskQuestionCopyWith(
          NoRiskQuestion value, $Res Function(NoRiskQuestion) then) =
      _$NoRiskQuestionCopyWithImpl<$Res, NoRiskQuestion>;
  @useResult
  $Res call(
      {int? id,
      int order,
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
class _$NoRiskQuestionCopyWithImpl<$Res, $Val extends NoRiskQuestion>
    implements $NoRiskQuestionCopyWith<$Res> {
  _$NoRiskQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
              as NoRiskQuestionType,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionSubType,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoRiskQuestionImplCopyWith<$Res>
    implements $NoRiskQuestionCopyWith<$Res> {
  factory _$$NoRiskQuestionImplCopyWith(_$NoRiskQuestionImpl value,
          $Res Function(_$NoRiskQuestionImpl) then) =
      __$$NoRiskQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int order,
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
class __$$NoRiskQuestionImplCopyWithImpl<$Res>
    extends _$NoRiskQuestionCopyWithImpl<$Res, _$NoRiskQuestionImpl>
    implements _$$NoRiskQuestionImplCopyWith<$Res> {
  __$$NoRiskQuestionImplCopyWithImpl(
      _$NoRiskQuestionImpl _value, $Res Function(_$NoRiskQuestionImpl) _then)
      : super(_value, _then);

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
    return _then(_$NoRiskQuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
              as NoRiskQuestionType,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as NoRiskQuestionSubType,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      answerDelay: null == answerDelay
          ? _value.answerDelay
          : answerDelay // ignore: cast_nullable_to_non_nullable
              as int,
      priceMultiplier: null == priceMultiplier
          ? _value.priceMultiplier
          : priceMultiplier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoRiskQuestionImpl implements _NoRiskQuestion {
  const _$NoRiskQuestionImpl(
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

  factory _$NoRiskQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoRiskQuestionImplFromJson(json);

  @override
  final int? id;

  /// Order of the question in the theme, should be unique, starting from 0
  @override
  final int order;

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

  @override
  String toString() {
    return 'NoRiskQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, isHidden: $isHidden, answerDelay: $answerDelay, priceMultiplier: $priceMultiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoRiskQuestionImpl &&
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

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoRiskQuestionImplCopyWith<_$NoRiskQuestionImpl> get copyWith =>
      __$$NoRiskQuestionImplCopyWithImpl<_$NoRiskQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoRiskQuestionImplToJson(
      this,
    );
  }
}

abstract class _NoRiskQuestion implements NoRiskQuestion {
  const factory _NoRiskQuestion(
      {required final int? id,
      required final int order,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final NoRiskQuestionType type,
      required final NoRiskQuestionSubType subType,
      final bool isHidden,
      final int answerDelay,
      final String priceMultiplier}) = _$NoRiskQuestionImpl;

  factory _NoRiskQuestion.fromJson(Map<String, dynamic> json) =
      _$NoRiskQuestionImpl.fromJson;

  @override
  int? get id;

  /// Order of the question in the theme, should be unique, starting from 0
  @override
  int get order;

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
  NoRiskQuestionType get type;

  /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
  @override
  NoRiskQuestionSubType get subType;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
  @override
  String get priceMultiplier;

  /// Create a copy of NoRiskQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoRiskQuestionImplCopyWith<_$NoRiskQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

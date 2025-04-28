// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_question_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageQuestionUnion _$PackageQuestionUnionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'simple':
      return PackageQuestionUnionSimple.fromJson(json);
    case 'stake':
      return PackageQuestionUnionStake.fromJson(json);
    case 'secret':
      return PackageQuestionUnionSecret.fromJson(json);
    case 'noRisk':
      return PackageQuestionUnionNoRisk.fromJson(json);
    case 'choice':
      return PackageQuestionUnionChoice.fromJson(json);
    case 'hidden':
      return PackageQuestionUnionHidden.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'PackageQuestionUnion',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PackageQuestionUnion {
  int? get id => throw _privateConstructorUsedError;
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
  Enum get type => throw _privateConstructorUsedError;

  /// Whether the question is hidden
  bool get isHidden => throw _privateConstructorUsedError;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PackageQuestionUnion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageQuestionUnionCopyWith<PackageQuestionUnion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageQuestionUnionCopyWith<$Res> {
  factory $PackageQuestionUnionCopyWith(PackageQuestionUnion value,
          $Res Function(PackageQuestionUnion) then) =
      _$PackageQuestionUnionCopyWithImpl<$Res, PackageQuestionUnion>;
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
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class _$PackageQuestionUnionCopyWithImpl<$Res,
        $Val extends PackageQuestionUnion>
    implements $PackageQuestionUnionCopyWith<$Res> {
  _$PackageQuestionUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageQuestionUnion
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
    Object? isHidden = null,
    Object? answerDelay = null,
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
abstract class _$$PackageQuestionUnionSimpleImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionSimpleImplCopyWith(
          _$PackageQuestionUnionSimpleImpl value,
          $Res Function(_$PackageQuestionUnionSimpleImpl) then) =
      __$$PackageQuestionUnionSimpleImplCopyWithImpl<$Res>;
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
      SimpleQuestionType type,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$$PackageQuestionUnionSimpleImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionSimpleImpl>
    implements _$$PackageQuestionUnionSimpleImplCopyWith<$Res> {
  __$$PackageQuestionUnionSimpleImplCopyWithImpl(
      _$PackageQuestionUnionSimpleImpl _value,
      $Res Function(_$PackageQuestionUnionSimpleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    Object? isHidden = null,
    Object? answerDelay = null,
  }) {
    return _then(_$PackageQuestionUnionSimpleImpl(
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
              as SimpleQuestionType,
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
class _$PackageQuestionUnionSimpleImpl implements PackageQuestionUnionSimple {
  const _$PackageQuestionUnionSimpleImpl(
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
      this.isHidden = false,
      this.answerDelay = 4000})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;

  factory _$PackageQuestionUnionSimpleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageQuestionUnionSimpleImplFromJson(json);

  @override
  final int? id;
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
  final SimpleQuestionType type;

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
    return 'PackageQuestionUnion.simple(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionSimpleImpl &&
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
      isHidden,
      answerDelay);

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionSimpleImplCopyWith<_$PackageQuestionUnionSimpleImpl>
      get copyWith => __$$PackageQuestionUnionSimpleImplCopyWithImpl<
          _$PackageQuestionUnionSimpleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return simple(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return simple?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (simple != null) {
      return simple(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          isHidden,
          answerDelay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return simple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return simple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (simple != null) {
      return simple(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionSimpleImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionSimple implements PackageQuestionUnion {
  const factory PackageQuestionUnionSimple(
      {required final int? id,
      required final int order,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final SimpleQuestionType type,
      final bool isHidden,
      final int answerDelay}) = _$PackageQuestionUnionSimpleImpl;

  factory PackageQuestionUnionSimple.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionSimpleImpl.fromJson;

  @override
  int? get id;
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
  SimpleQuestionType get type;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionSimpleImplCopyWith<_$PackageQuestionUnionSimpleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageQuestionUnionStakeImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionStakeImplCopyWith(
          _$PackageQuestionUnionStakeImpl value,
          $Res Function(_$PackageQuestionUnionStakeImpl) then) =
      __$$PackageQuestionUnionStakeImplCopyWithImpl<$Res>;
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
      StakeQuestionType type,
      int? maxPrice,
      bool isHidden,
      int answerDelay,
      StakeQuestionSubType subType});
}

/// @nodoc
class __$$PackageQuestionUnionStakeImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionStakeImpl>
    implements _$$PackageQuestionUnionStakeImplCopyWith<$Res> {
  __$$PackageQuestionUnionStakeImplCopyWithImpl(
      _$PackageQuestionUnionStakeImpl _value,
      $Res Function(_$PackageQuestionUnionStakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    Object? maxPrice = freezed,
    Object? isHidden = null,
    Object? answerDelay = null,
    Object? subType = null,
  }) {
    return _then(_$PackageQuestionUnionStakeImpl(
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
class _$PackageQuestionUnionStakeImpl implements PackageQuestionUnionStake {
  const _$PackageQuestionUnionStakeImpl(
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
      required this.maxPrice,
      this.isHidden = false,
      this.answerDelay = 4000,
      this.subType = StakeQuestionSubType.simple})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;

  factory _$PackageQuestionUnionStakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageQuestionUnionStakeImplFromJson(json);

  @override
  final int? id;
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
    return 'PackageQuestionUnion.stake(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, maxPrice: $maxPrice, isHidden: $isHidden, answerDelay: $answerDelay, subType: $subType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionStakeImpl &&
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
      order,
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

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionStakeImplCopyWith<_$PackageQuestionUnionStakeImpl>
      get copyWith => __$$PackageQuestionUnionStakeImplCopyWithImpl<
          _$PackageQuestionUnionStakeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return stake(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        maxPrice,
        isHidden,
        answerDelay,
        subType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return stake?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        maxPrice,
        isHidden,
        answerDelay,
        subType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          maxPrice,
          isHidden,
          answerDelay,
          subType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return stake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return stake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionStakeImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionStake implements PackageQuestionUnion {
  const factory PackageQuestionUnionStake(
      {required final int? id,
      required final int order,
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
      final StakeQuestionSubType subType}) = _$PackageQuestionUnionStakeImpl;

  factory PackageQuestionUnionStake.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionStakeImpl.fromJson;

  @override
  int? get id;
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
  StakeQuestionType get type;

  /// Maximum price for the stake question, most useful when type is forEveryone - Does not allow top players to go all-in and win. Typically maxPrice can be 2x or 3x of nominal price
  int? get maxPrice;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
  StakeQuestionSubType get subType;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionStakeImplCopyWith<_$PackageQuestionUnionStakeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageQuestionUnionSecretImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionSecretImplCopyWith(
          _$PackageQuestionUnionSecretImpl value,
          $Res Function(_$PackageQuestionUnionSecretImpl) then) =
      __$$PackageQuestionUnionSecretImplCopyWithImpl<$Res>;
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
      SecretQuestionType type,
      SecretQuestionSubType subType,
      List<int>? allowedPrices,
      PackageQuestionTransferType transferType,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$$PackageQuestionUnionSecretImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionSecretImpl>
    implements _$$PackageQuestionUnionSecretImplCopyWith<$Res> {
  __$$PackageQuestionUnionSecretImplCopyWithImpl(
      _$PackageQuestionUnionSecretImpl _value,
      $Res Function(_$PackageQuestionUnionSecretImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    Object? allowedPrices = freezed,
    Object? transferType = null,
    Object? isHidden = null,
    Object? answerDelay = null,
  }) {
    return _then(_$PackageQuestionUnionSecretImpl(
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
              as SecretQuestionType,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as SecretQuestionSubType,
      allowedPrices: freezed == allowedPrices
          ? _value._allowedPrices
          : allowedPrices // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as PackageQuestionTransferType,
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
class _$PackageQuestionUnionSecretImpl implements PackageQuestionUnionSecret {
  const _$PackageQuestionUnionSecretImpl(
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
      required final List<int>? allowedPrices,
      required this.transferType,
      this.isHidden = false,
      this.answerDelay = 4000})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles,
        _allowedPrices = allowedPrices;

  factory _$PackageQuestionUnionSecretImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageQuestionUnionSecretImplFromJson(json);

  @override
  final int? id;
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
  final SecretQuestionType type;

  /// Subtype of the secret question. customPrice means player can choose cost of question
  @override
  final SecretQuestionSubType subType;

  /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
  final List<int>? _allowedPrices;

  /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
  @override
  List<int>? get allowedPrices {
    final value = _allowedPrices;
    if (value == null) return null;
    if (_allowedPrices is EqualUnmodifiableListView) return _allowedPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PackageQuestionTransferType transferType;

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
    return 'PackageQuestionUnion.secret(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, allowedPrices: $allowedPrices, transferType: $transferType, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionSecretImpl &&
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
            const DeepCollectionEquality()
                .equals(other._allowedPrices, _allowedPrices) &&
            (identical(other.transferType, transferType) ||
                other.transferType == transferType) &&
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
      subType,
      const DeepCollectionEquality().hash(_allowedPrices),
      transferType,
      isHidden,
      answerDelay);

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionSecretImplCopyWith<_$PackageQuestionUnionSecretImpl>
      get copyWith => __$$PackageQuestionUnionSecretImplCopyWithImpl<
          _$PackageQuestionUnionSecretImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return secret(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        allowedPrices,
        transferType,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return secret?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        allowedPrices,
        transferType,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          subType,
          allowedPrices,
          transferType,
          isHidden,
          answerDelay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return secret(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return secret?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (secret != null) {
      return secret(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionSecretImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionSecret implements PackageQuestionUnion {
  const factory PackageQuestionUnionSecret(
      {required final int? id,
      required final int order,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final SecretQuestionType type,
      required final SecretQuestionSubType subType,
      required final List<int>? allowedPrices,
      required final PackageQuestionTransferType transferType,
      final bool isHidden,
      final int answerDelay}) = _$PackageQuestionUnionSecretImpl;

  factory PackageQuestionUnionSecret.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionSecretImpl.fromJson;

  @override
  int? get id;
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
  SecretQuestionType get type;

  /// Subtype of the secret question. customPrice means player can choose cost of question
  SecretQuestionSubType get subType;

  /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
  List<int>? get allowedPrices;
  PackageQuestionTransferType get transferType;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionSecretImplCopyWith<_$PackageQuestionUnionSecretImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageQuestionUnionNoRiskImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionNoRiskImplCopyWith(
          _$PackageQuestionUnionNoRiskImpl value,
          $Res Function(_$PackageQuestionUnionNoRiskImpl) then) =
      __$$PackageQuestionUnionNoRiskImplCopyWithImpl<$Res>;
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
class __$$PackageQuestionUnionNoRiskImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionNoRiskImpl>
    implements _$$PackageQuestionUnionNoRiskImplCopyWith<$Res> {
  __$$PackageQuestionUnionNoRiskImplCopyWithImpl(
      _$PackageQuestionUnionNoRiskImpl _value,
      $Res Function(_$PackageQuestionUnionNoRiskImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    return _then(_$PackageQuestionUnionNoRiskImpl(
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
class _$PackageQuestionUnionNoRiskImpl implements PackageQuestionUnionNoRisk {
  const _$PackageQuestionUnionNoRiskImpl(
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

  factory _$PackageQuestionUnionNoRiskImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageQuestionUnionNoRiskImplFromJson(json);

  @override
  final int? id;
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
    return 'PackageQuestionUnion.noRisk(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, isHidden: $isHidden, answerDelay: $answerDelay, priceMultiplier: $priceMultiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionNoRiskImpl &&
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

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionNoRiskImplCopyWith<_$PackageQuestionUnionNoRiskImpl>
      get copyWith => __$$PackageQuestionUnionNoRiskImplCopyWithImpl<
          _$PackageQuestionUnionNoRiskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return noRisk(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        isHidden,
        answerDelay,
        priceMultiplier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return noRisk?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        isHidden,
        answerDelay,
        priceMultiplier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (noRisk != null) {
      return noRisk(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          subType,
          isHidden,
          answerDelay,
          priceMultiplier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return noRisk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return noRisk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (noRisk != null) {
      return noRisk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionNoRiskImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionNoRisk implements PackageQuestionUnion {
  const factory PackageQuestionUnionNoRisk(
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
      final String priceMultiplier}) = _$PackageQuestionUnionNoRiskImpl;

  factory PackageQuestionUnionNoRisk.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionNoRiskImpl.fromJson;

  @override
  int? get id;
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
  NoRiskQuestionSubType get subType;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
  String get priceMultiplier;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionNoRiskImplCopyWith<_$PackageQuestionUnionNoRiskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageQuestionUnionChoiceImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionChoiceImplCopyWith(
          _$PackageQuestionUnionChoiceImpl value,
          $Res Function(_$PackageQuestionUnionChoiceImpl) then) =
      __$$PackageQuestionUnionChoiceImplCopyWithImpl<$Res>;
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
      ChoiceQuestionType type,
      dynamic subType,
      int showDelay,
      List<Answers> answers,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$$PackageQuestionUnionChoiceImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionChoiceImpl>
    implements _$$PackageQuestionUnionChoiceImplCopyWith<$Res> {
  __$$PackageQuestionUnionChoiceImplCopyWithImpl(
      _$PackageQuestionUnionChoiceImpl _value,
      $Res Function(_$PackageQuestionUnionChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    return _then(_$PackageQuestionUnionChoiceImpl(
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
class _$PackageQuestionUnionChoiceImpl implements PackageQuestionUnionChoice {
  const _$PackageQuestionUnionChoiceImpl(
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

  factory _$PackageQuestionUnionChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageQuestionUnionChoiceImplFromJson(json);

  @override
  final int? id;
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
    return 'PackageQuestionUnion.choice(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, showDelay: $showDelay, answers: $answers, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionChoiceImpl &&
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

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionChoiceImplCopyWith<_$PackageQuestionUnionChoiceImpl>
      get copyWith => __$$PackageQuestionUnionChoiceImplCopyWithImpl<
          _$PackageQuestionUnionChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return choice(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        showDelay,
        answers,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return choice?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        subType,
        showDelay,
        answers,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          subType,
          showDelay,
          answers,
          isHidden,
          answerDelay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionChoiceImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionChoice implements PackageQuestionUnion {
  const factory PackageQuestionUnionChoice(
      {required final int? id,
      required final int order,
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
      final int answerDelay}) = _$PackageQuestionUnionChoiceImpl;

  factory PackageQuestionUnionChoice.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionChoiceImpl.fromJson;

  @override
  int? get id;
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
  ChoiceQuestionType get type;
  dynamic get subType;

  /// Delay before showing options in milliseconds
  int get showDelay;

  /// Multiple choice options; minimum 2, maximum 8 answers
  List<Answers> get answers;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionChoiceImplCopyWith<_$PackageQuestionUnionChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageQuestionUnionHiddenImplCopyWith<$Res>
    implements $PackageQuestionUnionCopyWith<$Res> {
  factory _$$PackageQuestionUnionHiddenImplCopyWith(
          _$PackageQuestionUnionHiddenImpl value,
          $Res Function(_$PackageQuestionUnionHiddenImpl) then) =
      __$$PackageQuestionUnionHiddenImplCopyWithImpl<$Res>;
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
      HiddenQuestionType type,
      bool isHidden,
      int answerDelay});
}

/// @nodoc
class __$$PackageQuestionUnionHiddenImplCopyWithImpl<$Res>
    extends _$PackageQuestionUnionCopyWithImpl<$Res,
        _$PackageQuestionUnionHiddenImpl>
    implements _$$PackageQuestionUnionHiddenImplCopyWith<$Res> {
  __$$PackageQuestionUnionHiddenImplCopyWithImpl(
      _$PackageQuestionUnionHiddenImpl _value,
      $Res Function(_$PackageQuestionUnionHiddenImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageQuestionUnion
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
    Object? isHidden = null,
    Object? answerDelay = null,
  }) {
    return _then(_$PackageQuestionUnionHiddenImpl(
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
              as HiddenQuestionType,
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
class _$PackageQuestionUnionHiddenImpl implements PackageQuestionUnionHidden {
  const _$PackageQuestionUnionHiddenImpl(
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
      this.isHidden = false,
      this.answerDelay = 4000})
      : _questionFiles = questionFiles,
        _answerFiles = answerFiles;

  factory _$PackageQuestionUnionHiddenImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageQuestionUnionHiddenImplFromJson(json);

  @override
  final int? id;
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
  final HiddenQuestionType type;

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
    return 'PackageQuestionUnion.hidden(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageQuestionUnionHiddenImpl &&
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
      isHidden,
      answerDelay);

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageQuestionUnionHiddenImplCopyWith<_$PackageQuestionUnionHiddenImpl>
      get copyWith => __$$PackageQuestionUnionHiddenImplCopyWithImpl<
          _$PackageQuestionUnionHiddenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)
        simple,
    required TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)
        stake,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)
        secret,
    required TResult Function(
            int? id,
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
            String priceMultiplier)
        noRisk,
    required TResult Function(
            int? id,
            int order,
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
            int answerDelay)
        choice,
    required TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)
        hidden,
  }) {
    return hidden(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult? Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult? Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult? Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult? Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
  }) {
    return hidden?.call(
        id,
        order,
        price,
        text,
        answerHint,
        answerText,
        questionComment,
        questionFiles,
        answerFiles,
        type,
        isHidden,
        answerDelay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SimpleQuestionType type,
            bool isHidden,
            int answerDelay)?
        simple,
    TResult Function(
            int? id,
            int order,
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
            StakeQuestionSubType subType)?
        stake,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            SecretQuestionType type,
            SecretQuestionSubType subType,
            List<int>? allowedPrices,
            PackageQuestionTransferType transferType,
            bool isHidden,
            int answerDelay)?
        secret,
    TResult Function(
            int? id,
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
            String priceMultiplier)?
        noRisk,
    TResult Function(
            int? id,
            int order,
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
            int answerDelay)?
        choice,
    TResult Function(
            int? id,
            int order,
            int price,
            String? text,
            String? answerHint,
            String? answerText,
            String? questionComment,
            List<PackageQuestionFile>? questionFiles,
            List<PackageAnswerFile>? answerFiles,
            HiddenQuestionType type,
            bool isHidden,
            int answerDelay)?
        hidden,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden(
          id,
          order,
          price,
          text,
          answerHint,
          answerText,
          questionComment,
          questionFiles,
          answerFiles,
          type,
          isHidden,
          answerDelay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageQuestionUnionSimple value) simple,
    required TResult Function(PackageQuestionUnionStake value) stake,
    required TResult Function(PackageQuestionUnionSecret value) secret,
    required TResult Function(PackageQuestionUnionNoRisk value) noRisk,
    required TResult Function(PackageQuestionUnionChoice value) choice,
    required TResult Function(PackageQuestionUnionHidden value) hidden,
  }) {
    return hidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PackageQuestionUnionSimple value)? simple,
    TResult? Function(PackageQuestionUnionStake value)? stake,
    TResult? Function(PackageQuestionUnionSecret value)? secret,
    TResult? Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult? Function(PackageQuestionUnionChoice value)? choice,
    TResult? Function(PackageQuestionUnionHidden value)? hidden,
  }) {
    return hidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageQuestionUnionSimple value)? simple,
    TResult Function(PackageQuestionUnionStake value)? stake,
    TResult Function(PackageQuestionUnionSecret value)? secret,
    TResult Function(PackageQuestionUnionNoRisk value)? noRisk,
    TResult Function(PackageQuestionUnionChoice value)? choice,
    TResult Function(PackageQuestionUnionHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageQuestionUnionHiddenImplToJson(
      this,
    );
  }
}

abstract class PackageQuestionUnionHidden implements PackageQuestionUnion {
  const factory PackageQuestionUnionHidden(
      {required final int? id,
      required final int order,
      required final int price,
      required final String? text,
      required final String? answerHint,
      required final String? answerText,
      required final String? questionComment,
      required final List<PackageQuestionFile>? questionFiles,
      required final List<PackageAnswerFile>? answerFiles,
      required final HiddenQuestionType type,
      final bool isHidden,
      final int answerDelay}) = _$PackageQuestionUnionHiddenImpl;

  factory PackageQuestionUnionHidden.fromJson(Map<String, dynamic> json) =
      _$PackageQuestionUnionHiddenImpl.fromJson;

  @override
  int? get id;
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
  HiddenQuestionType get type;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of PackageQuestionUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageQuestionUnionHiddenImplCopyWith<_$PackageQuestionUnionHiddenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

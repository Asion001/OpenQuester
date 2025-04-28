// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secret_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecretQuestion _$SecretQuestionFromJson(Map<String, dynamic> json) {
  return _SecretQuestion.fromJson(json);
}

/// @nodoc
mixin _$SecretQuestion {
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
  SecretQuestionType get type => throw _privateConstructorUsedError;

  /// Subtype of the secret question. customPrice means player can choose cost of question
  SecretQuestionSubType get subType => throw _privateConstructorUsedError;

  /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
  List<int>? get allowedPrices => throw _privateConstructorUsedError;
  PackageQuestionTransferType get transferType =>
      throw _privateConstructorUsedError;

  /// Whether the question is hidden
  bool get isHidden => throw _privateConstructorUsedError;

  /// Delay in milliseconds before being able to answer, if applicable
  int get answerDelay => throw _privateConstructorUsedError;

  /// Serializes this SecretQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecretQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecretQuestionCopyWith<SecretQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecretQuestionCopyWith<$Res> {
  factory $SecretQuestionCopyWith(
          SecretQuestion value, $Res Function(SecretQuestion) then) =
      _$SecretQuestionCopyWithImpl<$Res, SecretQuestion>;
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
class _$SecretQuestionCopyWithImpl<$Res, $Val extends SecretQuestion>
    implements $SecretQuestionCopyWith<$Res> {
  _$SecretQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecretQuestion
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
              as SecretQuestionType,
      subType: null == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as SecretQuestionSubType,
      allowedPrices: freezed == allowedPrices
          ? _value.allowedPrices
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SecretQuestionImplCopyWith<$Res>
    implements $SecretQuestionCopyWith<$Res> {
  factory _$$SecretQuestionImplCopyWith(_$SecretQuestionImpl value,
          $Res Function(_$SecretQuestionImpl) then) =
      __$$SecretQuestionImplCopyWithImpl<$Res>;
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
class __$$SecretQuestionImplCopyWithImpl<$Res>
    extends _$SecretQuestionCopyWithImpl<$Res, _$SecretQuestionImpl>
    implements _$$SecretQuestionImplCopyWith<$Res> {
  __$$SecretQuestionImplCopyWithImpl(
      _$SecretQuestionImpl _value, $Res Function(_$SecretQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecretQuestion
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
    return _then(_$SecretQuestionImpl(
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
class _$SecretQuestionImpl implements _SecretQuestion {
  const _$SecretQuestionImpl(
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

  factory _$SecretQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecretQuestionImplFromJson(json);

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
    return 'SecretQuestion(id: $id, order: $order, price: $price, text: $text, answerHint: $answerHint, answerText: $answerText, questionComment: $questionComment, questionFiles: $questionFiles, answerFiles: $answerFiles, type: $type, subType: $subType, allowedPrices: $allowedPrices, transferType: $transferType, isHidden: $isHidden, answerDelay: $answerDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecretQuestionImpl &&
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

  /// Create a copy of SecretQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecretQuestionImplCopyWith<_$SecretQuestionImpl> get copyWith =>
      __$$SecretQuestionImplCopyWithImpl<_$SecretQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecretQuestionImplToJson(
      this,
    );
  }
}

abstract class _SecretQuestion implements SecretQuestion {
  const factory _SecretQuestion(
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
      final int answerDelay}) = _$SecretQuestionImpl;

  factory _SecretQuestion.fromJson(Map<String, dynamic> json) =
      _$SecretQuestionImpl.fromJson;

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
  @override
  SecretQuestionSubType get subType;

  /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
  @override
  List<int>? get allowedPrices;
  @override
  PackageQuestionTransferType get transferType;

  /// Whether the question is hidden
  @override
  bool get isHidden;

  /// Delay in milliseconds before being able to answer, if applicable
  @override
  int get answerDelay;

  /// Create a copy of SecretQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecretQuestionImplCopyWith<_$SecretQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SiqFileQuestion _$SiqFileQuestionFromJson(Map<String, dynamic> json) {
  return _SiqFileQuestion.fromJson(json);
}

/// @nodoc
mixin _$SiqFileQuestion {
  int get price => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;

  /// Question text
  String? get text => throw _privateConstructorUsedError;

  /// Hint for host asnwer validation.
  /// For example "Right answer: only Jojo. Not gay guys"
  String? get hostHint => throw _privateConstructorUsedError;

  /// Hint for players.
  String? get playersHint => throw _privateConstructorUsedError;
  SiqFileFileObject? get questionFile => throw _privateConstructorUsedError;

  /// Question text
  String? get answerText => throw _privateConstructorUsedError;
  SiqFileFileObject? get answerFile => throw _privateConstructorUsedError;

  /// Serializes this SiqFileQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileQuestionCopyWith<SiqFileQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileQuestionCopyWith<$Res> {
  factory $SiqFileQuestionCopyWith(
    SiqFileQuestion value,
    $Res Function(SiqFileQuestion) then,
  ) = _$SiqFileQuestionCopyWithImpl<$Res, SiqFileQuestion>;
  @useResult
  $Res call({
    int price,
    QuestionType type,
    String? text,
    String? hostHint,
    String? playersHint,
    SiqFileFileObject? questionFile,
    String? answerText,
    SiqFileFileObject? answerFile,
  });

  $SiqFileFileObjectCopyWith<$Res>? get questionFile;
  $SiqFileFileObjectCopyWith<$Res>? get answerFile;
}

/// @nodoc
class _$SiqFileQuestionCopyWithImpl<$Res, $Val extends SiqFileQuestion>
    implements $SiqFileQuestionCopyWith<$Res> {
  _$SiqFileQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? type = null,
    Object? text = freezed,
    Object? hostHint = freezed,
    Object? playersHint = freezed,
    Object? questionFile = freezed,
    Object? answerText = freezed,
    Object? answerFile = freezed,
  }) {
    return _then(
      _value.copyWith(
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as int,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as QuestionType,
            text:
                freezed == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String?,
            hostHint:
                freezed == hostHint
                    ? _value.hostHint
                    : hostHint // ignore: cast_nullable_to_non_nullable
                        as String?,
            playersHint:
                freezed == playersHint
                    ? _value.playersHint
                    : playersHint // ignore: cast_nullable_to_non_nullable
                        as String?,
            questionFile:
                freezed == questionFile
                    ? _value.questionFile
                    : questionFile // ignore: cast_nullable_to_non_nullable
                        as SiqFileFileObject?,
            answerText:
                freezed == answerText
                    ? _value.answerText
                    : answerText // ignore: cast_nullable_to_non_nullable
                        as String?,
            answerFile:
                freezed == answerFile
                    ? _value.answerFile
                    : answerFile // ignore: cast_nullable_to_non_nullable
                        as SiqFileFileObject?,
          )
          as $Val,
    );
  }

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiqFileFileObjectCopyWith<$Res>? get questionFile {
    if (_value.questionFile == null) {
      return null;
    }

    return $SiqFileFileObjectCopyWith<$Res>(_value.questionFile!, (value) {
      return _then(_value.copyWith(questionFile: value) as $Val);
    });
  }

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SiqFileFileObjectCopyWith<$Res>? get answerFile {
    if (_value.answerFile == null) {
      return null;
    }

    return $SiqFileFileObjectCopyWith<$Res>(_value.answerFile!, (value) {
      return _then(_value.copyWith(answerFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiqFileQuestionImplCopyWith<$Res>
    implements $SiqFileQuestionCopyWith<$Res> {
  factory _$$SiqFileQuestionImplCopyWith(
    _$SiqFileQuestionImpl value,
    $Res Function(_$SiqFileQuestionImpl) then,
  ) = __$$SiqFileQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int price,
    QuestionType type,
    String? text,
    String? hostHint,
    String? playersHint,
    SiqFileFileObject? questionFile,
    String? answerText,
    SiqFileFileObject? answerFile,
  });

  @override
  $SiqFileFileObjectCopyWith<$Res>? get questionFile;
  @override
  $SiqFileFileObjectCopyWith<$Res>? get answerFile;
}

/// @nodoc
class __$$SiqFileQuestionImplCopyWithImpl<$Res>
    extends _$SiqFileQuestionCopyWithImpl<$Res, _$SiqFileQuestionImpl>
    implements _$$SiqFileQuestionImplCopyWith<$Res> {
  __$$SiqFileQuestionImplCopyWithImpl(
    _$SiqFileQuestionImpl _value,
    $Res Function(_$SiqFileQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? type = null,
    Object? text = freezed,
    Object? hostHint = freezed,
    Object? playersHint = freezed,
    Object? questionFile = freezed,
    Object? answerText = freezed,
    Object? answerFile = freezed,
  }) {
    return _then(
      _$SiqFileQuestionImpl(
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as int,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as QuestionType,
        text:
            freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String?,
        hostHint:
            freezed == hostHint
                ? _value.hostHint
                : hostHint // ignore: cast_nullable_to_non_nullable
                    as String?,
        playersHint:
            freezed == playersHint
                ? _value.playersHint
                : playersHint // ignore: cast_nullable_to_non_nullable
                    as String?,
        questionFile:
            freezed == questionFile
                ? _value.questionFile
                : questionFile // ignore: cast_nullable_to_non_nullable
                    as SiqFileFileObject?,
        answerText:
            freezed == answerText
                ? _value.answerText
                : answerText // ignore: cast_nullable_to_non_nullable
                    as String?,
        answerFile:
            freezed == answerFile
                ? _value.answerFile
                : answerFile // ignore: cast_nullable_to_non_nullable
                    as SiqFileFileObject?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileQuestionImpl extends _SiqFileQuestion {
  const _$SiqFileQuestionImpl({
    required this.price,
    this.type = QuestionType.regular,
    this.text,
    this.hostHint,
    this.playersHint,
    this.questionFile,
    this.answerText,
    this.answerFile,
  }) : super._();

  factory _$SiqFileQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileQuestionImplFromJson(json);

  @override
  final int price;
  @override
  @JsonKey()
  final QuestionType type;

  /// Question text
  @override
  final String? text;

  /// Hint for host asnwer validation.
  /// For example "Right answer: only Jojo. Not gay guys"
  @override
  final String? hostHint;

  /// Hint for players.
  @override
  final String? playersHint;
  @override
  final SiqFileFileObject? questionFile;

  /// Question text
  @override
  final String? answerText;
  @override
  final SiqFileFileObject? answerFile;

  @override
  String toString() {
    return 'SiqFileQuestion(price: $price, type: $type, text: $text, hostHint: $hostHint, playersHint: $playersHint, questionFile: $questionFile, answerText: $answerText, answerFile: $answerFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileQuestionImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.hostHint, hostHint) ||
                other.hostHint == hostHint) &&
            (identical(other.playersHint, playersHint) ||
                other.playersHint == playersHint) &&
            (identical(other.questionFile, questionFile) ||
                other.questionFile == questionFile) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.answerFile, answerFile) ||
                other.answerFile == answerFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    price,
    type,
    text,
    hostHint,
    playersHint,
    questionFile,
    answerText,
    answerFile,
  );

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileQuestionImplCopyWith<_$SiqFileQuestionImpl> get copyWith =>
      __$$SiqFileQuestionImplCopyWithImpl<_$SiqFileQuestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileQuestionImplToJson(this);
  }
}

abstract class _SiqFileQuestion extends SiqFileQuestion {
  const factory _SiqFileQuestion({
    required final int price,
    final QuestionType type,
    final String? text,
    final String? hostHint,
    final String? playersHint,
    final SiqFileFileObject? questionFile,
    final String? answerText,
    final SiqFileFileObject? answerFile,
  }) = _$SiqFileQuestionImpl;
  const _SiqFileQuestion._() : super._();

  factory _SiqFileQuestion.fromJson(Map<String, dynamic> json) =
      _$SiqFileQuestionImpl.fromJson;

  @override
  int get price;
  @override
  QuestionType get type;

  /// Question text
  @override
  String? get text;

  /// Hint for host asnwer validation.
  /// For example "Right answer: only Jojo. Not gay guys"
  @override
  String? get hostHint;

  /// Hint for players.
  @override
  String? get playersHint;
  @override
  SiqFileFileObject? get questionFile;

  /// Question text
  @override
  String? get answerText;
  @override
  SiqFileFileObject? get answerFile;

  /// Create a copy of SiqFileQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileQuestionImplCopyWith<_$SiqFileQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

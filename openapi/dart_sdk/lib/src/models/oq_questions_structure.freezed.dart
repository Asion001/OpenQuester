// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_questions_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQQuestionsStructure _$OQQuestionsStructureFromJson(Map<String, dynamic> json) {
  return _OQQuestionsStructure.fromJson(json);
}

/// @nodoc
mixin _$OQQuestionsStructure {
  num get price => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get hostHint => throw _privateConstructorUsedError;
  String get playersHint => throw _privateConstructorUsedError;
  String get answerText => throw _privateConstructorUsedError;
  OQQuestionFile get questionFile => throw _privateConstructorUsedError;
  OQAnswerFile get answerFile => throw _privateConstructorUsedError;

  /// Serializes this OQQuestionsStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQQuestionsStructureCopyWith<OQQuestionsStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQQuestionsStructureCopyWith<$Res> {
  factory $OQQuestionsStructureCopyWith(OQQuestionsStructure value,
          $Res Function(OQQuestionsStructure) then) =
      _$OQQuestionsStructureCopyWithImpl<$Res, OQQuestionsStructure>;
  @useResult
  $Res call(
      {num price,
      String type,
      String text,
      String hostHint,
      String playersHint,
      String answerText,
      OQQuestionFile questionFile,
      OQAnswerFile answerFile});

  $OQQuestionFileCopyWith<$Res> get questionFile;
  $OQAnswerFileCopyWith<$Res> get answerFile;
}

/// @nodoc
class _$OQQuestionsStructureCopyWithImpl<$Res,
        $Val extends OQQuestionsStructure>
    implements $OQQuestionsStructureCopyWith<$Res> {
  _$OQQuestionsStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? type = null,
    Object? text = null,
    Object? hostHint = null,
    Object? playersHint = null,
    Object? answerText = null,
    Object? questionFile = null,
    Object? answerFile = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      hostHint: null == hostHint
          ? _value.hostHint
          : hostHint // ignore: cast_nullable_to_non_nullable
              as String,
      playersHint: null == playersHint
          ? _value.playersHint
          : playersHint // ignore: cast_nullable_to_non_nullable
              as String,
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      questionFile: null == questionFile
          ? _value.questionFile
          : questionFile // ignore: cast_nullable_to_non_nullable
              as OQQuestionFile,
      answerFile: null == answerFile
          ? _value.answerFile
          : answerFile // ignore: cast_nullable_to_non_nullable
              as OQAnswerFile,
    ) as $Val);
  }

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQQuestionFileCopyWith<$Res> get questionFile {
    return $OQQuestionFileCopyWith<$Res>(_value.questionFile, (value) {
      return _then(_value.copyWith(questionFile: value) as $Val);
    });
  }

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQAnswerFileCopyWith<$Res> get answerFile {
    return $OQAnswerFileCopyWith<$Res>(_value.answerFile, (value) {
      return _then(_value.copyWith(answerFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OQQuestionsStructureImplCopyWith<$Res>
    implements $OQQuestionsStructureCopyWith<$Res> {
  factory _$$OQQuestionsStructureImplCopyWith(_$OQQuestionsStructureImpl value,
          $Res Function(_$OQQuestionsStructureImpl) then) =
      __$$OQQuestionsStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num price,
      String type,
      String text,
      String hostHint,
      String playersHint,
      String answerText,
      OQQuestionFile questionFile,
      OQAnswerFile answerFile});

  @override
  $OQQuestionFileCopyWith<$Res> get questionFile;
  @override
  $OQAnswerFileCopyWith<$Res> get answerFile;
}

/// @nodoc
class __$$OQQuestionsStructureImplCopyWithImpl<$Res>
    extends _$OQQuestionsStructureCopyWithImpl<$Res, _$OQQuestionsStructureImpl>
    implements _$$OQQuestionsStructureImplCopyWith<$Res> {
  __$$OQQuestionsStructureImplCopyWithImpl(_$OQQuestionsStructureImpl _value,
      $Res Function(_$OQQuestionsStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? type = null,
    Object? text = null,
    Object? hostHint = null,
    Object? playersHint = null,
    Object? answerText = null,
    Object? questionFile = null,
    Object? answerFile = null,
  }) {
    return _then(_$OQQuestionsStructureImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      hostHint: null == hostHint
          ? _value.hostHint
          : hostHint // ignore: cast_nullable_to_non_nullable
              as String,
      playersHint: null == playersHint
          ? _value.playersHint
          : playersHint // ignore: cast_nullable_to_non_nullable
              as String,
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      questionFile: null == questionFile
          ? _value.questionFile
          : questionFile // ignore: cast_nullable_to_non_nullable
              as OQQuestionFile,
      answerFile: null == answerFile
          ? _value.answerFile
          : answerFile // ignore: cast_nullable_to_non_nullable
              as OQAnswerFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQQuestionsStructureImpl implements _OQQuestionsStructure {
  const _$OQQuestionsStructureImpl(
      {required this.price,
      required this.type,
      required this.text,
      required this.hostHint,
      required this.playersHint,
      required this.answerText,
      required this.questionFile,
      required this.answerFile});

  factory _$OQQuestionsStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQQuestionsStructureImplFromJson(json);

  @override
  final num price;
  @override
  final String type;
  @override
  final String text;
  @override
  final String hostHint;
  @override
  final String playersHint;
  @override
  final String answerText;
  @override
  final OQQuestionFile questionFile;
  @override
  final OQAnswerFile answerFile;

  @override
  String toString() {
    return 'OQQuestionsStructure(price: $price, type: $type, text: $text, hostHint: $hostHint, playersHint: $playersHint, answerText: $answerText, questionFile: $questionFile, answerFile: $answerFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQQuestionsStructureImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.hostHint, hostHint) ||
                other.hostHint == hostHint) &&
            (identical(other.playersHint, playersHint) ||
                other.playersHint == playersHint) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.questionFile, questionFile) ||
                other.questionFile == questionFile) &&
            (identical(other.answerFile, answerFile) ||
                other.answerFile == answerFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, type, text, hostHint,
      playersHint, answerText, questionFile, answerFile);

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQQuestionsStructureImplCopyWith<_$OQQuestionsStructureImpl>
      get copyWith =>
          __$$OQQuestionsStructureImplCopyWithImpl<_$OQQuestionsStructureImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQQuestionsStructureImplToJson(
      this,
    );
  }
}

abstract class _OQQuestionsStructure implements OQQuestionsStructure {
  const factory _OQQuestionsStructure(
      {required final num price,
      required final String type,
      required final String text,
      required final String hostHint,
      required final String playersHint,
      required final String answerText,
      required final OQQuestionFile questionFile,
      required final OQAnswerFile answerFile}) = _$OQQuestionsStructureImpl;

  factory _OQQuestionsStructure.fromJson(Map<String, dynamic> json) =
      _$OQQuestionsStructureImpl.fromJson;

  @override
  num get price;
  @override
  String get type;
  @override
  String get text;
  @override
  String get hostHint;
  @override
  String get playersHint;
  @override
  String get answerText;
  @override
  OQQuestionFile get questionFile;
  @override
  OQAnswerFile get answerFile;

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQQuestionsStructureImplCopyWith<_$OQQuestionsStructureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

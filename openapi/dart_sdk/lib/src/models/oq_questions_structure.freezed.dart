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
  int get price => throw _privateConstructorUsedError;
  OQQuestionsStructureType get type => throw _privateConstructorUsedError;
  String get hostHint => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get playersHint => throw _privateConstructorUsedError;
  String? get answerText => throw _privateConstructorUsedError;
  OQFile? get questionFile => throw _privateConstructorUsedError;
  OQFile? get answerFile => throw _privateConstructorUsedError;

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
      {int price,
      OQQuestionsStructureType type,
      String hostHint,
      String? text,
      String? playersHint,
      String? answerText,
      OQFile? questionFile,
      OQFile? answerFile});

  $OQFileCopyWith<$Res>? get questionFile;
  $OQFileCopyWith<$Res>? get answerFile;
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
    Object? hostHint = null,
    Object? text = freezed,
    Object? playersHint = freezed,
    Object? answerText = freezed,
    Object? questionFile = freezed,
    Object? answerFile = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OQQuestionsStructureType,
      hostHint: null == hostHint
          ? _value.hostHint
          : hostHint // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      playersHint: freezed == playersHint
          ? _value.playersHint
          : playersHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFile: freezed == questionFile
          ? _value.questionFile
          : questionFile // ignore: cast_nullable_to_non_nullable
              as OQFile?,
      answerFile: freezed == answerFile
          ? _value.answerFile
          : answerFile // ignore: cast_nullable_to_non_nullable
              as OQFile?,
    ) as $Val);
  }

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQFileCopyWith<$Res>? get questionFile {
    if (_value.questionFile == null) {
      return null;
    }

    return $OQFileCopyWith<$Res>(_value.questionFile!, (value) {
      return _then(_value.copyWith(questionFile: value) as $Val);
    });
  }

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQFileCopyWith<$Res>? get answerFile {
    if (_value.answerFile == null) {
      return null;
    }

    return $OQFileCopyWith<$Res>(_value.answerFile!, (value) {
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
      {int price,
      OQQuestionsStructureType type,
      String hostHint,
      String? text,
      String? playersHint,
      String? answerText,
      OQFile? questionFile,
      OQFile? answerFile});

  @override
  $OQFileCopyWith<$Res>? get questionFile;
  @override
  $OQFileCopyWith<$Res>? get answerFile;
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
    Object? hostHint = null,
    Object? text = freezed,
    Object? playersHint = freezed,
    Object? answerText = freezed,
    Object? questionFile = freezed,
    Object? answerFile = freezed,
  }) {
    return _then(_$OQQuestionsStructureImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OQQuestionsStructureType,
      hostHint: null == hostHint
          ? _value.hostHint
          : hostHint // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      playersHint: freezed == playersHint
          ? _value.playersHint
          : playersHint // ignore: cast_nullable_to_non_nullable
              as String?,
      answerText: freezed == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String?,
      questionFile: freezed == questionFile
          ? _value.questionFile
          : questionFile // ignore: cast_nullable_to_non_nullable
              as OQFile?,
      answerFile: freezed == answerFile
          ? _value.answerFile
          : answerFile // ignore: cast_nullable_to_non_nullable
              as OQFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQQuestionsStructureImpl implements _OQQuestionsStructure {
  const _$OQQuestionsStructureImpl(
      {required this.price,
      required this.type,
      required this.hostHint,
      this.text,
      this.playersHint,
      this.answerText,
      this.questionFile,
      this.answerFile});

  factory _$OQQuestionsStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQQuestionsStructureImplFromJson(json);

  @override
  final int price;
  @override
  final OQQuestionsStructureType type;
  @override
  final String hostHint;
  @override
  final String? text;
  @override
  final String? playersHint;
  @override
  final String? answerText;
  @override
  final OQFile? questionFile;
  @override
  final OQFile? answerFile;

  @override
  String toString() {
    return 'OQQuestionsStructure(price: $price, type: $type, hostHint: $hostHint, text: $text, playersHint: $playersHint, answerText: $answerText, questionFile: $questionFile, answerFile: $answerFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQQuestionsStructureImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hostHint, hostHint) ||
                other.hostHint == hostHint) &&
            (identical(other.text, text) || other.text == text) &&
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
  int get hashCode => Object.hash(runtimeType, price, type, hostHint, text,
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
      {required final int price,
      required final OQQuestionsStructureType type,
      required final String hostHint,
      final String? text,
      final String? playersHint,
      final String? answerText,
      final OQFile? questionFile,
      final OQFile? answerFile}) = _$OQQuestionsStructureImpl;

  factory _OQQuestionsStructure.fromJson(Map<String, dynamic> json) =
      _$OQQuestionsStructureImpl.fromJson;

  @override
  int get price;
  @override
  OQQuestionsStructureType get type;
  @override
  String get hostHint;
  @override
  String? get text;
  @override
  String? get playersHint;
  @override
  String? get answerText;
  @override
  OQFile? get questionFile;
  @override
  OQFile? get answerFile;

  /// Create a copy of OQQuestionsStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQQuestionsStructureImplCopyWith<_$OQQuestionsStructureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

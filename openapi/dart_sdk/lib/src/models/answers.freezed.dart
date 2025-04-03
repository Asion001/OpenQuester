// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  int? get id => throw _privateConstructorUsedError;

  /// Text of the answer option
  String? get text => throw _privateConstructorUsedError;

  /// File associated with the answer option
  FileItem? get file => throw _privateConstructorUsedError;

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res, Answers>;
  @useResult
  $Res call({int? id, String? text, FileItem? file});

  $FileItemCopyWith<$Res>? get file;
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res, $Val extends Answers>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem?,
    ) as $Val);
  }

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileItemCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $FileItemCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnswersImplCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$AnswersImplCopyWith(
          _$AnswersImpl value, $Res Function(_$AnswersImpl) then) =
      __$$AnswersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? text, FileItem? file});

  @override
  $FileItemCopyWith<$Res>? get file;
}

/// @nodoc
class __$$AnswersImplCopyWithImpl<$Res>
    extends _$AnswersCopyWithImpl<$Res, _$AnswersImpl>
    implements _$$AnswersImplCopyWith<$Res> {
  __$$AnswersImplCopyWithImpl(
      _$AnswersImpl _value, $Res Function(_$AnswersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? file = freezed,
  }) {
    return _then(_$AnswersImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswersImpl implements _Answers {
  const _$AnswersImpl({required this.id, required this.text, this.file});

  factory _$AnswersImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswersImplFromJson(json);

  @override
  final int? id;

  /// Text of the answer option
  @override
  final String? text;

  /// File associated with the answer option
  @override
  final FileItem? file;

  @override
  String toString() {
    return 'Answers(id: $id, text: $text, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, file);

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswersImplCopyWith<_$AnswersImpl> get copyWith =>
      __$$AnswersImplCopyWithImpl<_$AnswersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswersImplToJson(
      this,
    );
  }
}

abstract class _Answers implements Answers {
  const factory _Answers(
      {required final int? id,
      required final String? text,
      final FileItem? file}) = _$AnswersImpl;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$AnswersImpl.fromJson;

  @override
  int? get id;

  /// Text of the answer option
  @override
  String? get text;

  /// File associated with the answer option
  @override
  FileItem? get file;

  /// Create a copy of Answers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswersImplCopyWith<_$AnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

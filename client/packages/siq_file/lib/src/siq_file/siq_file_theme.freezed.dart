// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SiqFileTheme _$SiqFileThemeFromJson(Map<String, dynamic> json) {
  return _SiqFileTheme.fromJson(json);
}

/// @nodoc
mixin _$SiqFileTheme {
  String get name => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<SiqFileQuestion> get questions => throw _privateConstructorUsedError;

  /// Serializes this SiqFileTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFileTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileThemeCopyWith<SiqFileTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileThemeCopyWith<$Res> {
  factory $SiqFileThemeCopyWith(
    SiqFileTheme value,
    $Res Function(SiqFileTheme) then,
  ) = _$SiqFileThemeCopyWithImpl<$Res, SiqFileTheme>;
  @useResult
  $Res call({String name, String? comment, List<SiqFileQuestion> questions});
}

/// @nodoc
class _$SiqFileThemeCopyWithImpl<$Res, $Val extends SiqFileTheme>
    implements $SiqFileThemeCopyWith<$Res> {
  _$SiqFileThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFileTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? comment = freezed,
    Object? questions = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            questions:
                null == questions
                    ? _value.questions
                    : questions // ignore: cast_nullable_to_non_nullable
                        as List<SiqFileQuestion>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SiqFileThemeImplCopyWith<$Res>
    implements $SiqFileThemeCopyWith<$Res> {
  factory _$$SiqFileThemeImplCopyWith(
    _$SiqFileThemeImpl value,
    $Res Function(_$SiqFileThemeImpl) then,
  ) = __$$SiqFileThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? comment, List<SiqFileQuestion> questions});
}

/// @nodoc
class __$$SiqFileThemeImplCopyWithImpl<$Res>
    extends _$SiqFileThemeCopyWithImpl<$Res, _$SiqFileThemeImpl>
    implements _$$SiqFileThemeImplCopyWith<$Res> {
  __$$SiqFileThemeImplCopyWithImpl(
    _$SiqFileThemeImpl _value,
    $Res Function(_$SiqFileThemeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiqFileTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? comment = freezed,
    Object? questions = null,
  }) {
    return _then(
      _$SiqFileThemeImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        questions:
            null == questions
                ? _value._questions
                : questions // ignore: cast_nullable_to_non_nullable
                    as List<SiqFileQuestion>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileThemeImpl implements _SiqFileTheme {
  _$SiqFileThemeImpl({
    required this.name,
    this.comment,
    final List<SiqFileQuestion> questions = const [],
  }) : _questions = questions;

  factory _$SiqFileThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileThemeImplFromJson(json);

  @override
  final String name;
  @override
  final String? comment;
  final List<SiqFileQuestion> _questions;
  @override
  @JsonKey()
  List<SiqFileQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'SiqFileTheme(name: $name, comment: $comment, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(
              other._questions,
              _questions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    comment,
    const DeepCollectionEquality().hash(_questions),
  );

  /// Create a copy of SiqFileTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileThemeImplCopyWith<_$SiqFileThemeImpl> get copyWith =>
      __$$SiqFileThemeImplCopyWithImpl<_$SiqFileThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileThemeImplToJson(this);
  }
}

abstract class _SiqFileTheme implements SiqFileTheme {
  factory _SiqFileTheme({
    required final String name,
    final String? comment,
    final List<SiqFileQuestion> questions,
  }) = _$SiqFileThemeImpl;

  factory _SiqFileTheme.fromJson(Map<String, dynamic> json) =
      _$SiqFileThemeImpl.fromJson;

  @override
  String get name;
  @override
  String? get comment;
  @override
  List<SiqFileQuestion> get questions;

  /// Create a copy of SiqFileTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileThemeImplCopyWith<_$SiqFileThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

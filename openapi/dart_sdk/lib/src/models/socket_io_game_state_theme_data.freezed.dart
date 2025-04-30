// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_state_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameStateThemeData _$SocketIOGameStateThemeDataFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameStateThemeData.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameStateThemeData {
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<SocketIOGameStateQuestionData> get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameStateThemeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameStateThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameStateThemeDataCopyWith<SocketIOGameStateThemeData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameStateThemeDataCopyWith<$Res> {
  factory $SocketIOGameStateThemeDataCopyWith(SocketIOGameStateThemeData value,
          $Res Function(SocketIOGameStateThemeData) then) =
      _$SocketIOGameStateThemeDataCopyWithImpl<$Res,
          SocketIOGameStateThemeData>;
  @useResult
  $Res call(
      {int order,
      String name,
      String? description,
      List<SocketIOGameStateQuestionData> questions});
}

/// @nodoc
class _$SocketIOGameStateThemeDataCopyWithImpl<$Res,
        $Val extends SocketIOGameStateThemeData>
    implements $SocketIOGameStateThemeDataCopyWith<$Res> {
  _$SocketIOGameStateThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameStateThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateQuestionData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOGameStateThemeDataImplCopyWith<$Res>
    implements $SocketIOGameStateThemeDataCopyWith<$Res> {
  factory _$$SocketIOGameStateThemeDataImplCopyWith(
          _$SocketIOGameStateThemeDataImpl value,
          $Res Function(_$SocketIOGameStateThemeDataImpl) then) =
      __$$SocketIOGameStateThemeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      String name,
      String? description,
      List<SocketIOGameStateQuestionData> questions});
}

/// @nodoc
class __$$SocketIOGameStateThemeDataImplCopyWithImpl<$Res>
    extends _$SocketIOGameStateThemeDataCopyWithImpl<$Res,
        _$SocketIOGameStateThemeDataImpl>
    implements _$$SocketIOGameStateThemeDataImplCopyWith<$Res> {
  __$$SocketIOGameStateThemeDataImplCopyWithImpl(
      _$SocketIOGameStateThemeDataImpl _value,
      $Res Function(_$SocketIOGameStateThemeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameStateThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? questions = null,
  }) {
    return _then(_$SocketIOGameStateThemeDataImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<SocketIOGameStateQuestionData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameStateThemeDataImpl implements _SocketIOGameStateThemeData {
  const _$SocketIOGameStateThemeDataImpl(
      {required this.order,
      required this.name,
      required this.description,
      required final List<SocketIOGameStateQuestionData> questions})
      : _questions = questions;

  factory _$SocketIOGameStateThemeDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOGameStateThemeDataImplFromJson(json);

  @override
  final int order;
  @override
  final String name;
  @override
  final String? description;
  final List<SocketIOGameStateQuestionData> _questions;
  @override
  List<SocketIOGameStateQuestionData> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'SocketIOGameStateThemeData(order: $order, name: $name, description: $description, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameStateThemeDataImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, description,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of SocketIOGameStateThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameStateThemeDataImplCopyWith<_$SocketIOGameStateThemeDataImpl>
      get copyWith => __$$SocketIOGameStateThemeDataImplCopyWithImpl<
          _$SocketIOGameStateThemeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameStateThemeDataImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameStateThemeData
    implements SocketIOGameStateThemeData {
  const factory _SocketIOGameStateThemeData(
          {required final int order,
          required final String name,
          required final String? description,
          required final List<SocketIOGameStateQuestionData> questions}) =
      _$SocketIOGameStateThemeDataImpl;

  factory _SocketIOGameStateThemeData.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameStateThemeDataImpl.fromJson;

  @override
  int get order;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<SocketIOGameStateQuestionData> get questions;

  /// Create a copy of SocketIOGameStateThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameStateThemeDataImplCopyWith<_$SocketIOGameStateThemeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

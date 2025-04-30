// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_state_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameStateQuestionData _$SocketIOGameStateQuestionDataFromJson(
    Map<String, dynamic> json) {
  return _SocketIOGameStateQuestionData.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameStateQuestionData {
  int get order => throw _privateConstructorUsedError;

  /// Price is null only if price is hidden
  int? get price => throw _privateConstructorUsedError;

  /// Comment that clarify what have to be answered on this question
  String? get questionComment => throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameStateQuestionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameStateQuestionDataCopyWith<SocketIOGameStateQuestionData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameStateQuestionDataCopyWith<$Res> {
  factory $SocketIOGameStateQuestionDataCopyWith(
          SocketIOGameStateQuestionData value,
          $Res Function(SocketIOGameStateQuestionData) then) =
      _$SocketIOGameStateQuestionDataCopyWithImpl<$Res,
          SocketIOGameStateQuestionData>;
  @useResult
  $Res call({int order, int? price, String? questionComment});
}

/// @nodoc
class _$SocketIOGameStateQuestionDataCopyWithImpl<$Res,
        $Val extends SocketIOGameStateQuestionData>
    implements $SocketIOGameStateQuestionDataCopyWith<$Res> {
  _$SocketIOGameStateQuestionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? price = freezed,
    Object? questionComment = freezed,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      questionComment: freezed == questionComment
          ? _value.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOGameStateQuestionDataImplCopyWith<$Res>
    implements $SocketIOGameStateQuestionDataCopyWith<$Res> {
  factory _$$SocketIOGameStateQuestionDataImplCopyWith(
          _$SocketIOGameStateQuestionDataImpl value,
          $Res Function(_$SocketIOGameStateQuestionDataImpl) then) =
      __$$SocketIOGameStateQuestionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, int? price, String? questionComment});
}

/// @nodoc
class __$$SocketIOGameStateQuestionDataImplCopyWithImpl<$Res>
    extends _$SocketIOGameStateQuestionDataCopyWithImpl<$Res,
        _$SocketIOGameStateQuestionDataImpl>
    implements _$$SocketIOGameStateQuestionDataImplCopyWith<$Res> {
  __$$SocketIOGameStateQuestionDataImplCopyWithImpl(
      _$SocketIOGameStateQuestionDataImpl _value,
      $Res Function(_$SocketIOGameStateQuestionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? price = freezed,
    Object? questionComment = freezed,
  }) {
    return _then(_$SocketIOGameStateQuestionDataImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      questionComment: freezed == questionComment
          ? _value.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameStateQuestionDataImpl
    implements _SocketIOGameStateQuestionData {
  const _$SocketIOGameStateQuestionDataImpl(
      {required this.order,
      required this.price,
      required this.questionComment});

  factory _$SocketIOGameStateQuestionDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SocketIOGameStateQuestionDataImplFromJson(json);

  @override
  final int order;

  /// Price is null only if price is hidden
  @override
  final int? price;

  /// Comment that clarify what have to be answered on this question
  @override
  final String? questionComment;

  @override
  String toString() {
    return 'SocketIOGameStateQuestionData(order: $order, price: $price, questionComment: $questionComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameStateQuestionDataImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, price, questionComment);

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameStateQuestionDataImplCopyWith<
          _$SocketIOGameStateQuestionDataImpl>
      get copyWith => __$$SocketIOGameStateQuestionDataImplCopyWithImpl<
          _$SocketIOGameStateQuestionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameStateQuestionDataImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameStateQuestionData
    implements SocketIOGameStateQuestionData {
  const factory _SocketIOGameStateQuestionData(
          {required final int order,
          required final int? price,
          required final String? questionComment}) =
      _$SocketIOGameStateQuestionDataImpl;

  factory _SocketIOGameStateQuestionData.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameStateQuestionDataImpl.fromJson;

  @override
  int get order;

  /// Price is null only if price is hidden
  @override
  int? get price;

  /// Comment that clarify what have to be answered on this question
  @override
  String? get questionComment;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameStateQuestionDataImplCopyWith<
          _$SocketIOGameStateQuestionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

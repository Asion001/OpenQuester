// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_state_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketIOGameStateQuestionData {
  PackageEntitiesOrder get order;

  /// Price is null only if price is hidden
  int? get price;

  /// Comment that clarify what have to be answered on this question
  String? get questionComment;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketIOGameStateQuestionDataCopyWith<SocketIOGameStateQuestionData>
      get copyWith => _$SocketIOGameStateQuestionDataCopyWithImpl<
              SocketIOGameStateQuestionData>(
          this as SocketIOGameStateQuestionData, _$identity);

  /// Serializes this SocketIOGameStateQuestionData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketIOGameStateQuestionData &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, price, questionComment);

  @override
  String toString() {
    return 'SocketIOGameStateQuestionData(order: $order, price: $price, questionComment: $questionComment)';
  }
}

/// @nodoc
abstract mixin class $SocketIOGameStateQuestionDataCopyWith<$Res> {
  factory $SocketIOGameStateQuestionDataCopyWith(
          SocketIOGameStateQuestionData value,
          $Res Function(SocketIOGameStateQuestionData) _then) =
      _$SocketIOGameStateQuestionDataCopyWithImpl;
  @useResult
  $Res call({PackageEntitiesOrder order, int? price, String? questionComment});
}

/// @nodoc
class _$SocketIOGameStateQuestionDataCopyWithImpl<$Res>
    implements $SocketIOGameStateQuestionDataCopyWith<$Res> {
  _$SocketIOGameStateQuestionDataCopyWithImpl(this._self, this._then);

  final SocketIOGameStateQuestionData _self;
  final $Res Function(SocketIOGameStateQuestionData) _then;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? price = freezed,
    Object? questionComment = freezed,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SocketIOGameStateQuestionData implements SocketIOGameStateQuestionData {
  const _SocketIOGameStateQuestionData(
      {required this.order,
      required this.price,
      required this.questionComment});
  factory _SocketIOGameStateQuestionData.fromJson(Map<String, dynamic> json) =>
      _$SocketIOGameStateQuestionDataFromJson(json);

  @override
  final PackageEntitiesOrder order;

  /// Price is null only if price is hidden
  @override
  final int? price;

  /// Comment that clarify what have to be answered on this question
  @override
  final String? questionComment;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketIOGameStateQuestionDataCopyWith<_SocketIOGameStateQuestionData>
      get copyWith => __$SocketIOGameStateQuestionDataCopyWithImpl<
          _SocketIOGameStateQuestionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocketIOGameStateQuestionDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIOGameStateQuestionData &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.questionComment, questionComment) ||
                other.questionComment == questionComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, price, questionComment);

  @override
  String toString() {
    return 'SocketIOGameStateQuestionData(order: $order, price: $price, questionComment: $questionComment)';
  }
}

/// @nodoc
abstract mixin class _$SocketIOGameStateQuestionDataCopyWith<$Res>
    implements $SocketIOGameStateQuestionDataCopyWith<$Res> {
  factory _$SocketIOGameStateQuestionDataCopyWith(
          _SocketIOGameStateQuestionData value,
          $Res Function(_SocketIOGameStateQuestionData) _then) =
      __$SocketIOGameStateQuestionDataCopyWithImpl;
  @override
  @useResult
  $Res call({PackageEntitiesOrder order, int? price, String? questionComment});
}

/// @nodoc
class __$SocketIOGameStateQuestionDataCopyWithImpl<$Res>
    implements _$SocketIOGameStateQuestionDataCopyWith<$Res> {
  __$SocketIOGameStateQuestionDataCopyWithImpl(this._self, this._then);

  final _SocketIOGameStateQuestionData _self;
  final $Res Function(_SocketIOGameStateQuestionData) _then;

  /// Create a copy of SocketIOGameStateQuestionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? price = freezed,
    Object? questionComment = freezed,
  }) {
    return _then(_SocketIOGameStateQuestionData(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as PackageEntitiesOrder,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      questionComment: freezed == questionComment
          ? _self.questionComment
          : questionComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

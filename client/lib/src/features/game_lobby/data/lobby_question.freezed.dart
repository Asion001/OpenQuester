// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LobbyQuestion {
  int get price;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LobbyQuestionCopyWith<LobbyQuestion> get copyWith =>
      _$LobbyQuestionCopyWithImpl<LobbyQuestion>(
          this as LobbyQuestion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LobbyQuestion &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @override
  String toString() {
    return 'LobbyQuestion(price: $price)';
  }
}

/// @nodoc
abstract mixin class $LobbyQuestionCopyWith<$Res> {
  factory $LobbyQuestionCopyWith(
          LobbyQuestion value, $Res Function(LobbyQuestion) _then) =
      _$LobbyQuestionCopyWithImpl;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$LobbyQuestionCopyWithImpl<$Res>
    implements $LobbyQuestionCopyWith<$Res> {
  _$LobbyQuestionCopyWithImpl(this._self, this._then);

  final LobbyQuestion _self;
  final $Res Function(LobbyQuestion) _then;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_self.copyWith(
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _LobbyQuestion implements LobbyQuestion {
  const _LobbyQuestion({required this.price});

  @override
  final int price;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LobbyQuestionCopyWith<_LobbyQuestion> get copyWith =>
      __$LobbyQuestionCopyWithImpl<_LobbyQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LobbyQuestion &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @override
  String toString() {
    return 'LobbyQuestion(price: $price)';
  }
}

/// @nodoc
abstract mixin class _$LobbyQuestionCopyWith<$Res>
    implements $LobbyQuestionCopyWith<$Res> {
  factory _$LobbyQuestionCopyWith(
          _LobbyQuestion value, $Res Function(_LobbyQuestion) _then) =
      __$LobbyQuestionCopyWithImpl;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$LobbyQuestionCopyWithImpl<$Res>
    implements _$LobbyQuestionCopyWith<$Res> {
  __$LobbyQuestionCopyWithImpl(this._self, this._then);

  final _LobbyQuestion _self;
  final $Res Function(_LobbyQuestion) _then;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? price = null,
  }) {
    return _then(_LobbyQuestion(
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

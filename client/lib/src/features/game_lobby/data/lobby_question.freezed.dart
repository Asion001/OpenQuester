// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LobbyQuestion {
  int get price => throw _privateConstructorUsedError;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LobbyQuestionCopyWith<LobbyQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyQuestionCopyWith<$Res> {
  factory $LobbyQuestionCopyWith(
          LobbyQuestion value, $Res Function(LobbyQuestion) then) =
      _$LobbyQuestionCopyWithImpl<$Res, LobbyQuestion>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$LobbyQuestionCopyWithImpl<$Res, $Val extends LobbyQuestion>
    implements $LobbyQuestionCopyWith<$Res> {
  _$LobbyQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LobbyQuestionImplCopyWith<$Res>
    implements $LobbyQuestionCopyWith<$Res> {
  factory _$$LobbyQuestionImplCopyWith(
          _$LobbyQuestionImpl value, $Res Function(_$LobbyQuestionImpl) then) =
      __$$LobbyQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$LobbyQuestionImplCopyWithImpl<$Res>
    extends _$LobbyQuestionCopyWithImpl<$Res, _$LobbyQuestionImpl>
    implements _$$LobbyQuestionImplCopyWith<$Res> {
  __$$LobbyQuestionImplCopyWithImpl(
      _$LobbyQuestionImpl _value, $Res Function(_$LobbyQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$LobbyQuestionImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LobbyQuestionImpl implements _LobbyQuestion {
  const _$LobbyQuestionImpl({required this.price});

  @override
  final int price;

  @override
  String toString() {
    return 'LobbyQuestion(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyQuestionImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LobbyQuestionImplCopyWith<_$LobbyQuestionImpl> get copyWith =>
      __$$LobbyQuestionImplCopyWithImpl<_$LobbyQuestionImpl>(this, _$identity);
}

abstract class _LobbyQuestion implements LobbyQuestion {
  const factory _LobbyQuestion({required final int price}) =
      _$LobbyQuestionImpl;

  @override
  int get price;

  /// Create a copy of LobbyQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LobbyQuestionImplCopyWith<_$LobbyQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

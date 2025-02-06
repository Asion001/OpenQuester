// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_not_found_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameNotFoundResponse _$GameNotFoundResponseFromJson(Map<String, dynamic> json) {
  return _GameNotFoundResponse.fromJson(json);
}

/// @nodoc
mixin _$GameNotFoundResponse {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this GameNotFoundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameNotFoundResponseCopyWith<GameNotFoundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameNotFoundResponseCopyWith<$Res> {
  factory $GameNotFoundResponseCopyWith(GameNotFoundResponse value,
          $Res Function(GameNotFoundResponse) then) =
      _$GameNotFoundResponseCopyWithImpl<$Res, GameNotFoundResponse>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GameNotFoundResponseCopyWithImpl<$Res,
        $Val extends GameNotFoundResponse>
    implements $GameNotFoundResponseCopyWith<$Res> {
  _$GameNotFoundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameNotFoundResponseImplCopyWith<$Res>
    implements $GameNotFoundResponseCopyWith<$Res> {
  factory _$$GameNotFoundResponseImplCopyWith(_$GameNotFoundResponseImpl value,
          $Res Function(_$GameNotFoundResponseImpl) then) =
      __$$GameNotFoundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GameNotFoundResponseImplCopyWithImpl<$Res>
    extends _$GameNotFoundResponseCopyWithImpl<$Res, _$GameNotFoundResponseImpl>
    implements _$$GameNotFoundResponseImplCopyWith<$Res> {
  __$$GameNotFoundResponseImplCopyWithImpl(_$GameNotFoundResponseImpl _value,
      $Res Function(_$GameNotFoundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GameNotFoundResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameNotFoundResponseImpl implements _GameNotFoundResponse {
  const _$GameNotFoundResponseImpl({required this.error});

  factory _$GameNotFoundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameNotFoundResponseImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'GameNotFoundResponse(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameNotFoundResponseImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GameNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameNotFoundResponseImplCopyWith<_$GameNotFoundResponseImpl>
      get copyWith =>
          __$$GameNotFoundResponseImplCopyWithImpl<_$GameNotFoundResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameNotFoundResponseImplToJson(
      this,
    );
  }
}

abstract class _GameNotFoundResponse implements GameNotFoundResponse {
  const factory _GameNotFoundResponse({required final String error}) =
      _$GameNotFoundResponseImpl;

  factory _GameNotFoundResponse.fromJson(Map<String, dynamic> json) =
      _$GameNotFoundResponseImpl.fromJson;

  @override
  String get error;

  /// Create a copy of GameNotFoundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameNotFoundResponseImplCopyWith<_$GameNotFoundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

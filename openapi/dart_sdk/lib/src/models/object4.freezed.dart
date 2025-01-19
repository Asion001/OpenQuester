// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object4.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Object4 _$Object4FromJson(Map<String, dynamic> json) {
  return _Object4.fromJson(json);
}

/// @nodoc
mixin _$Object4 {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this Object4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Object4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Object4CopyWith<Object4> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Object4CopyWith<$Res> {
  factory $Object4CopyWith(Object4 value, $Res Function(Object4) then) =
      _$Object4CopyWithImpl<$Res, Object4>;
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$Object4CopyWithImpl<$Res, $Val extends Object4>
    implements $Object4CopyWith<$Res> {
  _$Object4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Object4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Object4ImplCopyWith<$Res> implements $Object4CopyWith<$Res> {
  factory _$$Object4ImplCopyWith(
          _$Object4Impl value, $Res Function(_$Object4Impl) then) =
      __$$Object4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$Object4ImplCopyWithImpl<$Res>
    extends _$Object4CopyWithImpl<$Res, _$Object4Impl>
    implements _$$Object4ImplCopyWith<$Res> {
  __$$Object4ImplCopyWithImpl(
      _$Object4Impl _value, $Res Function(_$Object4Impl) _then)
      : super(_value, _then);

  /// Create a copy of Object4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$Object4Impl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Object4Impl implements _Object4 {
  const _$Object4Impl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$Object4Impl.fromJson(Map<String, dynamic> json) =>
      _$$Object4ImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'Object4(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Object4Impl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of Object4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Object4ImplCopyWith<_$Object4Impl> get copyWith =>
      __$$Object4ImplCopyWithImpl<_$Object4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Object4ImplToJson(
      this,
    );
  }
}

abstract class _Object4 implements Object4 {
  const factory _Object4(
      {@JsonKey(name: 'refresh_token')
      required final String refreshToken}) = _$Object4Impl;

  factory _Object4.fromJson(Map<String, dynamic> json) = _$Object4Impl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of Object4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Object4ImplCopyWith<_$Object4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

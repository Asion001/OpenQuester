// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object0.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Object0 _$Object0FromJson(Map<String, dynamic> json) {
  return _Object0.fromJson(json);
}

/// @nodoc
mixin _$Object0 {
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this Object0 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Object0
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Object0CopyWith<Object0> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Object0CopyWith<$Res> {
  factory $Object0CopyWith(Object0 value, $Res Function(Object0) then) =
      _$Object0CopyWithImpl<$Res, Object0>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$Object0CopyWithImpl<$Res, $Val extends Object0>
    implements $Object0CopyWith<$Res> {
  _$Object0CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Object0
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Object0ImplCopyWith<$Res> implements $Object0CopyWith<$Res> {
  factory _$$Object0ImplCopyWith(
          _$Object0Impl value, $Res Function(_$Object0Impl) then) =
      __$$Object0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$Object0ImplCopyWithImpl<$Res>
    extends _$Object0CopyWithImpl<$Res, _$Object0Impl>
    implements _$$Object0ImplCopyWith<$Res> {
  __$$Object0ImplCopyWithImpl(
      _$Object0Impl _value, $Res Function(_$Object0Impl) _then)
      : super(_value, _then);

  /// Create a copy of Object0
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$Object0Impl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Object0Impl implements _Object0 {
  const _$Object0Impl({required this.filename});

  factory _$Object0Impl.fromJson(Map<String, dynamic> json) =>
      _$$Object0ImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'Object0(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Object0Impl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  /// Create a copy of Object0
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Object0ImplCopyWith<_$Object0Impl> get copyWith =>
      __$$Object0ImplCopyWithImpl<_$Object0Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Object0ImplToJson(
      this,
    );
  }
}

abstract class _Object0 implements Object0 {
  const factory _Object0({required final String filename}) = _$Object0Impl;

  factory _Object0.fromJson(Map<String, dynamic> json) = _$Object0Impl.fromJson;

  @override
  String get filename;

  /// Create a copy of Object0
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Object0ImplCopyWith<_$Object0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Object2 _$Object2FromJson(Map<String, dynamic> json) {
  return _Object2.fromJson(json);
}

/// @nodoc
mixin _$Object2 {
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this Object2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Object2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Object2CopyWith<Object2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Object2CopyWith<$Res> {
  factory $Object2CopyWith(Object2 value, $Res Function(Object2) then) =
      _$Object2CopyWithImpl<$Res, Object2>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$Object2CopyWithImpl<$Res, $Val extends Object2>
    implements $Object2CopyWith<$Res> {
  _$Object2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Object2
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
abstract class _$$Object2ImplCopyWith<$Res> implements $Object2CopyWith<$Res> {
  factory _$$Object2ImplCopyWith(
          _$Object2Impl value, $Res Function(_$Object2Impl) then) =
      __$$Object2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$Object2ImplCopyWithImpl<$Res>
    extends _$Object2CopyWithImpl<$Res, _$Object2Impl>
    implements _$$Object2ImplCopyWith<$Res> {
  __$$Object2ImplCopyWithImpl(
      _$Object2Impl _value, $Res Function(_$Object2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Object2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$Object2Impl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Object2Impl implements _Object2 {
  const _$Object2Impl({required this.filename});

  factory _$Object2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Object2ImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'Object2(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Object2Impl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  /// Create a copy of Object2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Object2ImplCopyWith<_$Object2Impl> get copyWith =>
      __$$Object2ImplCopyWithImpl<_$Object2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Object2ImplToJson(
      this,
    );
  }
}

abstract class _Object2 implements Object2 {
  const factory _Object2({required final String filename}) = _$Object2Impl;

  factory _Object2.fromJson(Map<String, dynamic> json) = _$Object2Impl.fromJson;

  @override
  String get filename;

  /// Create a copy of Object2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Object2ImplCopyWith<_$Object2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

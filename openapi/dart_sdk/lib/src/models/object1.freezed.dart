// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Object1 _$Object1FromJson(Map<String, dynamic> json) {
  return _Object1.fromJson(json);
}

/// @nodoc
mixin _$Object1 {
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this Object1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Object1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Object1CopyWith<Object1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Object1CopyWith<$Res> {
  factory $Object1CopyWith(Object1 value, $Res Function(Object1) then) =
      _$Object1CopyWithImpl<$Res, Object1>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class _$Object1CopyWithImpl<$Res, $Val extends Object1>
    implements $Object1CopyWith<$Res> {
  _$Object1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Object1
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
abstract class _$$Object1ImplCopyWith<$Res> implements $Object1CopyWith<$Res> {
  factory _$$Object1ImplCopyWith(
          _$Object1Impl value, $Res Function(_$Object1Impl) then) =
      __$$Object1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$Object1ImplCopyWithImpl<$Res>
    extends _$Object1CopyWithImpl<$Res, _$Object1Impl>
    implements _$$Object1ImplCopyWith<$Res> {
  __$$Object1ImplCopyWithImpl(
      _$Object1Impl _value, $Res Function(_$Object1Impl) _then)
      : super(_value, _then);

  /// Create a copy of Object1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$Object1Impl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Object1Impl implements _Object1 {
  const _$Object1Impl({required this.filename});

  factory _$Object1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Object1ImplFromJson(json);

  @override
  final String filename;

  @override
  String toString() {
    return 'Object1(filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Object1Impl &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename);

  /// Create a copy of Object1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Object1ImplCopyWith<_$Object1Impl> get copyWith =>
      __$$Object1ImplCopyWithImpl<_$Object1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Object1ImplToJson(
      this,
    );
  }
}

abstract class _Object1 implements Object1 {
  const factory _Object1({required final String filename}) = _$Object1Impl;

  factory _Object1.fromJson(Map<String, dynamic> json) = _$Object1Impl.fromJson;

  @override
  String get filename;

  /// Create a copy of Object1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Object1ImplCopyWith<_$Object1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

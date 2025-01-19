// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Object3 _$Object3FromJson(Map<String, dynamic> json) {
  return _Object3.fromJson(json);
}

/// @nodoc
mixin _$Object3 {
  OQContentStructure get content => throw _privateConstructorUsedError;

  /// Serializes this Object3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Object3CopyWith<Object3> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Object3CopyWith<$Res> {
  factory $Object3CopyWith(Object3 value, $Res Function(Object3) then) =
      _$Object3CopyWithImpl<$Res, Object3>;
  @useResult
  $Res call({OQContentStructure content});

  $OQContentStructureCopyWith<$Res> get content;
}

/// @nodoc
class _$Object3CopyWithImpl<$Res, $Val extends Object3>
    implements $Object3CopyWith<$Res> {
  _$Object3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as OQContentStructure,
    ) as $Val);
  }

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQContentStructureCopyWith<$Res> get content {
    return $OQContentStructureCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Object3ImplCopyWith<$Res> implements $Object3CopyWith<$Res> {
  factory _$$Object3ImplCopyWith(
          _$Object3Impl value, $Res Function(_$Object3Impl) then) =
      __$$Object3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQContentStructure content});

  @override
  $OQContentStructureCopyWith<$Res> get content;
}

/// @nodoc
class __$$Object3ImplCopyWithImpl<$Res>
    extends _$Object3CopyWithImpl<$Res, _$Object3Impl>
    implements _$$Object3ImplCopyWith<$Res> {
  __$$Object3ImplCopyWithImpl(
      _$Object3Impl _value, $Res Function(_$Object3Impl) _then)
      : super(_value, _then);

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$Object3Impl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as OQContentStructure,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Object3Impl implements _Object3 {
  const _$Object3Impl({required this.content});

  factory _$Object3Impl.fromJson(Map<String, dynamic> json) =>
      _$$Object3ImplFromJson(json);

  @override
  final OQContentStructure content;

  @override
  String toString() {
    return 'Object3(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Object3Impl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Object3ImplCopyWith<_$Object3Impl> get copyWith =>
      __$$Object3ImplCopyWithImpl<_$Object3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Object3ImplToJson(
      this,
    );
  }
}

abstract class _Object3 implements Object3 {
  const factory _Object3({required final OQContentStructure content}) =
      _$Object3Impl;

  factory _Object3.fromJson(Map<String, dynamic> json) = _$Object3Impl.fromJson;

  @override
  OQContentStructure get content;

  /// Create a copy of Object3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Object3ImplCopyWith<_$Object3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

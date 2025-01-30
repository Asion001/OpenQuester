// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_info2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageInfo2 _$PageInfo2FromJson(Map<String, dynamic> json) {
  return _PageInfo2.fromJson(json);
}

/// @nodoc
mixin _$PageInfo2 {
  int get total => throw _privateConstructorUsedError;

  /// Serializes this PageInfo2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageInfo2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageInfo2CopyWith<PageInfo2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfo2CopyWith<$Res> {
  factory $PageInfo2CopyWith(PageInfo2 value, $Res Function(PageInfo2) then) =
      _$PageInfo2CopyWithImpl<$Res, PageInfo2>;
  @useResult
  $Res call({int total});
}

/// @nodoc
class _$PageInfo2CopyWithImpl<$Res, $Val extends PageInfo2>
    implements $PageInfo2CopyWith<$Res> {
  _$PageInfo2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageInfo2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageInfo2ImplCopyWith<$Res>
    implements $PageInfo2CopyWith<$Res> {
  factory _$$PageInfo2ImplCopyWith(
          _$PageInfo2Impl value, $Res Function(_$PageInfo2Impl) then) =
      __$$PageInfo2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total});
}

/// @nodoc
class __$$PageInfo2ImplCopyWithImpl<$Res>
    extends _$PageInfo2CopyWithImpl<$Res, _$PageInfo2Impl>
    implements _$$PageInfo2ImplCopyWith<$Res> {
  __$$PageInfo2ImplCopyWithImpl(
      _$PageInfo2Impl _value, $Res Function(_$PageInfo2Impl) _then)
      : super(_value, _then);

  /// Create a copy of PageInfo2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$PageInfo2Impl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageInfo2Impl implements _PageInfo2 {
  const _$PageInfo2Impl({required this.total});

  factory _$PageInfo2Impl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfo2ImplFromJson(json);

  @override
  final int total;

  @override
  String toString() {
    return 'PageInfo2(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfo2Impl &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of PageInfo2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfo2ImplCopyWith<_$PageInfo2Impl> get copyWith =>
      __$$PageInfo2ImplCopyWithImpl<_$PageInfo2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfo2ImplToJson(
      this,
    );
  }
}

abstract class _PageInfo2 implements PageInfo2 {
  const factory _PageInfo2({required final int total}) = _$PageInfo2Impl;

  factory _PageInfo2.fromJson(Map<String, dynamic> json) =
      _$PageInfo2Impl.fromJson;

  @override
  int get total;

  /// Create a copy of PageInfo2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageInfo2ImplCopyWith<_$PageInfo2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

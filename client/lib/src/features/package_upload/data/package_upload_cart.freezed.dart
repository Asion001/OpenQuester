// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_upload_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageUploadCart _$PackageUploadCartFromJson(Map<String, dynamic> json) {
  return _PackageUploadCart.fromJson(json);
}

/// @nodoc
mixin _$PackageUploadCart {
  String get hash => throw _privateConstructorUsedError;

  /// Serializes this PackageUploadCart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageUploadCart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageUploadCartCopyWith<PackageUploadCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageUploadCartCopyWith<$Res> {
  factory $PackageUploadCartCopyWith(
          PackageUploadCart value, $Res Function(PackageUploadCart) then) =
      _$PackageUploadCartCopyWithImpl<$Res, PackageUploadCart>;
  @useResult
  $Res call({String hash});
}

/// @nodoc
class _$PackageUploadCartCopyWithImpl<$Res, $Val extends PackageUploadCart>
    implements $PackageUploadCartCopyWith<$Res> {
  _$PackageUploadCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageUploadCart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageUploadCartImplCopyWith<$Res>
    implements $PackageUploadCartCopyWith<$Res> {
  factory _$$PackageUploadCartImplCopyWith(_$PackageUploadCartImpl value,
          $Res Function(_$PackageUploadCartImpl) then) =
      __$$PackageUploadCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash});
}

/// @nodoc
class __$$PackageUploadCartImplCopyWithImpl<$Res>
    extends _$PackageUploadCartCopyWithImpl<$Res, _$PackageUploadCartImpl>
    implements _$$PackageUploadCartImplCopyWith<$Res> {
  __$$PackageUploadCartImplCopyWithImpl(_$PackageUploadCartImpl _value,
      $Res Function(_$PackageUploadCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageUploadCart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
  }) {
    return _then(_$PackageUploadCartImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageUploadCartImpl implements _PackageUploadCart {
  const _$PackageUploadCartImpl({required this.hash});

  factory _$PackageUploadCartImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageUploadCartImplFromJson(json);

  @override
  final String hash;

  @override
  String toString() {
    return 'PackageUploadCart(hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageUploadCartImpl &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash);

  /// Create a copy of PackageUploadCart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageUploadCartImplCopyWith<_$PackageUploadCartImpl> get copyWith =>
      __$$PackageUploadCartImplCopyWithImpl<_$PackageUploadCartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageUploadCartImplToJson(
      this,
    );
  }
}

abstract class _PackageUploadCart implements PackageUploadCart {
  const factory _PackageUploadCart({required final String hash}) =
      _$PackageUploadCartImpl;

  factory _PackageUploadCart.fromJson(Map<String, dynamic> json) =
      _$PackageUploadCartImpl.fromJson;

  @override
  String get hash;

  /// Create a copy of PackageUploadCart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageUploadCartImplCopyWith<_$PackageUploadCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

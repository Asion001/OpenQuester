// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_logo_file_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageLogoFileInput _$PackageLogoFileInputFromJson(Map<String, dynamic> json) {
  return _PackageLogoFileInput.fromJson(json);
}

/// @nodoc
mixin _$PackageLogoFileInput {
  FileInput get file => throw _privateConstructorUsedError;

  /// Serializes this PackageLogoFileInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageLogoFileInputCopyWith<PackageLogoFileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageLogoFileInputCopyWith<$Res> {
  factory $PackageLogoFileInputCopyWith(PackageLogoFileInput value,
          $Res Function(PackageLogoFileInput) then) =
      _$PackageLogoFileInputCopyWithImpl<$Res, PackageLogoFileInput>;
  @useResult
  $Res call({FileInput file});

  $FileInputCopyWith<$Res> get file;
}

/// @nodoc
class _$PackageLogoFileInputCopyWithImpl<$Res,
        $Val extends PackageLogoFileInput>
    implements $PackageLogoFileInputCopyWith<$Res> {
  _$PackageLogoFileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInput,
    ) as $Val);
  }

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileInputCopyWith<$Res> get file {
    return $FileInputCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageLogoFileInputImplCopyWith<$Res>
    implements $PackageLogoFileInputCopyWith<$Res> {
  factory _$$PackageLogoFileInputImplCopyWith(_$PackageLogoFileInputImpl value,
          $Res Function(_$PackageLogoFileInputImpl) then) =
      __$$PackageLogoFileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileInput file});

  @override
  $FileInputCopyWith<$Res> get file;
}

/// @nodoc
class __$$PackageLogoFileInputImplCopyWithImpl<$Res>
    extends _$PackageLogoFileInputCopyWithImpl<$Res, _$PackageLogoFileInputImpl>
    implements _$$PackageLogoFileInputImplCopyWith<$Res> {
  __$$PackageLogoFileInputImplCopyWithImpl(_$PackageLogoFileInputImpl _value,
      $Res Function(_$PackageLogoFileInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$PackageLogoFileInputImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileInput,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageLogoFileInputImpl implements _PackageLogoFileInput {
  const _$PackageLogoFileInputImpl({required this.file});

  factory _$PackageLogoFileInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageLogoFileInputImplFromJson(json);

  @override
  final FileInput file;

  @override
  String toString() {
    return 'PackageLogoFileInput(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageLogoFileInputImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageLogoFileInputImplCopyWith<_$PackageLogoFileInputImpl>
      get copyWith =>
          __$$PackageLogoFileInputImplCopyWithImpl<_$PackageLogoFileInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageLogoFileInputImplToJson(
      this,
    );
  }
}

abstract class _PackageLogoFileInput implements PackageLogoFileInput {
  const factory _PackageLogoFileInput({required final FileInput file}) =
      _$PackageLogoFileInputImpl;

  factory _PackageLogoFileInput.fromJson(Map<String, dynamic> json) =
      _$PackageLogoFileInputImpl.fromJson;

  @override
  FileInput get file;

  /// Create a copy of PackageLogoFileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageLogoFileInputImplCopyWith<_$PackageLogoFileInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

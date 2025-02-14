// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siq_file_file_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SiqFileFileObject _$SiqFileFileObjectFromJson(Map<String, dynamic> json) {
  return _SiqFileFileObject.fromJson(json);
}

/// @nodoc
mixin _$SiqFileFileObject {
  FileObject get file => throw _privateConstructorUsedError;
  Duration? get displayTime => throw _privateConstructorUsedError;

  /// Serializes this SiqFileFileObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiqFileFileObjectCopyWith<SiqFileFileObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiqFileFileObjectCopyWith<$Res> {
  factory $SiqFileFileObjectCopyWith(
    SiqFileFileObject value,
    $Res Function(SiqFileFileObject) then,
  ) = _$SiqFileFileObjectCopyWithImpl<$Res, SiqFileFileObject>;
  @useResult
  $Res call({FileObject file, Duration? displayTime});

  $FileObjectCopyWith<$Res> get file;
}

/// @nodoc
class _$SiqFileFileObjectCopyWithImpl<$Res, $Val extends SiqFileFileObject>
    implements $SiqFileFileObjectCopyWith<$Res> {
  _$SiqFileFileObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? file = null, Object? displayTime = freezed}) {
    return _then(
      _value.copyWith(
            file:
                null == file
                    ? _value.file
                    : file // ignore: cast_nullable_to_non_nullable
                        as FileObject,
            displayTime:
                freezed == displayTime
                    ? _value.displayTime
                    : displayTime // ignore: cast_nullable_to_non_nullable
                        as Duration?,
          )
          as $Val,
    );
  }

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileObjectCopyWith<$Res> get file {
    return $FileObjectCopyWith<$Res>(_value.file, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiqFileFileObjectImplCopyWith<$Res>
    implements $SiqFileFileObjectCopyWith<$Res> {
  factory _$$SiqFileFileObjectImplCopyWith(
    _$SiqFileFileObjectImpl value,
    $Res Function(_$SiqFileFileObjectImpl) then,
  ) = __$$SiqFileFileObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileObject file, Duration? displayTime});

  @override
  $FileObjectCopyWith<$Res> get file;
}

/// @nodoc
class __$$SiqFileFileObjectImplCopyWithImpl<$Res>
    extends _$SiqFileFileObjectCopyWithImpl<$Res, _$SiqFileFileObjectImpl>
    implements _$$SiqFileFileObjectImplCopyWith<$Res> {
  __$$SiqFileFileObjectImplCopyWithImpl(
    _$SiqFileFileObjectImpl _value,
    $Res Function(_$SiqFileFileObjectImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? file = null, Object? displayTime = freezed}) {
    return _then(
      _$SiqFileFileObjectImpl(
        file:
            null == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                    as FileObject,
        displayTime:
            freezed == displayTime
                ? _value.displayTime
                : displayTime // ignore: cast_nullable_to_non_nullable
                    as Duration?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SiqFileFileObjectImpl implements _SiqFileFileObject {
  _$SiqFileFileObjectImpl({required this.file, this.displayTime});

  factory _$SiqFileFileObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiqFileFileObjectImplFromJson(json);

  @override
  final FileObject file;
  @override
  final Duration? displayTime;

  @override
  String toString() {
    return 'SiqFileFileObject(file: $file, displayTime: $displayTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiqFileFileObjectImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.displayTime, displayTime) ||
                other.displayTime == displayTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, displayTime);

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiqFileFileObjectImplCopyWith<_$SiqFileFileObjectImpl> get copyWith =>
      __$$SiqFileFileObjectImplCopyWithImpl<_$SiqFileFileObjectImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SiqFileFileObjectImplToJson(this);
  }
}

abstract class _SiqFileFileObject implements SiqFileFileObject {
  factory _SiqFileFileObject({
    required final FileObject file,
    final Duration? displayTime,
  }) = _$SiqFileFileObjectImpl;

  factory _SiqFileFileObject.fromJson(Map<String, dynamic> json) =
      _$SiqFileFileObjectImpl.fromJson;

  @override
  FileObject get file;
  @override
  Duration? get displayTime;

  /// Create a copy of SiqFileFileObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiqFileFileObjectImplCopyWith<_$SiqFileFileObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

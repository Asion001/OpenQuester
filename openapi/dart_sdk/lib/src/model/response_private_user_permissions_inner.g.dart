// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_private_user_permissions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponsePrivateUserPermissionsInner
    extends ResponsePrivateUserPermissionsInner {
  @override
  final num id;
  @override
  final String name;

  factory _$ResponsePrivateUserPermissionsInner(
          [void Function(ResponsePrivateUserPermissionsInnerBuilder)?
              updates]) =>
      (new ResponsePrivateUserPermissionsInnerBuilder()..update(updates))
          ._build();

  _$ResponsePrivateUserPermissionsInner._(
      {required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ResponsePrivateUserPermissionsInner', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'ResponsePrivateUserPermissionsInner', 'name');
  }

  @override
  ResponsePrivateUserPermissionsInner rebuild(
          void Function(ResponsePrivateUserPermissionsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponsePrivateUserPermissionsInnerBuilder toBuilder() =>
      new ResponsePrivateUserPermissionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponsePrivateUserPermissionsInner &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponsePrivateUserPermissionsInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ResponsePrivateUserPermissionsInnerBuilder
    implements
        Builder<ResponsePrivateUserPermissionsInner,
            ResponsePrivateUserPermissionsInnerBuilder> {
  _$ResponsePrivateUserPermissionsInner? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ResponsePrivateUserPermissionsInnerBuilder() {
    ResponsePrivateUserPermissionsInner._defaults(this);
  }

  ResponsePrivateUserPermissionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponsePrivateUserPermissionsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponsePrivateUserPermissionsInner;
  }

  @override
  void update(
      void Function(ResponsePrivateUserPermissionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponsePrivateUserPermissionsInner build() => _build();

  _$ResponsePrivateUserPermissionsInner _build() {
    final _$result = _$v ??
        new _$ResponsePrivateUserPermissionsInner._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ResponsePrivateUserPermissionsInner', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ResponsePrivateUserPermissionsInner', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user_permissions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateUserPermissionsInner extends PrivateUserPermissionsInner {
  @override
  final num id;
  @override
  final String name;

  factory _$PrivateUserPermissionsInner(
          [void Function(PrivateUserPermissionsInnerBuilder)? updates]) =>
      (new PrivateUserPermissionsInnerBuilder()..update(updates))._build();

  _$PrivateUserPermissionsInner._({required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PrivateUserPermissionsInner', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'PrivateUserPermissionsInner', 'name');
  }

  @override
  PrivateUserPermissionsInner rebuild(
          void Function(PrivateUserPermissionsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateUserPermissionsInnerBuilder toBuilder() =>
      new PrivateUserPermissionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateUserPermissionsInner &&
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
    return (newBuiltValueToStringHelper(r'PrivateUserPermissionsInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PrivateUserPermissionsInnerBuilder
    implements
        Builder<PrivateUserPermissionsInner,
            PrivateUserPermissionsInnerBuilder> {
  _$PrivateUserPermissionsInner? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrivateUserPermissionsInnerBuilder() {
    PrivateUserPermissionsInner._defaults(this);
  }

  PrivateUserPermissionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateUserPermissionsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateUserPermissionsInner;
  }

  @override
  void update(void Function(PrivateUserPermissionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateUserPermissionsInner build() => _build();

  _$PrivateUserPermissionsInner _build() {
    final _$result = _$v ??
        new _$PrivateUserPermissionsInner._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PrivateUserPermissionsInner', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PrivateUserPermissionsInner', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

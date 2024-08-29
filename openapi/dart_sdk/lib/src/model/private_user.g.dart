// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateUser extends PrivateUser {
  @override
  final num? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final Date? birthday;
  @override
  final Uint8List? avatar;
  @override
  final BuiltList<PrivateUserPermissionsInner>? permissions;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final bool? isDeleted;

  factory _$PrivateUser([void Function(PrivateUserBuilder)? updates]) =>
      (new PrivateUserBuilder()..update(updates))._build();

  _$PrivateUser._(
      {this.id,
      this.name,
      this.email,
      this.birthday,
      this.avatar,
      this.permissions,
      this.createdAt,
      this.updatedAt,
      this.isDeleted})
      : super._();

  @override
  PrivateUser rebuild(void Function(PrivateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateUserBuilder toBuilder() => new PrivateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateUser &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        birthday == other.birthday &&
        avatar == other.avatar &&
        permissions == other.permissions &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        isDeleted == other.isDeleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrivateUser')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('birthday', birthday)
          ..add('avatar', avatar)
          ..add('permissions', permissions)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('isDeleted', isDeleted))
        .toString();
  }
}

class PrivateUserBuilder implements Builder<PrivateUser, PrivateUserBuilder> {
  _$PrivateUser? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Date? _birthday;
  Date? get birthday => _$this._birthday;
  set birthday(Date? birthday) => _$this._birthday = birthday;

  Uint8List? _avatar;
  Uint8List? get avatar => _$this._avatar;
  set avatar(Uint8List? avatar) => _$this._avatar = avatar;

  ListBuilder<PrivateUserPermissionsInner>? _permissions;
  ListBuilder<PrivateUserPermissionsInner> get permissions =>
      _$this._permissions ??= new ListBuilder<PrivateUserPermissionsInner>();
  set permissions(ListBuilder<PrivateUserPermissionsInner>? permissions) =>
      _$this._permissions = permissions;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  PrivateUserBuilder() {
    PrivateUser._defaults(this);
  }

  PrivateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _birthday = $v.birthday;
      _avatar = $v.avatar;
      _permissions = $v.permissions?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _isDeleted = $v.isDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateUser;
  }

  @override
  void update(void Function(PrivateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateUser build() => _build();

  _$PrivateUser _build() {
    _$PrivateUser _$result;
    try {
      _$result = _$v ??
          new _$PrivateUser._(
              id: id,
              name: name,
              email: email,
              birthday: birthday,
              avatar: avatar,
              permissions: _permissions?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              isDeleted: isDeleted);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrivateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

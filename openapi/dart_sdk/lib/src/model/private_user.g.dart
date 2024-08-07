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
  final DateTime? birthday;
  @override
  final Uint8List? avatar;

  factory _$PrivateUser([void Function(PrivateUserBuilder)? updates]) =>
      (new PrivateUserBuilder()..update(updates))._build();

  _$PrivateUser._({this.id, this.name, this.email, this.birthday, this.avatar})
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
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
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
          ..add('avatar', avatar))
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

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  Uint8List? _avatar;
  Uint8List? get avatar => _$this._avatar;
  set avatar(Uint8List? avatar) => _$this._avatar = avatar;

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
    final _$result = _$v ??
        new _$PrivateUser._(
            id: id,
            name: name,
            email: email,
            birthday: birthday,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

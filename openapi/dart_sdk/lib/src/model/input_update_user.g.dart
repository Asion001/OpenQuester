// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_update_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputUpdateUser extends InputUpdateUser {
  @override
  final String? name;
  @override
  final String? password;
  @override
  final Date? birthday;
  @override
  final Uint8List? avatar;

  factory _$InputUpdateUser([void Function(InputUpdateUserBuilder)? updates]) =>
      (new InputUpdateUserBuilder()..update(updates))._build();

  _$InputUpdateUser._({this.name, this.password, this.birthday, this.avatar})
      : super._();

  @override
  InputUpdateUser rebuild(void Function(InputUpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputUpdateUserBuilder toBuilder() =>
      new InputUpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputUpdateUser &&
        name == other.name &&
        password == other.password &&
        birthday == other.birthday &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputUpdateUser')
          ..add('name', name)
          ..add('password', password)
          ..add('birthday', birthday)
          ..add('avatar', avatar))
        .toString();
  }
}

class InputUpdateUserBuilder
    implements Builder<InputUpdateUser, InputUpdateUserBuilder> {
  _$InputUpdateUser? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Date? _birthday;
  Date? get birthday => _$this._birthday;
  set birthday(Date? birthday) => _$this._birthday = birthday;

  Uint8List? _avatar;
  Uint8List? get avatar => _$this._avatar;
  set avatar(Uint8List? avatar) => _$this._avatar = avatar;

  InputUpdateUserBuilder() {
    InputUpdateUser._defaults(this);
  }

  InputUpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _password = $v.password;
      _birthday = $v.birthday;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputUpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputUpdateUser;
  }

  @override
  void update(void Function(InputUpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputUpdateUser build() => _build();

  _$InputUpdateUser _build() {
    final _$result = _$v ??
        new _$InputUpdateUser._(
            name: name, password: password, birthday: birthday, avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

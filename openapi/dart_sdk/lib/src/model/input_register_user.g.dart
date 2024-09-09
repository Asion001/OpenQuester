// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_register_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputRegisterUser extends InputRegisterUser {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final Date? birthday;
  @override
  final Uint8List? avatar;

  factory _$InputRegisterUser(
          [void Function(InputRegisterUserBuilder)? updates]) =>
      (new InputRegisterUserBuilder()..update(updates))._build();

  _$InputRegisterUser._(
      {required this.name,
      required this.email,
      required this.password,
      this.birthday,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'InputRegisterUser', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'InputRegisterUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'InputRegisterUser', 'password');
  }

  @override
  InputRegisterUser rebuild(void Function(InputRegisterUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputRegisterUserBuilder toBuilder() =>
      new InputRegisterUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputRegisterUser &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
        birthday == other.birthday &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputRegisterUser')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('birthday', birthday)
          ..add('avatar', avatar))
        .toString();
  }
}

class InputRegisterUserBuilder
    implements Builder<InputRegisterUser, InputRegisterUserBuilder> {
  _$InputRegisterUser? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Date? _birthday;
  Date? get birthday => _$this._birthday;
  set birthday(Date? birthday) => _$this._birthday = birthday;

  Uint8List? _avatar;
  Uint8List? get avatar => _$this._avatar;
  set avatar(Uint8List? avatar) => _$this._avatar = avatar;

  InputRegisterUserBuilder() {
    InputRegisterUser._defaults(this);
  }

  InputRegisterUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _birthday = $v.birthday;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputRegisterUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputRegisterUser;
  }

  @override
  void update(void Function(InputRegisterUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputRegisterUser build() => _build();

  _$InputRegisterUser _build() {
    final _$result = _$v ??
        new _$InputRegisterUser._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InputRegisterUser', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'InputRegisterUser', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'InputRegisterUser', 'password'),
            birthday: birthday,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

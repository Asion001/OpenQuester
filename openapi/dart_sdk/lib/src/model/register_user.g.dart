// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterUser extends RegisterUser {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String password;
  @override
  final Date? birthday;
  @override
  final Uint8List? avatar;

  factory _$RegisterUser([void Function(RegisterUserBuilder)? updates]) =>
      (new RegisterUserBuilder()..update(updates))._build();

  _$RegisterUser._(
      {this.name,
      this.email,
      required this.password,
      this.birthday,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        password, r'RegisterUser', 'password');
  }

  @override
  RegisterUser rebuild(void Function(RegisterUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterUserBuilder toBuilder() => new RegisterUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterUser &&
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
    return (newBuiltValueToStringHelper(r'RegisterUser')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('birthday', birthday)
          ..add('avatar', avatar))
        .toString();
  }
}

class RegisterUserBuilder
    implements Builder<RegisterUser, RegisterUserBuilder> {
  _$RegisterUser? _$v;

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

  RegisterUserBuilder() {
    RegisterUser._defaults(this);
  }

  RegisterUserBuilder get _$this {
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
  void replace(RegisterUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterUser;
  }

  @override
  void update(void Function(RegisterUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterUser build() => _build();

  _$RegisterUser _build() {
    final _$result = _$v ??
        new _$RegisterUser._(
            name: name,
            email: email,
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'RegisterUser', 'password'),
            birthday: birthday,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

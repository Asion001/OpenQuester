// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginUser extends LoginUser {
  @override
  final String login;
  @override
  final String password;

  factory _$LoginUser([void Function(LoginUserBuilder)? updates]) =>
      (new LoginUserBuilder()..update(updates))._build();

  _$LoginUser._({required this.login, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(login, r'LoginUser', 'login');
    BuiltValueNullFieldError.checkNotNull(password, r'LoginUser', 'password');
  }

  @override
  LoginUser rebuild(void Function(LoginUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginUserBuilder toBuilder() => new LoginUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginUser &&
        login == other.login &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginUser')
          ..add('login', login)
          ..add('password', password))
        .toString();
  }
}

class LoginUserBuilder implements Builder<LoginUser, LoginUserBuilder> {
  _$LoginUser? _$v;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginUserBuilder() {
    LoginUser._defaults(this);
  }

  LoginUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _login = $v.login;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginUser;
  }

  @override
  void update(void Function(LoginUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginUser build() => _build();

  _$LoginUser _build() {
    final _$result = _$v ??
        new _$LoginUser._(
            login: BuiltValueNullFieldError.checkNotNull(
                login, r'LoginUser', 'login'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'LoginUser', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

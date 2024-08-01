// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IUser extends IUser {
  @override
  final String name;
  @override
  final String email;
  @override
  final DateTime? birthday;
  @override
  final Uint8List? avatar;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$IUser([void Function(IUserBuilder)? updates]) =>
      (new IUserBuilder()..update(updates))._build();

  _$IUser._(
      {required this.name,
      required this.email,
      this.birthday,
      this.avatar,
      this.accessToken,
      this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'IUser', 'name');
    BuiltValueNullFieldError.checkNotNull(email, r'IUser', 'email');
  }

  @override
  IUser rebuild(void Function(IUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IUserBuilder toBuilder() => new IUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IUser &&
        name == other.name &&
        email == other.email &&
        birthday == other.birthday &&
        avatar == other.avatar &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IUser')
          ..add('name', name)
          ..add('email', email)
          ..add('birthday', birthday)
          ..add('avatar', avatar)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class IUserBuilder implements Builder<IUser, IUserBuilder> {
  _$IUser? _$v;

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

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  IUserBuilder() {
    IUser._defaults(this);
  }

  IUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _birthday = $v.birthday;
      _avatar = $v.avatar;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IUser;
  }

  @override
  void update(void Function(IUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IUser build() => _build();

  _$IUser _build() {
    final _$result = _$v ??
        new _$IUser._(
            name: BuiltValueNullFieldError.checkNotNull(name, r'IUser', 'name'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, r'IUser', 'email'),
            birthday: birthday,
            avatar: avatar,
            accessToken: accessToken,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 2)
class LoginController extends ChangeNotifier {
  AuthData? _authData;
  String? _login;
  String? get login => _login;
  set login(String? value) {
    _login = value;
    notifyListeners();
  }

  String? _password;
  String? get password => _password;
  set password(String? value) {
    _password = value;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool get autorized => _authData != null;

  FutureOr<String?> get accessToken async {
    if (_authData?.expired() ?? false) await refreshToken();
    return _authData?.accessToken;
  }

  static const authDataStorageKey = 'auth_data';

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final savedData = await getIt.get<Storage>().get(authDataStorageKey);
    if (savedData != null) {
      _authData = AuthData.fromJson(jsonDecode(savedData.toString()));
    }
  }

  Future<(bool, String?)> loginUser() async {
    try {
      loading = true;
      final inputLoginUser = InputLoginUser(
        login: login!,
        password: password!,
      );
      final result =
          await getIt.get<Api>().api.auth.postV1AuthLogin(body: inputLoginUser);
      _authData = AuthData(
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      );
      await getIt
          .get<Storage>()
          .put(authDataStorageKey, jsonEncode(_authData!.toJson()));

      loading = true;
      return (_authData != null, 'AuthData == null');
    } catch (e) {
      logger.e(e);
      loading = false;
      return (false, e.toString());
    }
  }

  Future<String?> refreshToken() async {
    if (_authData == null) return null;
    try {
      var body = AuthRefreshInput(refreshToken: _authData!.refreshToken);
      _authData = null;
      final result =
          await getIt.get<Api>().api.auth.postV1AuthRefresh(body: body);
      _authData = AuthData.fromAuthData(result);
      notifyListeners();
      return _authData?.accessToken;
    } catch (e) {
      logger.w(e);
      _authData = null;
      notifyListeners();
      return null;
    }
  }

  void logOut() {
    _authData = null;
    getIt.get<Storage>().rm(authDataStorageKey);
    notifyListeners();
  }
}

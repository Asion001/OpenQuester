import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';

import '../../model/auth_data.dart' as auth_model;

@singleton
class LoginController extends ChangeNotifier {
  LoginController({this.authData});

  auth_model.AuthData? authData;
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

  static const authDataStorageKey = 'auth_data';

  @factoryMethod
  static Future<LoginController> create() async {
    final savedData = await getIt.get<Storage>().get(authDataStorageKey);
    auth_model.AuthData? authData;
    if (savedData != null) {
      authData = auth_model.AuthData.fromJson(jsonDecode(savedData.toString()));
    }

    return LoginController(authData: authData);
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
      authData = auth_model.AuthData(
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      );
      await getIt
          .get<Storage>()
          .put(authDataStorageKey, jsonEncode(authData!.toJson()));

      loading = true;
      return (authData != null, 'AuthData == null');
    } catch (e) {
      logger.e(e);
      loading = false;
      return (false, e.toString());
    }
  }

  void logOut() {
    authData = null;
    getIt.get<Storage>().rm(authDataStorageKey);
    notifyListeners();
  }
}

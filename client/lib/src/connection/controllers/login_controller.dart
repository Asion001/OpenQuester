import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

import 'package:openquester/src/application/get_it.dart';
import 'package:openquester/src/connection/storage/storage.dart';

import '../../application/logger.dart';
import '../../model/auth_data.dart' as auth_model;
import '../api/api.dart';

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
        (b) {
          b.login = login;
          b.password = password;
        },
      );
      final result = await getIt
          .get<Api>()
          .api
          .v1AuthLoginPost(inputLoginUser: inputLoginUser);
      authData = auth_model.AuthData(
        accessToken: result.data!.accessToken,
        refreshToken: result.data!.refreshToken,
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

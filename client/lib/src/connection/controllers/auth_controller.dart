import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';
import 'package:openquester/src/connection/auth/oauth2_controller.dart';

@Singleton(order: 2)
class AuthController extends ChangeNotifier {
  AuthData? _authData;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool get autorized => _authData != null;

  FutureOr<String?> get accessToken => _authData?.accessToken;

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
      notifyListeners();
      final accessToken = await getIt<Oauth2Controller>().auth();
      // final result =
      //     await getIt.get<Api>().api.auth.postV1AuthLogin(body: inputLoginUser);

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

  void logOut() {
    _authData = null;
    getIt.get<Storage>().rm(authDataStorageKey);
    notifyListeners();
  }
}

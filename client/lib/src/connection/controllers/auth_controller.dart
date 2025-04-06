import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 2)
class AuthController extends ChangeNotifier {
  ResponseUser? _userData;
  bool get authorized => _userData != null;

  ValueNotifier<bool> loading = ValueNotifier(false);

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      _userData = await getIt.get<Api>().api.users.getV1Me();
    } catch (e) {
      logger.d(e);
    }
  }

  Future<(bool, String?)> loginUser() async {
    try {
      loading.value = true;

      final accessTokenResponse = await getIt<Oauth2Controller>().auth();
      final inputOauthLogin = InputOauthLogin(
        token: accessTokenResponse.accessToken!,
        oauthProvider: InputOauthLoginOauthProvider.discord,
        tokenSchema: accessTokenResponse.tokenType,
      );

      _userData = await getIt.get<Api>().api.auth.postV1AuthOauth2(
            body: inputOauthLogin,
          );

      notifyListeners();
      return (_userData != null, 'AuthData == null');
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      return (false, e.toString());
    } finally {
      loading.value = false;
    }
  }

  Future<void> logOut() async {
    _userData = null;
    await getIt.get<Api>().api.auth.getV1AuthLogout();
    notifyListeners();
  }
}

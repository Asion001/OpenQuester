import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 2)
class AuthController extends ChangeNotifier {
  ResponseUser? _userData;
  ResponseUser? get user => _userData;
  bool get authorized => _userData != null;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      _userData = await getIt.get<Api>().api.users.getV1Me();
    } catch (e) {
      logger.d(e);
    }
  }

  Future<void> loginUser() async {
    try {
      final accessTokenResponse = await getIt<Oauth2Controller>().auth();
      final token = accessTokenResponse.accessToken;

      if (token == null) {
        throw UserError(LocaleKeys.authorization_canceled.tr());
      }

      final inputOauthLogin = InputOauthLogin(
        token: token,
        oauthProvider: InputOauthLoginOauthProvider.discord,
        tokenSchema: accessTokenResponse.tokenType,
      );

      _userData = await getIt.get<Api>().api.auth.postV1AuthOauth2(
            body: inputOauthLogin,
          );

      notifyListeners();

      if (_userData == null) {
        throw UserError(LocaleKeys.authorization_canceled.tr());
      }
    } catch (e, s) {
      logger.w(e, stackTrace: s);
      rethrow;
    }
  }

  Future<void> logOut() async {
    _userData = null;
    await getIt.get<Api>().api.auth.getV1AuthLogout();
    notifyListeners();
  }
}

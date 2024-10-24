import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // User Login
    //
    //Future<ResponseAuthData> v1AuthLoginPost(InputLoginUser inputLoginUser) async
    test('test v1AuthLoginPost', () async {
      // TODO
    });

    // Refresh tokens
    //
    //Future<ResponseAuthData> v1AuthRefreshPost(V1AuthRefreshPostRequest v1AuthRefreshPostRequest) async
    test('test v1AuthRefreshPost', () async {
      // TODO
    });

    // User Registration
    //
    //Future<ResponseAuthData> v1AuthRegisterPost(InputRegisterUser inputRegisterUser) async
    test('test v1AuthRegisterPost', () async {
      // TODO
    });
  });
}

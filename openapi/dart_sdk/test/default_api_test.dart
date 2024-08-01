import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Authorization Endpoint
    //
    //Future<String> v1AuthGet() async
    test('test v1AuthGet', () async {
      // TODO
    });

    // User Login
    //
    //Future<IUser> v1AuthLoginPost() async
    test('test v1AuthLoginPost', () async {
      // TODO
    });

    // User Registration
    //
    //Future<IUser> v1AuthRegisterPost() async
    test('test v1AuthRegisterPost', () async {
      // TODO
    });
  });
}

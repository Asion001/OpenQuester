import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Delete user by his token
    //
    //Future v1UserDelete() async
    test('test v1UserDelete', () async {
      // TODO
    });

    // Get user by his token
    //
    //Future<ResponsePrivateUser> v1UserGet() async
    test('test v1UserGet', () async {
      // TODO
    });

    // Delete user by id
    //
    //Future v1UserIdDelete(String id) async
    test('test v1UserIdDelete', () async {
      // TODO
    });

    // Get user info by id
    //
    //Future<ResponsePrivateUser> v1UserIdGet(String id) async
    test('test v1UserIdGet', () async {
      // TODO
    });

    // Update user by id
    //
    //Future<ResponsePrivateUser> v1UserIdPatch(String id, InputUpdateUser inputUpdateUser) async
    test('test v1UserIdPatch', () async {
      // TODO
    });

    // Update user by his token
    //
    //Future<ResponsePrivateUser> v1UserPatch(InputUpdateUser inputUpdateUser) async
    test('test v1UserPatch', () async {
      // TODO
    });
  });
}

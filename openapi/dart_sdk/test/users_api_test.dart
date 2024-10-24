import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for UsersApi
void main() {
  final instance = Openapi().getUsersApi();

  group(UsersApi, () {
    // Get all users info
    //
    //Future<BuiltList<ResponsePrivateUser>> v1UsersGet() async
    test('test v1UsersGet', () async {
      // TODO
    });
  });
}

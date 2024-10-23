import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for FileApi
void main() {
  final instance = Openapi().getFileApi();

  group(FileApi, () {
    // Delete file from bucket
    //
    //Future<V1FileDelete204Response> v1FileDelete(V1FileGetRequest v1FileGetRequest) async
    test('test v1FileDelete', () async {
      // TODO
    });

    // Get link to file from server
    //
    //Future<V1FileGet200Response> v1FileGet(V1FileGetRequest v1FileGetRequest) async
    test('test v1FileGet', () async {
      // TODO
    });

    // Get link to upload file on server
    //
    //Future<V1FilePost200Response> v1FilePost(V1FileGetRequest v1FileGetRequest) async
    test('test v1FilePost', () async {
      // TODO
    });
  });
}

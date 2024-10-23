import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for PackageApi
void main() {
  final instance = Openapi().getPackageApi();

  group(PackageApi, () {
    // Get upload links for every file in `content.json`
    //
    //Future<V1PackageUploadPost200Response> v1PackageUploadPost(V1PackageUploadPostRequest v1PackageUploadPostRequest) async
    test('test v1PackageUploadPost', () async {
      // TODO
    });
  });
}

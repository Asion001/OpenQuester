import 'dart:async';

import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class PackageController {
  PackageResponse? _lastPackage;

  Future<PackageResponse> getPackage(int id) async {
    if (_lastPackage?.id == id) return _lastPackage!;
    final result = Api.I.api.packages.getV1PackagesId(id: id);
    return result;
  }
}

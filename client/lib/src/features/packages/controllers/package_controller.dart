import 'dart:async';

import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 6)
class PackageController {
  Future<PackageResponse>? _lastPackage;

  Future<PackageResponse> getPackage(int id) async {
    if ((await _lastPackage)?.id == id) return _lastPackage!;
    final fromPackageList = getIt<PackagesListController>()
        .pagingController
        .items
        ?.firstWhereOrNull((e) => e.id == id);
    final result = fromPackageList != null
        ? Future(() => fromPackageList)
        : Api.I.api.packages.getV1PackagesId(id: id);
    _lastPackage = result;
    return result;
  }
}

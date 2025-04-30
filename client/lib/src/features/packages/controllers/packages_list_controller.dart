import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class PackagesListController extends ListControllerBase<PackageListItem> {
  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await super.init();
  }

  @override
  Future<ListResponse<PackageListItem>> getPage(ListRequest request) async {
    final list = await Api.I.api.packages.getV1Packages(
      limit: request.limit,
      offset: request.offset,
      order: OrderDirection.desc,
      sortBy: PackagesSortBy.createdAt,
      title: request.query,
    );
    return ListResponse(
      list: list.data,
      metadata: ListResponseMeta(total: list.pageInfo.total),
    );
  }
}

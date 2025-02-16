import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class PackagesListScreen extends StatelessWidget {
  const PackagesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListHeader(
          title: LocaleKeys.home_tabs_packages.tr(),
          onTap: () => PackageUploadRoute().push(context),
        ),
        PaginatedListWidget<PackagesListController, PackageListItem>(
          itemBuilder:
              (context, item, index) => PackageListItemWidget(item: item),
        ).expand(),
      ],
    );
  }
}

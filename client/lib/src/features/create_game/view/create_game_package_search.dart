import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

/// A [SearchDelegate] for finding and selecting game packages.
class CreateGamePackageSearch extends SearchDelegate<PackageListItem?> {
  CreateGamePackageSearch() : _controller = getIt<PackagesListController>();
  final PackagesListController _controller;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Use the same UI as suggestions
    return _buildSearchResults();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text(LocaleKeys.search_package_hint.tr()),
      );
    }
    return _buildSearchResults();
  }

  Widget _buildSearchResults() {
    final listRequest = ListRequest(offset: 0, limit: 5, query: query);
    final future = _controller.getPage(listRequest);

    return FutureBuilder<ListResponse<PackageListItem>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        final response = snapshot.data;
        if (response == null || response.list.isEmpty) {
          return Center(child: Text(LocaleKeys.nothing_found.tr()));
        }

        return ListView.builder(
          itemCount: response.list.length,
          itemBuilder: (context, index) {
            final item = response.list[index];
            return InkWell(
              onTap: () => close(context, item),
              child: PackageListItemWidget(item: item),
            );
          },
        );
      },
    );
  }
}

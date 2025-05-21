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
            _search();
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
    return _buildSearchResults();
  }

  @override
  void showResults(BuildContext context) {
    _search();
    super.showResults(context);
  }

  @override
  void showSuggestions(BuildContext context) {
    _search();
    super.showSuggestions(context);
  }

  ListRequest get _listRequest =>
      ListRequest(offset: 0, limit: 5, query: query.isEmpty ? null : query);

  late Future<ListResponse<PackageListItem>>? future = _controller.getPage(
    _listRequest,
  );

  void _search() {
    future = _controller.getPage(_listRequest);
  }

  Widget _buildSearchResults() {
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

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class HomeTabsScreen extends WatchingWidget {
  const HomeTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideModeOn = UiModeUtils.wideModeOn(context);

    return Scaffold(
      body: MaxSizeContainer(
        child: isWideModeOn ? const _WideHome() : const _MobileHome(),
      ),
    );
  }
}

AppBar _homeAppBar({
  required BuildContext context,
  required bool authorized,
}) {
  return AppBar(
    leading: const ProfileBtn(),
  );
}

class _MobileHome extends WatchingStatefulWidget {
  const _MobileHome();

  @override
  State<_MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<_MobileHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final authorized = watchIt<AuthController>().authorized;

    return Scaffold(
      appBar: _homeAppBar(
        context: context,
        authorized: authorized,
      ),
      floatingActionButton: const _StartGameButton(),
      body: _destionations[index].$1,
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (newIndex) => setState(() => index = newIndex),
        destinations: _destionations.map((e) => e.$2).toList(),
        height: 60,
      ),
    );
  }

  List<(Widget, NavigationDestination)> get _destionations {
    return [
      (
        const _GameList(wideMode: false),
        NavigationDestination(
          label: LocaleKeys.home_tabs_games.tr(),
          icon: const Icon(Icons.games_outlined),
          selectedIcon: const Icon(Icons.games),
        ),
      ),
      (
        const PackagesListScreen(),
        NavigationDestination(
          label: LocaleKeys.home_tabs_packages.tr(),
          icon: const Icon(Icons.folder_outlined),
          selectedIcon: const Icon(Icons.folder),
        ),
      ),
    ];
  }
}

class _StartGameButton extends StatelessWidget {
  const _StartGameButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => const CreateGameRoute().push<void>(context),
      label: Text(LocaleKeys.start_game.tr()),
      icon: const Icon(Icons.play_arrow_outlined),
      tooltip: LocaleKeys.start_game.tr(),
    );
  }
}

class _WideHome extends WatchingWidget {
  const _WideHome();

  @override
  Widget build(BuildContext context) {
    final authorized = watchIt<AuthController>().authorized;
    return Scaffold(
      appBar: _homeAppBar(
        context: context,
        authorized: authorized,
      ),
      body: SafeArea(
        child: Row(
          spacing: 42,
          children: [
            const _WideHomeLeftBar(),
            const _GameList(wideMode: true).expand(),
          ],
        ),
      ),
    );
  }
}

class _GameList extends StatefulWidget {
  const _GameList({required this.wideMode});
  final bool wideMode;

  @override
  State<_GameList> createState() => _GameListState();
}

class _GameListState extends State<_GameList> {
  bool expandSearchBar = false;

  @override
  Widget build(BuildContext context) {
    final searchBar = SearchBar(
      hintText: LocaleKeys.type_to_find_games.tr(),
      constraints: const BoxConstraints(maxWidth: 360, minHeight: 56),
      onChanged: getIt<GamesListController>().search,
      trailing: const [Icon(Icons.search)],
    );

    final title = AnimatedCrossFade(
      duration: Durations.medium1,
      // Wide mode state with title and search bar
      firstChild: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LocaleKeys.games_list.tr(),
            style: context.textTheme.headlineMedium,
          ),
          if (widget.wideMode)
            searchBar.flexible()
          else
            IconButton(
              tooltip: LocaleKeys.show_search.tr(),
              onPressed: () =>
                  setState(() => expandSearchBar = !expandSearchBar),
              icon: const Icon(Icons.search),
            ),
        ],
      ),
      // Mobile state with search bar and hide btn
      secondChild: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => setState(() => expandSearchBar = false),
            icon: const Icon(Icons.close),
            tooltip: LocaleKeys.hide_search.tr(),
          ),
          searchBar.flexible(),
        ],
      ),
      crossFadeState: widget.wideMode || !expandSearchBar
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
    );

    return Column(
      spacing: 16,
      children: [
        title.paddingSymmetric(horizontal: 16),
        const GamesListScreen().expand(),
      ],
    );
  }
}

class _WideHomeLeftBar extends StatelessWidget {
  const _WideHomeLeftBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: 220),
      padding: 35.top,
      child: const Column(
        children: [
          _StartGameButton(),
        ],
      ),
    );
  }
}

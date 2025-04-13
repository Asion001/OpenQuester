import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage(
  deferredLoading: false, // Removes loader on first game opening on web
)
class GamePreviewScreen extends StatefulWidget {
  const GamePreviewScreen({
    @PathParam() required this.gameId,
    this.item,
    super.key,
  });
  final GameListItem? item;
  final String gameId;

  @override
  State<GamePreviewScreen> createState() => _GamePreviewScreenState();
}

class _GamePreviewScreenState extends State<GamePreviewScreen> {
  bool showList = false;
  bool loading = false;

  @override
  void initState() {
    _init();
    // Fixes rebuilds in during animation
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(
        getIt<GamePreviewController>().animationDuration,
        () => setState(() => showList = true),
      ),
    );
    super.initState();
  }

  FutureOr<void> _init() async {
    if (widget.item == null) {
      await getIt<GamePreviewController>().initWithId(widget.gameId);
      setState(() {});
    } else {
      loading = true;
      getIt<GamePreviewController>().init(widget.item!);
    }
    if (mounted && loading) setState(() => loading = false);
  }

  @override
  void dispose() {
    getIt<GamePreviewController>().clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final game = getIt<GamePreviewController>().game;
    return AnimationConfigurationClass.synchronized(
      duration: getIt<GamePreviewController>().animationDuration,
      child: SafeArea(
        minimum: 8.all,
        child: MaxSizeContainer(
          maxWidth: UiModeUtils.maximumDialogWidth,
          child: ScaffoldMessenger(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                actions: const [CloseButton()],
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                toolbarOpacity: 0,
              ),
              body: Column(
                children: [
                  if (loading || game == null)
                    const CircularProgressIndicator.adaptive().center()
                  else
                    GameListItemWidget(
                      item: game,
                      onTap: null,
                      bottom: !showList
                          ? null
                          : GamePreviewBottom(packageId: game.package.id),
                      trailing:
                          !showList ? null : const GamePreviewPlayButton(),
                    ).flexible(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

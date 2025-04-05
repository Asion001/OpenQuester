import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage(
  deferredLoading: false, // Removes loader on first game opening on web
)
class GamePreviewScreen extends StatefulWidget {
  const GamePreviewScreen({
    required this.item,
    super.key,
  });
  final GameListItem item;

  @override
  State<GamePreviewScreen> createState() => _GamePreviewScreenState();
}

class _GamePreviewScreenState extends State<GamePreviewScreen> {
  bool showList = false;
  @override
  void initState() {
    getIt<GamePreviewController>().init(widget.item);

    // Fixes rebuilds in during animation
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Future.delayed(
        getIt<GamePreviewController>().animationDuration,
        () => setState(() => showList = true),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    getIt<GamePreviewController>().clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationConfigurationClass.synchronized(
      duration: getIt<GamePreviewController>().animationDuration,
      child: SafeArea(
        minimum: 8.all,
        child: MaxSizeContainer(
          maxWidth: UiModeUtils.maximumDialogWidth,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [CloseButton()],
              ),
              GameListItemWidget(
                item: widget.item,
                onTap: null,
                bottom: !showList
                    ? null
                    : GamePreviewBottom(packageId: widget.item.package.id),
                trailing: !showList ? null : const GamePreviewPlayButton(),
              ).flexible(),
            ],
          ),
        ),
      ),
    );
  }
}

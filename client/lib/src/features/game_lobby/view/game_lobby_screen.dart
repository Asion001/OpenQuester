import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class GameLobbyScreen extends WatchingStatefulWidget {
  const GameLobbyScreen({
    @PathParam() required this.gameId,
    super.key,
  });
  final String gameId;

  @override
  State<GameLobbyScreen> createState() => _GameLobbyScreenState();
}

class _GameLobbyScreenState extends State<GameLobbyScreen> {
  @override
  void initState() {
    getIt<GameLobbyController>().join(gameId: widget.gameId);
    super.initState();
  }

  @override
  void dispose() {
    getIt<GameLobbyController>().leave();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        // Closes chat sheet on window resize
        getIt<GameLobbyController>().closeChatSheet();

        final wideModeOn = UiModeUtils.wideModeOn(context);
        final round = getIt<GameLobbyController>().round.value!;
        final themes =
            round.themes.map((theme) => GameLobbyTheme(theme: theme)).toList();

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.gameId),
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: [
              if (!wideModeOn) const _ChatButton(),
            ],
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 16,
                  children: themes,
                ),
              ).flexible(flex: 3),
              if (wideModeOn) const ChatScreen().expand(),
            ],
          ),
        );
      },
    );
  }
}

class _ChatButton extends StatelessWidget {
  const _ChatButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final gameBottomSheet =
            getIt<GameLobbyController>().bottomSheetController;

        // Close if pressed twice
        if (gameBottomSheet != null) {
          getIt<GameLobbyController>().closeChatSheet();
          return;
        }

        getIt<GameLobbyController>().bottomSheetController = showBottomSheet(
          context: context,
          builder: (context) => const _ChatBottomSheet(),
        );
      },
      icon: const Icon(Icons.chat),
    );
  }
}

class _ChatBottomSheet extends StatelessWidget {
  const _ChatBottomSheet();

  @override
  Widget build(BuildContext context) {
    return const ChatScreen();
  }
}

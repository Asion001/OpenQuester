import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class GameLobbyScreen extends WatchingWidget {
  const GameLobbyScreen({
    @PathParam() required this.gameId,
    super.key,
  });
  final String gameId;

  @override
  Widget build(BuildContext context) {
    callOnce(
      (_) => getIt<GameLobbyController>().join(gameId: gameId),
      dispose: () => getIt<GameLobbyController>().leave(),
    );

    final showChat = watchValue((GameLobbyController e) => e.showDesktopChat);

    return LayoutBuilder(
      builder: (context, constrains) {
        // Closes chat sheet on window resize
        getIt<GameLobbyController>().closeChatSheet();

        final wideModeOn = UiModeUtils.wideModeOn(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(gameId),
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: [_ChatButton(toggleChat: wideModeOn)],
          ),
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _Themes().expand(),
                Visibility(
                  visible: wideModeOn && showChat,
                  child: const _Chat(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Themes extends WatchingWidget {
  const _Themes();

  @override
  Widget build(BuildContext context) {
    final round =
        watchValue<GameLobbyController, LobbyRound?>((p0) => p0.round);
    final themes = round?.themes
        .map((theme) => GameLobbyTheme(theme: theme).paddingBottom(16))
        .toList();

    if (themes == null) {
      return const CircularProgressIndicator.adaptive().center();
    }

    return ListView.builder(
      itemCount: themes.length,
      itemBuilder: (context, index) => themes[index],
    );
  }
}

class _Chat extends StatelessWidget {
  const _Chat();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints.tightFor(width: UiModeUtils.wideModeWidth / 2),
      child: const ChatScreen(),
    );
  }
}

class _ChatButton extends StatelessWidget {
  const _ChatButton({required this.toggleChat});
  final bool toggleChat;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final controller = getIt<GameLobbyController>();

        if (toggleChat) {
          controller.toggleDesktopChat();
          return;
        }

        // Close if pressed twice
        final gameBottomSheet = controller.bottomSheetController;
        if (gameBottomSheet != null) {
          controller.closeChatSheet();
          return;
        }

        controller.bottomSheetController = showBottomSheet(
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

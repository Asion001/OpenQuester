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

    // Set init value for showing chat to [false] for mobile
    callOnce((context) {
      if (UiModeUtils.wideModeOn(context)) {
        getIt<GameLobbyController>().showChat.value = true;
      }
    });

    final showChat = watchValue((GameLobbyController e) => e.showChat);
    final gameData = watchValue((GameLobbyController e) => e.gameListData);

    return LayoutBuilder(
      builder: (context, constrains) {
        final wideModeOn = UiModeUtils.wideModeOn(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(gameData?.title ?? gameId),
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: const [_ChatButton()],
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
          bottomSheet:
              !wideModeOn && showChat ? const _ChatBottomSheet() : null,
        );
      },
    );
  }
}

class _Themes extends WatchingWidget {
  const _Themes();

  @override
  Widget build(BuildContext context) {
    final gameData =
        watchValue<GameLobbyController, SocketIOGameJoinEventPayload?>(
      (p0) => p0.gameData,
    );

    final round = gameData?.gameState.currentRound;
    final themes = round
        ?.sortedThemes()
        .map((theme) => GameLobbyTheme(theme: theme).paddingBottom(16))
        .toList();

    if (themes == null) {
      if (gameData?.me.role == PlayerRole.showman) {
        return FilledButton(
          onPressed: getIt<GameLobbyController>().startGame,
          child: Text(LocaleKeys.start_game.tr()),
        ).center();
      }
      return const CircularProgressIndicator().center();
    }

    return ListView.builder(
      itemCount: themes.length,
      itemBuilder: (context, index) => themes[index],
    );
  }
}

class _ChatButton extends StatelessWidget {
  const _ChatButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: getIt<GameLobbyController>().toggleDesktopChat,
      icon: const Icon(Icons.chat),
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

class _ChatBottomSheet extends StatelessWidget {
  const _ChatBottomSheet();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: const _Chat().paddingBottom(16));
  }
}

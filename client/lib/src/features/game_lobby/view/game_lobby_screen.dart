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
    super.initState();
    getIt<GameLobbyController>().join(gameId: widget.gameId);
  }

  @override
  void deactivate() {
    getIt<GameLobbyController>().leave();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final showChat = watchValue((GameLobbyController e) => e.showChat);
    final gameData = watchValue((GameLobbyController e) => e.gameListData);

    callOnce(
      (context) {
        // Set init value for showing chat to [false] for mobile
        final wideMode = UiModeUtils.wideModeOn(context);
        if (wideMode) {
          getIt<GameLobbyController>().showChat.value = true;
        }
      },
    );

    final chatWideModeOn = UiModeUtils.wideModeOn(context, UiModeUtils.large);
    final showDesktopChat = chatWideModeOn && showChat;

    return ColoredBox(
      color: context.theme.colorScheme.surface,
      child: MaxSizeContainer(
        maxWidth: UiModeUtils.extraLarge,
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Text(gameData?.title ?? widget.gameId),
            leading: IconButton(
              onPressed: () async {
                final exit = await ConfirmDialog(
                  title: LocaleKeys.leave_game_confirmation.tr(),
                ).show(context);
                if (exit && context.mounted) Navigator.pop(context);
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: [_ChatButton(show: showChat)],
            actionsPadding: 8.right,
            elevation: 0,
            scrolledUnderElevation: 0,
            notificationPredicate: (_) => false,
          ),
          body: SafeArea(
            bottom: false,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _BodyBuilder(playerOnLeft: chatWideModeOn).expand(),
                    AppAnimatedSwitcher(
                      visible: showDesktopChat,
                      child: const _Chat()
                          .withWidth(GameLobbyStyles.desktopChatWidth),
                    ),
                  ],
                ),
                AppAnimatedSwitcher(
                  visible: !chatWideModeOn && showChat,
                  disableSizeTransition: true,
                  child: const _Chat().paddingAll(16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BodyBuilder extends StatelessWidget {
  const _BodyBuilder({required this.playerOnLeft});
  final bool playerOnLeft;
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (playerOnLeft) {
      child = Row(
        spacing: 8,
        children: [
          const GameLobbyPlayers(axis: Axis.vertical)
              .withWidth(GameLobbyStyles.players.width)
              .paddingSymmetric(horizontal: 8)
              .paddingTop(16)
              .paddingLeft(16),
          const GameLobbyThemes().expand(),
        ],
      );
    } else {
      child = Column(
        children: [
          const GameLobbyPlayers(axis: Axis.horizontal)
              .withHeight(GameLobbyStyles.playersMobile.height),
          const Divider(height: 0, thickness: .4).paddingTop(8),
          const GameLobbyThemes().expand(),
        ],
      );
    }
    return child;
  }
}

class _ChatButton extends StatelessWidget {
  const _ChatButton({required this.show});
  final bool show;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: getIt<GameLobbyController>().toggleDesktopChat,
      icon: Icon(show ? Icons.chat_bubble_outline : Icons.chat),
    );
  }
}

class _Chat extends StatelessWidget {
  const _Chat();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: context.theme.colorScheme.surfaceContainer,
        child: const ChatScreen(),
      ),
    );
  }
}

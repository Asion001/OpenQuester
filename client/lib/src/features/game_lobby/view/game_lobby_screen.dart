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

    return LayoutBuilder(
      builder: (context, constrains) {
        final wideModeOn = UiModeUtils.wideModeOn(
          context,
          UiModeUtils.wideModeWidth + 150,
        );
        final showDesktopChat = wideModeOn && showChat;

        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: Text(gameData?.title ?? widget.gameId),
            leading: IconButton(
              onPressed: Navigator.of(context).pop,
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
                    _BodyBuilder(playerOnLeft: wideModeOn).expand(),
                    AppAnimatedSwitcher(
                      visible: showDesktopChat,
                      child: const _Chat().withWidth(250),
                    ),
                  ],
                ),
                AppAnimatedSwitcher(
                  visible: !wideModeOn && showChat,
                  disableSizeTransition: true,
                  child: const _Chat().paddingAll(16),
                ),
              ],
            ),
          ),
        );
      },
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
              .withWidth(150)
              .paddingAll(8)
              .paddingLeft(16),
          const GameLobbyThemes().expand(),
        ],
      );
    } else {
      child = Column(
        children: [
          const GameLobbyPlayers(axis: Axis.horizontal).withHeight(80),
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

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class GameLobbyScreen extends StatefulWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gameId),
      ),
      body: const MaxSizeContainer(
        maxWidth: UiModeUtils.maximumDialogWidth,
        child: ChatScreen(),
      ),
    );
  }
}

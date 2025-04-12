import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class GameLobbyScreen extends StatelessWidget {
  const GameLobbyScreen({
    @PathParam() required this.gameId,
    super.key,
  });
  final String gameId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gameId),
      ),
      body: const MaxSizeContainer(
        maxWidth: UiModeUtils.maximumDialogWidth,
        child: ChatScreen(),
      ),
    );
  }
}

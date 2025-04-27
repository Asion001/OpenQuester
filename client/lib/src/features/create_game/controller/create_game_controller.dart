import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class CreateGameController {
  CreateGameController();

  final state = ValueNotifier(const CreateGameDto());
  final formKey = GlobalKey<FormState>();

  void dispose() {
    state.dispose();
  }

  Future<void> createGame() async {
    final formValid = formKey.currentState?.validate() ?? false;
    if (!formValid) return;

    final game = await Api.I.api.games.postV1Games(
      body: state.value.toRequestData(),
    );
    await AppRouter.I.replace(GameLobbyRoute(gameId: game.id));
  }
}

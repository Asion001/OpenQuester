import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class CreateGameController {
  CreateGameController();

  final state = ValueNotifier(const CreateGameDto());

  void dispose() {
    state.dispose();
  }
}

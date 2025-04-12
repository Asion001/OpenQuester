import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:openquester/common_imports.dart';

@singleton
class GameChatController {
  List<Message> messages = [];
  late chat_types.User user;

  void onSendPressed(chat_types.PartialText text) {}
}

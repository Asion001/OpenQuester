import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:openquester/common_imports.dart';

class ChatScreen extends WatchingWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = watchIt<SocketChatController>();
    return Chat(
      onSendPressed: controller.onSendPressed,
      messages: controller.messages,
      user: controller.user,
      theme: AppTheme.chatTheme(context),
      showUserNames: true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart'
    hide Composer, SimpleTextMessage;
import 'package:openquester/common_imports.dart';

class ChatScreen extends WatchingWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = watchIt<SocketChatController>();

    if (controller.user == null || controller.chatController == null) {
      return const CircularProgressIndicator().center();
    }

    return Chat(
      key: ValueKey(controller.chatController),
      chatController: controller.chatController!,
      onMessageSend: controller.onSendPressed,
      currentUserId: controller.user!.id,
      resolveUser: controller.resolveUser,
      backgroundColor: context.theme.colorScheme.surfaceContainer,
      theme: ChatTheme.fromThemeData(context.theme),
      builders: Builders(
        composerBuilder: (context) => const Composer(),
        textMessageBuilder: textMessageBuilder,
      ),
    );
  }

  Widget textMessageBuilder(
    BuildContext context,
    TextMessage message,
    int index,
  ) {
    return SimpleTextMessage(message: message, index: index);
  }
}

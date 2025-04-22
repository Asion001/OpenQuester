import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:openquester/openquester.dart';
import 'package:socket_io_client/socket_io_client.dart';

@singleton
class SocketChatController extends ChangeNotifier {
  List<Message> messages = [];

  User? user;
  Socket? _socket;
  List<User>? users;

  void clear() {
    _socket?.destroy();
    _socket = null;
    user = null;
    messages.clear();
    users?.clear();
    users = null;
    notifyListeners();
  }

  Future<void> init({
    required Socket socket,
    required List<User> users,
  }) async {
    // Clear before connect
    clear();

    final restUser = getIt<AuthController>().user;
    if (restUser == null) throw UserError(LocaleKeys.user_unauthorized.tr());

    // Set chat user
    user = User(
      id: restUser.id.toString(),
      firstName: restUser.username,
      imageUrl: restUser.avatar,
      role: Role.user,
    );

    // Setup socket
    _socket = socket;
    _socket?.on(SocketIOEvents.chatMessage.name, _onChatMessage);

    notifyListeners();
  }

  void onSendPressed(PartialText message) {
    _socket?.emit(
      SocketIOEvents.chatMessage.name,
      jsonEncode(
        SocketIOChatMessageContent(message: message.text).toJson(),
      ),
    );
    final textMessage = TextMessage(
      id: UniqueKey().toString(),
      author: user!,
      text: message.text,
      createdAt: DateTime.now().millisecondsSinceEpoch,
    );
    messages.insert(0, textMessage);
    notifyListeners();
  }

  void _onChatMessage(dynamic data) {
    final message = SocketIOChatMessageEventPayload.fromJson(
      data as Map<String, dynamic>,
    );
    final user = users?.firstWhereOrNull(
      (e) => e.id == message.user.toString(),
    );
    final textMessage = TextMessage(
      id: UniqueKey().toString(),
      author: user!,
      text: message.message,
      createdAt: message.timestamp.millisecondsSinceEpoch,
    );
    messages.insert(0, textMessage);
    notifyListeners();
  }
}

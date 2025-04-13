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

  static const _eventKey = 'chat-message';

  void clear() {
    _socket?.destroy();
    _socket = null;
    user = null;
    messages.clear();
    notifyListeners();
  }

  Future<void> init({required Socket socket}) async {
    clear();
    final restUser = getIt<AuthController>().user!;
    _socket = socket;
    _socket?.on(_eventKey, _onChatMessage);
    user = User(
      id: restUser.id.toString(),
      firstName: restUser.username,
      imageUrl: restUser.avatar,
      role: Role.user,
    );
    notifyListeners();
  }

  void onSendPressed(PartialText message) {
    _socket?.emit(_eventKey, jsonEncode({'message': message.text}));
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
    final message = IOGameChatMessage.fromJson(
      data as Map<String, dynamic>,
    );
    final textMessage = TextMessage(
      id: UniqueKey().toString(),
      author: User(id: message.user.toString(), firstName: message.username),
      text: message.message,
      createdAt: message.timestamp,
    );
    messages.insert(0, textMessage);
    notifyListeners();
  }
}

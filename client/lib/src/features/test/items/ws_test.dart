import 'package:flutter/material.dart';
import 'package:openquester/src/connection/socket/socket_controller.dart';
import 'package:openquester/src/core/get_it.dart';

class WsTest extends StatelessWidget {
  const WsTest({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: getIt.get<SocketController>().createConnection,
      icon: const Icon(Icons.connect_without_contact),
    );
  }
}

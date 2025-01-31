import 'package:flutter/material.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:openquester/src/connection/socket/socket_controller.dart';

class WsTest extends StatelessWidget {
  const WsTest({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: getIt.get<SocketController>().createConnection,
      icon: Icon(Icons.connect_without_contact),
    );
  }
}

import 'package:injectable/injectable.dart';
import 'package:openquester/src/application/env.dart';
import 'package:openquester/src/application/logger.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

@singleton
class WsController {
  Future<void> connect() async {
    logger.d('connecting');
    final socket = io.io(
      Env.apiUrl.toString(),
      io.OptionBuilder()
          .setTransports(['websocket']) // for Flutter or Dart VM
          .disableAutoConnect() // disable auto-connection
          .build(),
    );
    socket.onConnect((_) {
      logger.d('connect');
      socket.send(['asd']);
    });
    socket.onDisconnect((_) => logger.d('disconnect'));
    socket.on('event', (data) => logger.d(data));
    socket.on('response', (data) => logger.d(data));
    socket.connect();
    socket.emit('message', 'test connected');
    socket.receiveBuffer = [];
  }
}

import 'package:injectable/injectable.dart';
import 'package:openquester/src/application/env.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

@singleton
class WsController {
  Future<void> connect() async {
    print('connecting');
    final socket = IO.io(
      Env.apiUrl.toString(),
      IO.OptionBuilder()
          .setTransports(['websocket']) // for Flutter or Dart VM
          .disableAutoConnect() // disable auto-connection
          .build(),
    );
    socket.onConnect((_) {
      print('connect');
      socket.send(['asd']);
    });
    socket.onDisconnect((_) => print('disconnect'));
    socket.on('event', (data) => print(data));
    socket.on('response', (data) => print(data));
    socket.connect();
    socket.emit('message', 'test connected');
    socket.receiveBuffer = [];
  }
}

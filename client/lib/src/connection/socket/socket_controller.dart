import 'dart:convert';

import 'package:openquester/common_imports.dart';
import 'package:socket_io_client/socket_io_client.dart';

@Singleton(order: 3)
class SocketController {
  static final socketUri = Env.apiUrl;
  late Socket general;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await _connectGeneral();

    // Reconnect on auth change
    getIt<AuthController>().addListener(reconnect);
  }

  Future<void> _connectGeneral() async {
    general = await createConnection();
    general.connect();
  }

  Future<Socket> createConnection({String? path}) async {
    final optionsBuilder = OptionBuilder()
      ..setTransports(['websocket'])
      ..enableForceNewConnection()
      ..disableAutoConnect();
    final options = optionsBuilder.build();
    final url = socketUri.replace(path: path ?? '').toString();
    final socket = io(url, options)
      ..onAny(_logRequest)
      ..onAnyOutgoing(_logOutgoing)
      ..onConnect(_onConnect)
      ..onDisconnect((_) => _log('onDisconnect'))
      ..onError((e) => _log('onError', e))
      ..onReconnectError((e) => _log('onReconnectError', e))
      ..onConnectError((e) => _log('onConnectError', e));

    return socket;
  }

  void _onConnect(void _) {
    logger.d('SocketController.general.id: ${general.id}');
    _log('onConnect');
  }

  Future<void> _logOutgoing(String event, dynamic data) async =>
      _logRequest(event, data, outgoing: true);

  Future<void> _logRequest(
    String event,
    dynamic data, {
    bool outgoing = false,
  }) async {
    final logData = data is Map ? jsonEncode(data) : data.toString();
    _log('event', [event, logData].join('\n'));
  }

  void _log(String event, [dynamic data = '']) {
    logger.d('SocketController.$event $data');
  }

  Future<void> reconnect() async {
    general
      ..disconnect()
      ..dispose();
    await _connectGeneral();
  }
}

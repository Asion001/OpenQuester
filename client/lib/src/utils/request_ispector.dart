import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:openquester/src/core/router.dart';

Alice alice = Alice(
  configuration: AliceConfiguration(
    navigatorKey: getIt<AppRouter>().navigatorKey,
    showNotification: false,
  ),
)..addAdapter(aliceDioAdapter);

AliceDioAdapter aliceDioAdapter = AliceDioAdapter();

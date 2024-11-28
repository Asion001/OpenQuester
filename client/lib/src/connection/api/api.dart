import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:openquester/src/connection/controllers/login_controller.dart';
import 'package:openquester/src/utils/request_ispector.dart';

import '../../core/env.dart';

@singleton
class Api {
  final api = RestClient(
    Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Accept-Encoding': 'gzip',
        },
      ),
    )..interceptors.addAll([
        authInterceptor,
        timeoutInterceptor,
        aliceDioAdapter,
      ]),
    baseUrl: Env.apiUrl.toString(),
  );
}

final authInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) {
    final accessToken = getIt.get<LoginController>().authData?.accessToken;
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    handler.next(options);
  },
);

final timeoutInterceptor = InterceptorsWrapper(
  onRequest: (options, handler) {
    options.sendTimeout = const Duration(seconds: 5);
    handler.next(options);
  },
);

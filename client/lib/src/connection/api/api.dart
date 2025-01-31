import 'package:dio/dio.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 1)
class Api {
  static Api get I => getIt<Api>();

  final api = RestClient(
    Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Accept-Encoding': 'gzip',
        },
      ),
    )..interceptors.addAll([
        dioCacheInterceptor,
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

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';

@Singleton(order: 0)
class DioController {
  late Dio _dio;

  @postConstruct
  void init() {
    _dio = Dio(
      baseOptions(),
    )..interceptors.addAll(_interceptors());
  }

  Dio get client => _dio;

  BaseOptions baseOptions() {
    final acceptEncoding = 'gzip';

    return BaseOptions(
      persistentConnection: true,
      headers: {
        'Content-Type': 'application/json',
        if (!kIsWeb) 'Accept-Encoding': acceptEncoding,
      },
    );
  }

  List<Interceptor> _interceptors() {
    return [
      _dioCacheInterceptor,
      _authInterceptor,
      if (!kIsWeb) _timeoutInterceptor,
      aliceDioAdapter,
    ];
  }

  final _authInterceptor = InterceptorsWrapper(
    onRequest: (options, handler) {
      final accessToken = getIt.get<LoginController>().authData?.accessToken;
      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
      handler.next(options);
    },
  );

  final _timeoutInterceptor = InterceptorsWrapper(
    onRequest: (options, handler) {
      options.sendTimeout = const Duration(seconds: 5);
      handler.next(options);
    },
  );

  final _dioCacheInterceptor = DioCacheInterceptor(
    options: CacheOptions(
      // A default store is required for interceptor.
      store: MemCacheStore(),
    ),
  );
}

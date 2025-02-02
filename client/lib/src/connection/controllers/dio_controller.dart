import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';
import 'package:requests_inspector/requests_inspector.dart';

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
      _authInterceptor,
      _dioCacheInterceptor,
      if (!kIsWeb) _timeoutInterceptor,
      RequestsInspectorInterceptor(),
    ];
  }

  static final _authInterceptor = InterceptorsWrapper(
    onRequest: (options, handler) {
      _setAccessToken(options);
      handler.next(options);
    },
  );

  static Future<void> _setAccessToken(RequestOptions options) async {
    final accessToken = await getIt.get<LoginController>().accessToken;
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
  }

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

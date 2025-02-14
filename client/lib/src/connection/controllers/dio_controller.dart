import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';
import 'package:path_provider/path_provider.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:universal_io/io.dart';

@Singleton(order: 0)
class DioController {
  late Dio _dio;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _dio = Dio(baseOptions())..interceptors.addAll(await _interceptors());
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

  Future<CookieJar> _getCookieJar() async {
    if (kIsWeb) {
      return WebCookieJar();
    } else {
      return _getPersistCookieJar();
    }
  }

  Future<PersistCookieJar> _getPersistCookieJar() async {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String appDocPath = appDocDir.path;
    final jar = PersistCookieJar(
      ignoreExpires: true,
      storage: FileStorage("$appDocPath/.cookies/"),
    );
    return jar;
  }

  Future<List<Interceptor>> _interceptors() async {
    return [
      if (!kIsWeb) CookieManager(await _getCookieJar()),
      _dioCacheInterceptor,
      if (!kIsWeb) _timeoutInterceptor,
      RequestsInspectorInterceptor(),
    ];
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

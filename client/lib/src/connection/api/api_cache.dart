import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

DioCacheInterceptor get dioCacheInterceptor {
  final options = CacheOptions(
    // A default store is required for interceptor.
    store: MemCacheStore(),
  );
  return DioCacheInterceptor(options: options);
}

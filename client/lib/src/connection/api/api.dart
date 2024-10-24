import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';
import 'package:openquester/src/application/get_it.dart';
import 'package:openquester/src/connection/controllers/login_controller.dart';

import '../../application/env.dart';

@singleton
class Api {
  final api = Openapi(
    basePathOverride: Env.apiUrl.toString(),
    interceptors: [
      authInterceptor,
      timeoutInterceptor,
    ],
  ).getAuthApi();
}

// class BearerAuthInterceptor extends AuthInterceptor {
//   final Map<String, String> tokens = {};

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) {
//     final accessToken = getIt.get<LoginController>().authData?.accessToken;
//     if (accessToken != null) {
//       options.headers['Authorization'] = 'Bearer $accessToken';
//     }
//     super.onRequest(options, handler);
//   }
// }

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

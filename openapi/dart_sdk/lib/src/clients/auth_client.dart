// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth_refresh_input.dart';
import '../models/input_login_user.dart';
import '../models/response_auth_data.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// User Login
  @POST('/v1/auth/login')
  Future<ResponseAuthData> postV1AuthLogin({
    @Body() required InputLoginUser body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Refresh tokens
  @POST('/v1/auth/refresh')
  Future<ResponseAuthData> postV1AuthRefresh({
    @Body() required AuthRefreshInput body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

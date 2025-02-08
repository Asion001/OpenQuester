// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/input_oauth_login.dart';
import '../models/logout_response.dart';
import '../models/response_user.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// Logout user
  @POST('/v1/auth/oauth2')
  Future<ResponseUser> postV1AuthOauth2({
    @Body() required InputOauthLogin body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Logout user
  @GET('/v1/auth/logout')
  Future<LogoutResponse> getV1AuthLogout({
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

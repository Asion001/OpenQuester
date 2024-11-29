// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/input_login_user.dart';
import '../models/input_register_user.dart';
import '../models/object4.dart';
import '../models/response_auth_data.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// User Registration
  @POST('/v1/auth/register')
  Future<ResponseAuthData> postV1AuthRegister({
    @Body() required InputRegisterUser body,
    @DioOptions() RequestOptions? options,
  });

  /// User Login
  @POST('/v1/auth/login')
  Future<ResponseAuthData> postV1AuthLogin({
    @Body() required InputLoginUser body,
    @DioOptions() RequestOptions? options,
  });

  /// Refresh tokens.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/v1/auth/refresh')
  Future<ResponseAuthData> postV1AuthRefresh({
    @Body() required Object4 body,
    @DioOptions() RequestOptions? options,
  });
}

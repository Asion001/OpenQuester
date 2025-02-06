// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/logout_response.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// Initiate Discord OAuth
  @GET('/v1/auth/discord')
  Future<void> getV1AuthDiscord({
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Handle Discord OAuth callback
  @GET('/v1/auth/discord/callback')
  Future<void> getV1AuthDiscordCallback({
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

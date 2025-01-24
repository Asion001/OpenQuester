// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/input_register_user.dart';
import '../models/input_update_user.dart';
import '../models/response_auth_data.dart';
import '../models/response_private_user.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String? baseUrl}) = _UsersClient;

  /// Get user info by id
  @GET('/v1/users/{id}')
  Future<ResponsePrivateUser> getV1UsersId({
    @Path('id') required String id,
    @DioOptions() RequestOptions? options,
  });

  /// Update user by id
  @PATCH('/v1/users/{id}')
  Future<ResponsePrivateUser> patchV1UsersId({
    @Path('id') required String id,
    @Body() required InputUpdateUser body,
    @DioOptions() RequestOptions? options,
  });

  /// Delete user by id
  @DELETE('/v1/users/{id}')
  Future<void> deleteV1UsersId({
    @Path('id') required String id,
    @DioOptions() RequestOptions? options,
  });

  /// Get all users info
  @GET('/v1/users/')
  Future<List<ResponsePrivateUser>> getV1Users({
    @DioOptions() RequestOptions? options,
  });

  /// User Registration
  @POST('/v1/users/')
  Future<ResponseAuthData> postV1Users({
    @Body() required InputRegisterUser body,
    @DioOptions() RequestOptions? options,
  });
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/input_update_user.dart';
import '../models/response_private_user.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  /// Get user info by id
  @GET('/v1/user/{id}')
  Future<ResponsePrivateUser> getV1UserId({
    @Path('id') required String id,
  });

  /// Update user by id
  @PATCH('/v1/user/{id}')
  Future<ResponsePrivateUser> patchV1UserId({
    @Path('id') required String id,
    @Body() required InputUpdateUser body,
  });

  /// Delete user by id
  @DELETE('/v1/user/{id}')
  Future<void> deleteV1UserId({
    @Path('id') required String id,
  });

  /// Get user by his token
  @GET('/v1/user/')
  Future<ResponsePrivateUser> getV1User();

  /// Update user by his token
  @PATCH('/v1/user/')
  Future<ResponsePrivateUser> patchV1User({
    @Body() required InputUpdateUser body,
  });

  /// Delete user by his token
  @DELETE('/v1/user/')
  Future<void> deleteV1User();
}

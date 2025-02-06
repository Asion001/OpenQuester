// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/input_update_user.dart';
import '../models/order_direction.dart';
import '../models/paginated_users.dart';
import '../models/pagination_limit.dart';
import '../models/pagination_offset.dart';
import '../models/response_user.dart';
import '../models/users_sort_by.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String? baseUrl}) = _UsersClient;

  /// Get user info by id
  @GET('/v1/users/{id}')
  Future<ResponseUser> getV1UsersId({
    @Path('id') required String id,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Update user by id
  @PATCH('/v1/users/{id}')
  Future<ResponseUser> patchV1UsersId({
    @Path('id') required String id,
    @Body() required InputUpdateUser body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Delete user by id
  @DELETE('/v1/users/{id}')
  Future<void> deleteV1UsersId({
    @Path('id') required String id,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get all users info
  @GET('/v1/users/')
  Future<PaginatedUsers> getV1Users({
    @Query('sortBy') required UsersSortBy sortBy,
    @Query('order') required OrderDirection order,
    @Query('limit') required PaginationLimit limit,
    @Query('offset') required PaginationOffset offset,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get info about current user
  @GET('/v1/me')
  Future<ResponseUser> getV1Me({
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Update current user
  @PATCH('/v1/me')
  Future<ResponseUser> patchV1Me({
    @Body() required InputUpdateUser body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Delete current user
  @DELETE('/v1/me')
  Future<void> deleteV1Me({
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

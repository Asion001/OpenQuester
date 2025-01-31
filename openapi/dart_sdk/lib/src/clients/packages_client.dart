// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/i_package_item.dart';
import '../models/object3.dart';
import '../models/order_direction.dart';
import '../models/packages_sort_by.dart';
import '../models/paginated_packages.dart';
import '../models/pagination_limit.dart';
import '../models/pagination_offset.dart';
import '../models/post_v1_packages_response.dart';

part 'packages_client.g.dart';

@RestApi()
abstract class PackagesClient {
  factory PackagesClient(Dio dio, {String? baseUrl}) = _PackagesClient;

  /// Get upload links for every file in `content.json`.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/v1/packages')
  Future<PostV1PackagesResponse> postV1Packages({
    @Body() required Object3 body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get all packages
  @GET('/v1/packages')
  Future<PaginatedPackages> getV1Packages({
    @Query('sortBy') required PackagesSortBy sortBy,
    @Query('order') required OrderDirection order,
    @Query('limit') required PaginationLimit limit,
    @Query('offset') required PaginationOffset offset,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get package by id
  @GET('/v1/packages/{id}')
  Future<IPackageItem> getV1PackagesId({
    @Path('id') required String id,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

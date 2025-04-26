// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/order_direction.dart';
import '../models/package_creation_input.dart';
import '../models/package_response.dart';
import '../models/package_upload_response.dart';
import '../models/packages_sort_by.dart';
import '../models/paginated_packages.dart';
import '../models/pagination_limit.dart';
import '../models/pagination_offset.dart';
import '../models/pagination_title.dart';

part 'packages_client.g.dart';

@RestApi()
abstract class PackagesClient {
  factory PackagesClient(Dio dio, {String? baseUrl}) = _PackagesClient;

  /// Get upload links for every file in `content.json`
  @POST('/v1/packages')
  Future<PackageUploadResponse> postV1Packages({
    @Body() required PackageCreationInput body,
  });

  /// Get all packages.
  ///
  /// [title] - Search by package title, not case sensitive.
  @GET('/v1/packages')
  Future<PaginatedPackages> getV1Packages({
    @Query('limit') required PaginationLimit limit,
    @Query('offset') required PaginationOffset offset,
    @Query('sortBy') PackagesSortBy? sortBy,
    @Query('order') OrderDirection? order,
    @Query('title') PaginationTitle? title,
  });

  /// Get package by id
  @GET('/v1/packages/{id}')
  Future<PackageResponse> getV1PackagesId({
    @Path('id') required int id,
  });
}

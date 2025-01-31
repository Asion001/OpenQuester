// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/object3.dart';
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
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/delete_v1_files_response.dart';
import '../models/get_v1_files_response.dart';
import '../models/object0.dart';
import '../models/object1.dart';
import '../models/object2.dart';
import '../models/post_v1_files_response.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String? baseUrl}) = _FilesClient;

  /// Get link to file from server.
  ///
  /// [body] - Name not received and was auto-generated.
  @GET('/v1/files')
  Future<GetV1FilesResponse> getV1Files({
    @Body() required Object0 body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get link to upload file on server.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/v1/files')
  Future<PostV1FilesResponse> postV1Files({
    @Body() required Object1 body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Delete file from bucket.
  ///
  /// [body] - Name not received and was auto-generated.
  @DELETE('/v1/files')
  Future<DeleteV1FilesResponse> deleteV1Files({
    @Body() required Object2 body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

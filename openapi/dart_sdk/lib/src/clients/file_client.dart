// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/delete_v1_file_response.dart';
import '../models/get_v1_file_response.dart';
import '../models/object0.dart';
import '../models/object1.dart';
import '../models/object2.dart';
import '../models/post_v1_file_response.dart';

part 'file_client.g.dart';

@RestApi()
abstract class FileClient {
  factory FileClient(Dio dio, {String? baseUrl}) = _FileClient;

  /// Get link to file from server.
  ///
  /// [body] - Name not received and was auto-generated.
  @GET('/v1/file')
  Future<GetV1FileResponse> getV1File({
    @Body() required Object0 body,
    @DioOptions() RequestOptions? options,
  });

  /// Get link to upload file on server.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/v1/file')
  Future<PostV1FileResponse> postV1File({
    @Body() required Object1 body,
    @DioOptions() RequestOptions? options,
  });

  /// Delete file from bucket.
  ///
  /// [body] - Name not received and was auto-generated.
  @DELETE('/v1/file')
  Future<DeleteV1FileResponse> deleteV1File({
    @Body() required Object2 body,
    @DioOptions() RequestOptions? options,
  });
}

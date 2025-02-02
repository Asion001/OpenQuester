// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/delete_v1_files_filename_response.dart';
import '../models/get_v1_files_filename_response.dart';
import '../models/post_v1_files_filename_response.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String? baseUrl}) = _FilesClient;

  /// Get link to file from server
  @GET('/v1/files/{filename}')
  Future<GetV1FilesFilenameResponse> getV1FilesFilename({
    @Path('filename') required String filename,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get link to upload file on server
  @POST('/v1/files/{filename}')
  Future<PostV1FilesFilenameResponse> postV1FilesFilename({
    @Path('filename') required String filename,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Delete file from bucket
  @DELETE('/v1/files/{filename}')
  Future<DeleteV1FilesFilenameResponse> deleteV1FilesFilename({
    @Path('filename') required String filename,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}

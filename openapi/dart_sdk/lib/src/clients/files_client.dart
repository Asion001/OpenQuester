// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/delete_request_response.dart';
import '../models/file_link_response.dart';
import '../models/file_upload_link_response.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String? baseUrl}) = _FilesClient;

  /// Get link to file from server
  @GET('/v1/files/{filename}')
  Future<FileLinkResponse> getV1FilesFilename({
    @Path('filename') required String filename,
  });

  /// Get link to upload file on server
  @POST('/v1/files/{filename}')
  Future<FileUploadLinkResponse> postV1FilesFilename({
    @Path('filename') required String filename,
  });

  /// Delete file from bucket
  @DELETE('/v1/files/{filename}')
  Future<DeleteRequestResponse> deleteV1FilesFilename({
    @Path('filename') required String filename,
  });
}

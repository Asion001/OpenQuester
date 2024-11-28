// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/object3.dart';
import '../models/post_v1_package_upload_response.dart';

part 'package_client.g.dart';

@RestApi()
abstract class PackageClient {
  factory PackageClient(Dio dio, {String? baseUrl}) = _PackageClient;

  /// Get upload links for every file in `content.json`.
  ///
  /// [body] - Name not received and was auto-generated.
  @POST('/v1/package/upload')
  Future<PostV1PackageUploadResponse> postV1PackageUpload({
    @Body() required Object3 body,
  });
}

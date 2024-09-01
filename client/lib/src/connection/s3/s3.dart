import 'package:s3_storage/s3_storage.dart';
export 'package:s3_storage/s3_storage.dart';

class S3 {
  const S3({
    required S3Storage s3,
    required this.bucket,
  }) : _s3 = s3;

  final S3Storage _s3;
  final String bucket;

  Future<Uri> getUri(String object, {S3Method method = S3Method.get}) async {
    final url = await _s3.presignedUrl(
      method.name.toUpperCase(),
      bucket,
      object,
    );
    return Uri.parse(url);
  }
}

enum S3Method { get, put, head, delete }

import 'package:cached_network_image/cached_network_image.dart';

class NetworkImageProvider extends CachedNetworkImageProvider {
  const NetworkImageProvider(
    super.url, {
    super.maxHeight,
    super.maxWidth,
    super.scale = 1.0,
    super.errorListener,
    super.headers,
    super.cacheManager,
    super.cacheKey,
  });
}

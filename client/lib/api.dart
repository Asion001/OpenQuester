import 'package:openapi/openapi.dart';

final api = Openapi(
  basePathOverride: 'http://localhost:3000',
).getDefaultApi();

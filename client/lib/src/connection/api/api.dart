import 'package:openapi/openapi.dart';

import '../../application/env.dart';

final api = Openapi(
  basePathOverride: Env.apiUrl.toString(),
).getDefaultApi();

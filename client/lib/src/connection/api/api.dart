import 'package:openquester/common_imports.dart';

@Singleton(order: 1)
class Api {
  static Api get I => getIt<Api>();

  RestClient get api =>
      RestClient(getIt<DioController>().client, baseUrl: Env.apiUrl.toString());
}

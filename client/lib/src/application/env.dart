// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  useConstantCase: true,
  requireEnvFile: false,
)
class Env {
  @EnviedField(defaultValue: 'https://api.openquester.app')
  static Uri apiUrl = _Env.apiUrl;
}

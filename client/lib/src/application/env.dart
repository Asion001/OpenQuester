// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  useConstantCase: true,
  requireEnvFile: false,
)
abstract class Env {
  @EnviedField(defaultValue: 'https://api.openquester.app/v1')
  static Uri apiUrl = _Env.apiUrl;
}

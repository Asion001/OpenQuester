// Openapi Generator last run: : 2024-08-01T18:23:45.594219
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'api/',
  inputSpecFile: '../server/schema.json',
  useNextGen: true,
  alwaysRun: true,
)
class ApiConfig {}
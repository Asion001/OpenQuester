import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  filter: ProductionFilter(),
  printer: kDebugMode ? PrettyPrinter() : SimplePrinter(),
  level: kDebugMode ? Level.trace : Level.info,
  output: ConsoleOutput(),
);

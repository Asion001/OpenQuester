// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 6.2.0
// **************************************************************************

import 'package:squadron/squadron.dart';

import 'upload_isolate.dart';

void main() {
  /// Web entry point for ParseSiqFile
  run($ParseSiqFileInitializer);
}

EntryPoint $getParseSiqFileActivator(SquadronPlatformType platform) {
  if (platform.isWeb) {
    return Squadron.uri('~/workers/upload_isolate.web.g.dart.js');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}

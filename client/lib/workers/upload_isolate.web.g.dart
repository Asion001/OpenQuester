// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: WorkerGenerator 7.1.0 (Squadron 7.1.1)
// **************************************************************************

import 'package:squadron/squadron.dart';

import 'upload_isolate.dart';

void main() {
  /// Web entry point for ParseSiqFile
  run($ParseSiqFileInitializer);
}

EntryPoint $getParseSiqFileActivator(SquadronPlatformType platform) {
  if (platform.isJs) {
    return Squadron.uri('~/workers/upload_isolate.web.g.dart.js');
  } else if (platform.isWasm) {
    return Squadron.uri('~/workers/upload_isolate.web.g.dart.wasm');
  } else {
    throw UnsupportedError('${platform.label} not supported.');
  }
}

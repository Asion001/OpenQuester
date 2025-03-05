// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_isolate.dart';

// **************************************************************************
// Generator: WorkerGenerator 6.2.0
// **************************************************************************

/// WorkerService class for ParseSiqFile
base class _$ParseSiqFileWorkerService extends ParseSiqFile
    implements WorkerService {
  _$ParseSiqFileWorkerService() : super();

  @override
  late final Map<int, CommandHandler> operations =
      Map.unmodifiable(<int, CommandHandler>{
    _$computeId: ($) => compute(_$X.$impl.$dsr0($.args[0])),
  });

  static const int _$computeId = 1;
}

/// Service initializer for ParseSiqFile
WorkerService $ParseSiqFileInitializer(WorkerRequest $$) =>
    _$ParseSiqFileWorkerService();

/// Worker for ParseSiqFile
base class ParseSiqFileWorker extends Worker implements ParseSiqFile {
  ParseSiqFileWorker(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ParseSiqFileActivator(Squadron.platformType));

  ParseSiqFileWorker.vm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ParseSiqFileActivator(SquadronPlatformType.vm));

  ParseSiqFileWorker.js(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ParseSiqFileActivator(SquadronPlatformType.js),
            threadHook: threadHook, exceptionManager: exceptionManager);

  @override
  Future<String> compute(Uint8List fileData) =>
      send(_$ParseSiqFileWorkerService._$computeId,
          args: [_$X.$impl.$sr1(fileData)]).then(_$X.$impl.$dsr2);
}

/// Worker pool for ParseSiqFile
base class ParseSiqFileWorkerPool extends WorkerPool<ParseSiqFileWorker>
    implements ParseSiqFile {
  ParseSiqFileWorkerPool(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ParseSiqFileWorker(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ParseSiqFileWorkerPool.vm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ParseSiqFileWorker.vm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  ParseSiqFileWorkerPool.js(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ParseSiqFileWorker.js(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<String> compute(Uint8List fileData) =>
      execute((w) => w.compute(fileData));
}

final class _$X {
  _$X._();

  static _$X? _impl;

  static _$X get $impl {
    if (_impl == null) {
      Squadron.onConverterChanged(() => _impl = _$X._());
      _impl = _$X._();
    }
    return _impl!;
  }

  late final $dsr0 =
      (($) => (const TypedDataMarshaler<Uint8List>()).unmarshal($));
  late final $sr1 = (($) => (const TypedDataMarshaler<Uint8List>()).marshal($));
  late final $dsr2 = Squadron.converter.value<String>();
}

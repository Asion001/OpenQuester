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
    _$computeId: ($) => compute(_$X.$impl.$dsr1($.args[0])),
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

  ParseSiqFileWorker.wasm(
      {PlatformThreadHook? threadHook, ExceptionManager? exceptionManager})
      : super($ParseSiqFileActivator(SquadronPlatformType.wasm));

  @override
  Future<String> compute(List<int> fileData) =>
      send(_$ParseSiqFileWorkerService._$computeId,
          args: [_$X.$impl.$sr2(fileData)]).then(_$X.$impl.$dsr3);
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

  ParseSiqFileWorkerPool.wasm(
      {ConcurrencySettings? concurrencySettings,
      PlatformThreadHook? threadHook,
      ExceptionManager? exceptionManager})
      : super(
          (ExceptionManager exceptionManager) => ParseSiqFileWorker.wasm(
              threadHook: threadHook, exceptionManager: exceptionManager),
          concurrencySettings: concurrencySettings,
        );

  @override
  Future<String> compute(List<int> fileData) =>
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

  late final $dsr0 = Squadron.converter.value<int>();
  late final $dsr1 = Squadron.converter.list<int>($dsr0);
  late final $sr2 = Squadron.converter.list();
  late final $dsr3 = Squadron.converter.value<String>();
}

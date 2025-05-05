import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:openquester/openquester.dart'
    show
        PackageController,
        PackageId,
        PackageListItem,
        PackageResponse,
        PackageUploadController,
        PlatformFile,
        ToastController;

class MockPackageUploadController extends Mock
    implements PackageUploadController {
  @override
  bool get loading => super.noSuchMethod(
        Invocation.getter(#loading),
      ) as bool;

  @override
  double get progress =>
      super.noSuchMethod(Invocation.getter(#progress)) as double;

  @override
  void addListener(VoidCallback listener) => super.noSuchMethod(
        Invocation.method(#addListener, [listener]),
      );

  @override
  void removeListener(VoidCallback listener) => super.noSuchMethod(
        Invocation.method(#removeListener, [listener]),
      );

  @override
  bool get hasListeners => super.noSuchMethod(
        Invocation.getter(#hasListeners),
      ) as bool;

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(#notifyListeners, []),
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(#dispose, []),
      );

  @override
  Future<PackageId?> pickAndUpload() => super.noSuchMethod(
        Invocation.method(#pickAndUpload, []),
      ) as Future<PackageId?>;

  @override
  Future<PackageId> upload(PlatformFile file) => super.noSuchMethod(
        Invocation.method(#upload, [file]),
      ) as Future<PackageId>;

  @override
  set loading(bool loading) {}
}

class MockToastController extends Mock implements ToastController {
  @override
  Future<void> show(
    dynamic message, {
    BuildContext? context,
    Duration showFor = const Duration(seconds: 5),
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #show,
          [message],
          {#context: context, #showFor: showFor},
        ),
      ) as Future<void>;

  @override
  String parseObject(dynamic object) => super.noSuchMethod(
        Invocation.method(#parseObject, [object]),
      ) as String;
}

class MockPackageController extends Mock implements PackageController {
  @override
  Future<PackageResponse> getPackage(int id) => super.noSuchMethod(
        Invocation.method(#getPackage, [id]),
      ) as Future<PackageResponse>;
}

// And your fake:
class FakePackageListItem extends Fake implements PackageListItem {}

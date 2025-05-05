// test/upload_package_button_test.dart
// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:openquester/openquester.dart'
    show
        PackageController,
        PackageListItem,
        PackageUploadController,
        ToastController,
        UploadPackageButton;

import 'mock_controllers.dart';

void main() {
  final getIt = GetIt.instance;

  late MockPackageUploadController mockUploadCtrl;
  late MockToastController mockToastCtrl;
  late MockPackageController mockPackageCtrl;

  setUpAll(() {
    registerFallbackValue(FakePackageListItem());
  });

  setUp(() {
    mockUploadCtrl = MockPackageUploadController();
    mockToastCtrl = MockToastController();
    mockPackageCtrl = MockPackageController();

    // Register singletons
    getIt
      ..registerSingleton<PackageUploadController>(mockUploadCtrl)
      ..registerSingleton<ToastController>(mockToastCtrl)
      ..registerSingleton<PackageController>(mockPackageCtrl);
  });

  tearDown(getIt.reset);

  Future<void> pumpButton(
    WidgetTester tester, {
    void Function(PackageListItem)? afterUpload,
  }) {
    return tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: UploadPackageButton(afterUpload: afterUpload),
        ),
      ),
    );
  }

  testWidgets('does nothing when pickAndUpload returns null', (tester) async {
    when(() => mockUploadCtrl.loading).thenReturn(false);
    when(() => mockUploadCtrl.progress).thenReturn(0);
    when(() => mockUploadCtrl.pickAndUpload()).thenAnswer((_) async => null);

    var callbackCalled = false;
    await pumpButton(tester, afterUpload: (_) => callbackCalled = true);

    // Tap the button
    await tester.tap(find.byType(UploadPackageButton));
    await tester.pumpAndSettle();

    // pickAndUpload invoked, but toast NOT shown, callback NOT called
    verify(() => mockUploadCtrl.pickAndUpload()).called(1);
    verifyNever(() => mockToastCtrl.show(any()));
    expect(callbackCalled, isFalse);
  });

  testWidgets('shows toast and calls afterUpload on success', (tester) async {
    const uploadedId = 1;
    final fakePackage = FakePackageListItem();
    when(() => mockUploadCtrl.loading).thenReturn(false);
    when(() => mockUploadCtrl.progress).thenReturn(0);
    when(() => mockUploadCtrl.pickAndUpload())
        .thenAnswer((_) async => uploadedId);
    when(() => mockToastCtrl.show(any())).thenAnswer((_) async {});
    when(() => mockPackageCtrl.getPackage(uploadedId))
        .thenAnswer((_) async => fakePackage);

    PackageListItem? resultPkg;
    await pumpButton(tester, afterUpload: (pkg) => resultPkg = pkg);

    await tester.tap(find.byKey(const Key('upload_key')));
    await tester.pumpAndSettle();

    // Toast shown once
    verify(() => mockToastCtrl.show(any())).called(1);
    // afterUpload called with the package fetched
    expect(resultPkg, equals(fakePackage));
  });

  testWidgets('shows error toast when pickAndUpload throws', (tester) async {
    final exception = Exception('upload failed');
    when(() => mockUploadCtrl.loading).thenReturn(false);
    when(() => mockUploadCtrl.progress).thenReturn(0);
    when(() => mockUploadCtrl.pickAndUpload()).thenThrow(exception);
    when(() => mockToastCtrl.show(any())).thenAnswer((_) async {});

    await pumpButton(tester, afterUpload: (_) {});

    await tester.tap(find.byKey(const Key('upload_key')));
    await tester.pumpAndSettle();

    // Should show the exception message
    verify(() => mockToastCtrl.show(exception)).called(1);
  });

  testWidgets('displays progress percentage in label when loading',
      (tester) async {
    when(() => mockUploadCtrl.loading).thenReturn(true);
    when(() => mockUploadCtrl.progress).thenReturn(0.42);

    await pumpButton(tester);

    // The label should read something like "Upload Package 42 %"
    final textFinder = find.textContaining('%');
    expect(textFinder, findsOneWidget);

    // Optionally, verify the exact substring
    final textWidget = tester.widget<Text>(textFinder);
    expect(textWidget.data ?? '', contains('42'));
  });
}

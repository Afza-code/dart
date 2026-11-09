import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:praktikum_pekan_07/tugas_praktikum/main.dart';
import 'package:praktikum_pekan_07/tes_akhir/main.dart' show buildFooterPosko;

void main() {
  testWidgets('Halaman Info Transit menampilkan semua modul', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeTransit()));

    expect(find.text('Info Transit Kota Bandung'), findsOneWidget);
    expect(find.text('Terminal Kota Bandung'), findsOneWidget);
    expect(find.text('Operasional: 05.00 - 23.00'), findsOneWidget);
    expect(find.text('LANCAR'), findsOneWidget);
    expect(find.text('18 Bus Utama'), findsOneWidget);
    expect(find.text('6 LRT Feeder'), findsOneWidget);
    expect(find.text('LIVE CCTV'), findsOneWidget);
  });

  testWidgets('Footer posko tidak overflow di layar sempit', (tester) async {
    tester.view.physicalSize = const Size(320 * 3, 640 * 3);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: buildFooterPosko())),
    );
    expect(find.text('PANGGIL 112'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}

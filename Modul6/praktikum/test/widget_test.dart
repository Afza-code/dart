import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:modul6_praktikum/main.dart';

void main() {
  testWidgets('Kartu warga menampilkan data warga', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: KasusCitizenCard(
          namaWarga: 'Asep Ridwan',
          nik: '12344566789086',
          wilayah: 'coblong, kota bandung',
        ),
      ),
    );

    expect(find.text('KARTU IDENTITAS WARGA CERDAS'), findsOneWidget);
    expect(find.text('Nama Lengkap: Asep Ridwan'), findsOneWidget);
    expect(find.text('NIK: 12344566789086'), findsOneWidget);
    expect(find.text('Wilayah Dom.: coblong, kota bandung'), findsOneWidget);
  });
}

// Entry point proyek `flutter run`. Untuk menjalankan tiap bagian secara
// terpisah, gunakan -t, contoh:
//   flutter run -t lib/tugas_praktikum/main.dart
//   flutter run -t lib/tes_akhir/main.dart
import 'package:flutter/material.dart';

import 'tugas_praktikum/main.dart' as praktikum;

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Menu()));
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Pekan 7'),
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.directions_bus),
            title: const Text('Tugas Praktikum - Info Transit Kota Bandung'),
            subtitle: const Text('Soal 1 sampai Soal 4'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const praktikum.HomeTransit()),
            ),
          ),
        ],
      ),
    );
  }
}

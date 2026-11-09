import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KasusCitizenCard(
        namaWarga: 'Asep Ridwan',
        nik: '12344566789086',
        wilayah: 'coblong, kota bandung',
      ),
    ),
  );
}

class KasusCitizenCard extends StatelessWidget {
  final String namaWarga;
  final String nik;
  final String wilayah;

  const KasusCitizenCard({
    super.key,
    required this.namaWarga,
    required this.nik,
    required this.wilayah,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kasus 1: Kartu Warga Cerdas'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'KARTU IDENTITAS WARGA CERDAS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.indigo,
                  ),
                ),
                const Divider(thickness: 1.5),
                const SizedBox(height: 10),
                Text('Nama Lengkap: $namaWarga'),
                Text('NIK: $nik'),
                Text('Wilayah Dom.: $wilayah'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Kesimpulan: Operator ternary sangat efektif digunakan pada antarmuka Flutter untuk mengubah properti UI secara kondisional (seperti warna, ikon, teks, dan status tombol) berdasarkan perubahan nilai state boolean (misalnya status lampu menyala atau padam) secara reaktif.

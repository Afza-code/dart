import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Bandung Emergency 112'),
          backgroundColor: Colors.red.shade900,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeaderDarurat(),
              SizedBox(height: 24),
              buildBannerStatusKota(),
              SizedBox(height: 20),
              buildMenuLayanan(),
              SizedBox(height: 20),
              buildFooterPosko(),
            ],
          ),
        ),
      ),
    ),
  );
}

// 1. Header Aplikasi (Identitas Resmi Layanan Darurat)
Widget buildHeaderDarurat() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.red.shade900, Colors.red.shade600],
      ),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4)),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.emergency, color: Colors.white, size: 44),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CALL CENTER SIAGA 112',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Siaga 24 Jam Nonstop Kota Bandung',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// 2. Banner Status Kota (Stack & Positioned)
Widget buildBannerStatusKota() {
  return Padding(
    padding: EdgeInsets.only(top: 12),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: Colors.deepOrange,
                size: 28,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Peringatan Cuaca Ekstrem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade800,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Potensi hujan lebat disertai petir di Bandung Raya '
                      'sampai pukul 20.00 WIB. Warga diimbau waspada.',
                      style: TextStyle(fontSize: 12, color: Colors.brown),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red.shade700,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'SIAGA 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// 3. Menu Cepat 2 Layanan Utama (1 Baris x 2 Kolom)
Widget buildMenuLayanan() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Layanan Utama Kedauratan',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[800],
        ),
      ),
      SizedBox(height: 12),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _kartuLayanan(
              icon: Icons.medical_services,
              judul: 'Ambulans 119',
              deskripsi: 'Medis Darurat',
              warna: Colors.teal,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: _kartuLayanan(
              icon: Icons.fire_truck,
              judul: 'Damkar 113',
              deskripsi: 'Evakuasi Bencana',
              warna: Colors.orange,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _kartuLayanan({
  required IconData icon,
  required String judul,
  required String deskripsi,
  required Color warna,
}) {
  return Container(
    padding: EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: warna.withValues(alpha: 0.4)),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: warna, size: 28),
        SizedBox(height: 10),
        Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        SizedBox(height: 2),
        Text(
          deskripsi,
          style: TextStyle(fontSize: 11, color: Colors.grey[700]),
        ),
      ],
    ),
  );
}

// 4. Kontak Posko Komando Cepat (Anti-Overflow Footer Card)
Widget buildFooterPosko() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
      ],
    ),
    child: Row(
      children: [
        Icon(Icons.location_on, color: Colors.red.shade700),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            'Posko: Command Center Balai Kota Bandung',
            style: TextStyle(fontSize: 12, color: Colors.blueGrey[800]),
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {
            debugPrint('Warga memanggil call center 112');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            foregroundColor: Colors.white,
          ),
          child: Text('PANGGIL 112'),
        ),
      ],
    ),
  );
}

// Kesimpulan: header memakai Container bergradasi merah dengan Expanded agar
// teks aman di layar sempit, banner memakai Stack clipBehavior Clip.none agar
// lencana SIAGA 1 bisa keluar dari batas kartu, menu layanan memakai dua
// Expanded supaya lebar seimbang, dan alamat posko dibungkus Expanded agar
// tombol PANGGIL 112 tidak terdorong keluar layar.

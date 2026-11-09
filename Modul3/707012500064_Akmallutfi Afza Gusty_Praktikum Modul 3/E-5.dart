class warga {
  String nama;
  String nik;
  int umur;
  String statusBansos = "Belum mengajukan";

  warga({required this.nama, required this.nik, required this.umur});

  void ajukanBansos(int pendapatan) {
    if (pendapatan <= 2500000) {
      statusBansos = "Disetujui";
      print("Sistem : Pengajuan $nama DITERIMA");
    } else {
      statusBansos = "Ditolak";
      print("Sistem : pengajuan $nama DITOLAK (pendapatan melebihi batas).");
    }
  }

  void tampilData() {
    print("Nama : $nama, Status Bansos : $statusBansos");
  }
}

void main() {
  warga warga1 = warga(nama: "Asep Surasep", nik: "123456789", umur: 100);
  warga warga2 = warga(nama: "Rajuuu", nik: "123456712", umur: 80);

  print("==== PENGAJUAN BANSOS ====");
  warga1.ajukanBansos(1500000);
  warga2.ajukanBansos(5000000);

  print("==== DATA AKHIR ====");
  warga1.tampilData();
  warga2.tampilData();
}

// kesimpulan pada kode ini sama dengan kode senelumnya tetapi kode ini menerapkan tambahan percabangan dengan menggunakan if else

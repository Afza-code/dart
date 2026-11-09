class warga {
  String? nama;
  String? nik;

  void tampilData() {
    print("===Data Warga Baru===");

    print("Nama Warga : $nama");
    print("Nik Warga : $nik");
  }
}

void main() {
  warga warga1 = warga();

  warga1.nama = "Asep Surasep";
  warga1.nik = "123456789";

  warga1.tampilData();
}

// Kesimpulan :

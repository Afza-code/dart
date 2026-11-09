class warga {
  String nama;
  String nik;
  int umur;

  warga({required this.nama, required this.nik, required this.umur});

  void tampilData() {
    print("Nama : $nama, NIK : $nik, Umur : $umur");
  }
}

void main() {
  warga warga1 = warga(nama: "Asep Surasep", nik: "123456789", umur: 12);
  warga warga2 = warga(nama: "Udin", nik: "123412789", umur: 21);
  warga warga3 = warga(nama: "Komeng", nik: "121236789", umur: 45);

  print("====== Data Warga Terdaftar ======");
  warga1.tampilData();
  warga2.tampilData();
  warga3.tampilData();
}

// kesimpulan : kode ini menggunakan konsep oop dengan constructor sehingga lebih mudah untuk perawatan dan penambahan kode

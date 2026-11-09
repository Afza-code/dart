class warga {
  String? nama;
  String? nik;
}

void main() {
  warga warga1 = warga();

  warga1.nik = "12345566789";
  warga1.nama = "Asep Surasep";

  print("-----Data Warga-----");
  print("Nama Warga : ${warga1.nama}");
  print("Nik Warga : ${warga1.nik}");
}

// kesimpulan dari praktikum ini adalah : pada kode ini belum menerapkan konsep oop dengan constructor sehingga kode lebih panjang jika ada penambahan data

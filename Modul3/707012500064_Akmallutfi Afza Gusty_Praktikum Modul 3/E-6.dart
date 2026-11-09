class warga {
  String nama;
  String nik;
  int umur;
  String statusBansos = "Belum mengajukan";

  warga({required this.nama, required this.nik, required this.umur});

  void tampilData() {
    print("Nama : $nama, NiK : $nik, Umur : $umur");
  }
}

void main() {
  warga warga1 = warga(nama: "Asep Surasep", nik: "123456789", umur: 100);
  warga warga2 = warga(nama: "Rajuuu", nik: "123456712", umur: 80);

  List<warga> dataBase = [];

  dataBase.add(warga1);
  dataBase.add(warga2);

  dataBase.add(warga(nama: "Udin", nik: "12348689", umur: 18));
  dataBase.add(warga(nama: "Komeng", nik: "12333689", umur: 8));
  dataBase.add(warga(nama: "Zekzong", nik: "124444689", umur: 56));

  print("==== DATABASE WARGA ====");
  print("Total penduduk : ${dataBase.length} orang\n");

  for (warga w in dataBase) {
    w.tampilData();
  }
}

// kesimpulan: Dengan menggabungkan konsep oop dengan constructor membuat kode menjadi lebih bersih dan mudah untuk di kelola jika ada panambahan data.

class Pasien {
  String nama;

  Pasien(this.nama);
}

class Ruangtunggu {
  String namaRuang;

  List<Pasien> daftarAntean = [];

  Ruangtunggu(this.namaRuang);

  void tambahPasien(Pasien pasienBaru) {
    daftarAntean.add(pasienBaru);

    print("Pasien ${pasienBaru.nama}, masuk ke antrean $namaRuang.");
  }
}

void main() {
  var pasien1 = Pasien("Caca");
  var pasien2 = Pasien("Doni");

  var poliGigi = Ruangtunggu("Poli Gigi");

  poliGigi.tambahPasien(pasien1);
  poliGigi.tambahPasien(pasien2);
}

// Penjelasan: Program ini mendemonstrasikan composition (komposisi / hubungan has-a). Kelas Ruangtunggu memiliki objek Pasien di dalam List daftarAntean melalui method tambahPasien(), sehingga ruang tunggu "memiliki" pasien tanpa mewarisi kelas Pasien.

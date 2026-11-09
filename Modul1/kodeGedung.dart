void main() {
  Map<String, String> kamusGedung = {
    "TULT": "Telkom Landmark Tower",
    "FIT": "Fakultas Ilmu Terapan",
    "GSG": "Gedung Serba Guna",
  };

  kamusGedung["GKU"] = "Gedung Kuliah Umum";

  kamusGedung["TULT"] = "Telkom University Landmark Tower";

  kamusGedung.remove("GSG");

  print("Lokasi Ujian Anda di : ${kamusGedung['TULT']}");
  print("Daftar Gedung Yang Aktif : $kamusGedung");
}

// pada kode ini menggunakan Map karna ada beberapa type data yang di pakai
// kemudian baris 8 untuk menambah gedung
// baris 10 untuk merubah nama yang ada di index
// baris 12 untuk menghapus index berdasarkan nama indexnya.

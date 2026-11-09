void main() {
  List<String> pendaftarKasar = ["Andi", "Budi", "Citra", "Andi", "Budi"];
  print("Total pendaftar awal : ${pendaftarKasar.length}");

  Set<String> pendaftarBersih = pendaftarKasar.toSet();
  print("Total pendaftar valid : ${pendaftarBersih.length}");
}

// pada kode pertama menggunakan List, kemudian di konversi ke Set dengan mengguanakn toSet()
// karna untuk memilih nama yang sama

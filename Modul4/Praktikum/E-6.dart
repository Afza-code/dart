class LogRekamMedis {
  void catat() => print("Menulis Log perkembangan detak jantung pasien");
}

class KamarInap {
  String nomorKamar;

  late LogRekamMedis logHarian;

  KamarInap(this.nomorKamar) {
    logHarian = LogRekamMedis();

    print("Kamar $nomorKamar diaktifkan. Buku rekam medis otomatis dibuat");
  }

  void kunjunganDokter() {
    print("\nDokter mengunjungi kamar $nomorKamar");
    logHarian.catat();
  }
}

void main() {
  var kamar202 = KamarInap("202");

  kamar202.kunjunganDokter();
}

// Penjelasan: Program ini mendemonstrasikan composition dengan kata kunci late. Kelas KamarInap menyusun objek LogRekamMedis yang dibuat di dalam constructor (inisialisasi dilakukan saat objek kamar dibuat), lalu objek tersebut digunakan pada method kunjunganDokter() untuk mencatat log.

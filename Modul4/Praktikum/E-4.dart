class PegawaiRS {
  String nama;

  PegawaiRS(this.nama);
  void bekerja() => print("$nama melakukan tugas rumah sakit");
}

class Dokter extends PegawaiRS {
  String spesialisasi;

  Dokter(super.nama, this.spesialisasi);

  @override
  void bekerja() {
    print("Dokter $nama sedang memeriksa pasien di poli $spesialisasi");
  }
}

class Perawat extends PegawaiRS {
  Perawat(super.nama);

  @override
  void bekerja() {
    print("Perawat $nama sedang berkeliling mengecek infus pasien");
  }
}

void main() {
  var dokter1 = Dokter("Budi", "Saraf");
  dokter1.bekerja();

  var perawat1 = Perawat("Siti");
  perawat1.bekerja();
}

// Penjelasan: Program ini mendemonstrasikan inheritance dan polymorphism (polimorfisme). Method bekerja() pada superclass PegawaiRS di-override (@override) oleh subclass Dokter dan Perawat dengan implementasi berbeda, sehingga pemanggilan method yang sama menghasilkan perilaku sesuai tipe objeknya.

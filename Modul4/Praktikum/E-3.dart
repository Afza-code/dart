class PegawaiRS {
  String nama;
  String idPegawai;

  PegawaiRS(this.nama, this.idPegawai);

  void info() => print("Pegawai : $nama (ID : $idPegawai)");
}

class Dokter extends PegawaiRS {
  String spesialisasi;

  Dokter(super.nama, super.idPegawai, this.spesialisasi);
}

class Perawat extends PegawaiRS {
  String shiftJaga;

  Perawat(super.nama, super.idPegawai, this.shiftJaga);
}

void main() {
  var dokter1 = Dokter("Budi", "D-1", "Penyakit Dalam");
  dokter1.info();

  var perawat1 = Perawat("Siti", "P-1", "Siang");
  perawat1.info();
}

// Penjelasan: Program ini mendemonstrasikan inheritance (pewarisan) dengan kata kunci extends. Kelas Dokter dan Perawat merupakan subclass dari PegawaiRS (superclass) sehingga mewarisi atribut nama, idPegawai, dan method info(). Constructor superclass dipanggil menggunakan super.nama dan super.idPegawai.

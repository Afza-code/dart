import 'dart:io';

class Pasien {
  String nama;
  int _umur;

  Pasien(this.nama, this._umur);

  int get bacaUmur => _umur;

  set ubahUmur(int nilai) {
    if (nilai >= 0) {
      _umur = nilai;
    } else {
      print("Error : Umur tidak bisa bernilai negatif!");
      _umur = 0;
    }
  }
}

void main() {
  print("=== Pendaftaran Pasien ===");
  stdout.write("Masukkan nama pasien : ");
  String inputNama = stdin.readLineSync() ?? "";
  stdout.write("Masukkan umur : ");
  int inputUmur = int.parse(stdin.readLineSync() ?? "0");
  var pasienBaru = Pasien(inputNama, 0);

  pasienBaru.ubahUmur = inputUmur;

  print("==== Data tersimpan ====");
  print("Nama : ${pasienBaru.nama}, Umur : ${pasienBaru.bacaUmur} tahun");
}

// Penjelasan: Program pendaftaran pasien yang menggunakan enkapsulasi (encapsulation). Atribut _umur bersifat private dan diakses melalui getter (bacaUmur) serta setter (ubahUmur) yang memvalidasi agar umur tidak bernilai negatif.

void main() {
  String? namaMahasiswa;
  int? nimMahasiswa;

  String tampilNama = namaMahasiswa ?? "Anonim";
  int tampilNim = nimMahasiswa ?? 0;

  print("Nim : $tampilNim");
  print("Nama Mahasiswa : $tampilNama");
}

// pada buku tamu menggunakan safety null menggunakan ?
// null coalescing menggunakan simbol ??

void main() {
  Set<String> pengurusHimpunan = {"Andi", "Budi", "Citra", "Dina"};
  Set<String> pesertaLomba = {"Eko", "Andi", "Citra", "Fajar"};

  Set<String> beasiswa = pengurusHimpunan.intersection(pesertaLomba);

  Set<String> seluruhMahasiswaAktif = pengurusHimpunan.union(pesertaLomba);

  print("Mahasiswa yang diajukan beasiswa : $beasiswa");

  print("Total Mahasiswa : ${seluruhMahasiswaAktif.length}");
}

// kode ini menggunakan set untuk memilih nama index yang sama agar tidak ada nama index yang sama
// interxection untuk memilih yang ada di kedua set
// onion untuk semua

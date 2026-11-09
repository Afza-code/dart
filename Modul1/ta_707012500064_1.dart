import 'dart:collection';

void main() {
  String? namaMhs;
  String tampilNama = namaMhs ?? "Mahasisawa Anonim";

  Queue<String> pelapor = Queue<String>();

  pelapor.add("Andi");
  pelapor.add("Budi");
  pelapor.add("Citra");
  pelapor.add(tampilNama);

  print("Pelapor Awal : $pelapor");

  pelapor.removeFirst();
  print("Laporan Andi. Pelapor saat ini: $pelapor");

  try {
    validasilaporan("AC mati");
  } catch (e) {
    print("Pelaporan gagal");
    print("Pesan Error: $e");
  }

  print(cekPrioritas("Listrik Mati"));
}

String cekPrioritas(String jenisKerusakan) {
  if (jenisKerusakan == "Listrik Mati") {
    return ("Prioritas Tinggi (1 hari)");
  } else {
    return ("Prioritas Normal (3 hari)");
  }
}

validasilaporan(String deskripsi) {
  if (deskripsi.length < 10) {
    throw Exception("Deskripsi terlalu singkat");
  }
}

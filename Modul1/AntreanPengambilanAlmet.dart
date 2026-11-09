import 'dart:collection';

void main() {
  Queue<String> antreanAlmet = Queue<String>();

  antreanAlmet.add("Andi");
  antreanAlmet.add("Budi");
  antreanAlmet.add("Citra");

  print("Antrean Awal : $antreanAlmet");

  antreanAlmet.removeFirst();
  print("Andi selesai dilayani. Antrean saat ini: $antreanAlmet");

  antreanAlmet.add("Dina");
  print("Dina ikut mengantre. Antrean akhir: $antreanAlmet");
}

// pada pengambilan almet menggunakan queue untuk memudah kan input data ke database.

void main() {
  String inputAngkatan = "Dua Puluh Tiga";

  try {
    int angkatanValid = int.parse(inputAngkatan);
    print("Tahun Angkatan berhasil disimpan : $angkatanValid");
  } on FormatException catch (e) {
    print("Input angkatan harus berupa angkat!");
    print("Pesan Sistem:$e");
  } finally {
    print("Sistem Selesai Melakukan Pengecekan form pendaftaran.");
  }
}

class warga {
  String nama;
  String nik;
  int umur;

  warga(this.nama, this.nik, this.umur);

  void tampilData() {
    print("Nama : $nama, NIK : $nik, Umur : $umur");
  }
}

void main() {
  warga warga1 = warga("Asep Surasep", "1234567789", 90);
  warga warga2 = warga("Komeng", "1234567721", 30);
  warga warga3 = warga("Udin", "1234561389", 15);

  print("==== Data Warga Terdaftar ====");
  warga1.tampilData();
  warga2.tampilData();
  warga3.tampilData();
}

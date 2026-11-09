double hitungDiskon(int totalBelanja) {
  if (totalBelanja >= 100000) {
    return totalBelanja * 0.1;
  } else {
    return 0.0;
  }
}

void main() {
  int belanjaSaya = 150000;

  double potonganHarga = hitungDiskon(belanjaSaya);

  print("Total belanja : Rp $belanjaSaya");
  print("Diskon yang didapat : Rp $potonganHarga");
}

// pada kode ini menggunakan fungsi doubel "hitungDiskon" yang berfungsi menghitung diskon yang didapat oleh pelanggan. jika total belanja lebih dari atau sama dengan 100000 maka totalBelanja akan di kali dengan 0.1, jika tidak maka tidak.

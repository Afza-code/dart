class KasirRSUD {
  String namaPetugas;
  double _totalPendapatan;

  KasirRSUD(this.namaPetugas, this._totalPendapatan);

  double get cekPendapatan => _totalPendapatan;

  set bayarTagihan(double nominal) {
    if (nominal > 0) {
      _totalPendapatan += nominal;
      print("Pembayaran Rp$nominal berhasil masuk ke sistem!");
    } else {
      print("Error : Nominal pembayaran tidak valid");
    }
  }
}

void main() {
  var kasirShift = KasirRSUD("Siti", 0);
  print("Pendapatan awal: ${kasirShift.cekPendapatan}");

  kasirShift.bayarTagihan = -50000;
  kasirShift.bayarTagihan = 100000;

  print("Pendapatan setelah pembayaran : Rp${kasirShift.cekPendapatan}");
}

// Penjelasan: Program kasir rumah sakit yang menggunakan getter (cekPendapatan) dan setter (bayarTagihan) untuk mengakses serta memvalidasi data private _totalPendapatan. Setter menolak nominal pembayaran yang tidak valid (<= 0), sehingga data hanya bisa diubah melalui logika yang terkontrol.

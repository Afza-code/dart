class sensorUdara {
  String lokasi;
  int indeksAQI;
  String statusKualiatas = "Belum dianalisa";

  sensorUdara({required this.lokasi, required this.indeksAQI});

  void analisisUdara() {
    if (indeksAQI <= 50) {
      statusKualiatas = "Udara Bersih";
    } else {
      statusKualiatas = "Polusi, Wajib Masker!";
    }
  }

  void cetakLaporan() {
    print("Lokasi : $lokasi | AQI : $indeksAQI | Status : $statusKualiatas");
  }
}

void main() {
  sensorUdara s1 = sensorUdara(lokasi: "Ciganitri", indeksAQI: 90);
  sensorUdara s2 = sensorUdara(lokasi: "Bojong", indeksAQI: 100);

  List<sensorUdara> sensor = [];

  sensor.add(s1);
  sensor.add(s2);

  sensor.add(sensorUdara(lokasi: "Alun - alun", indeksAQI: 85));
  sensor.add(sensorUdara(lokasi: "Dago", indeksAQI: 30));
  sensor.add(sensorUdara(lokasi: "Pasar Gedebage", indeksAQI: 120));

  for (sensorUdara s in sensor) {
    s.analisisUdara();
    s.cetakLaporan();
  }
}

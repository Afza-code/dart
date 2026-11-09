import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Kasus2PassengerCounter(),
    ),
  );
}

class Kasus2PassengerCounter extends StatefulWidget {
  const Kasus2PassengerCounter({super.key});

  @override
  State<Kasus2PassengerCounter> createState() => Kasus2PassengerCounterState();
}

class Kasus2PassengerCounterState extends State<Kasus2PassengerCounter> {
  int jumlahPenumpang = 0;
  final int kapasitasMaksimal = 15;

  void _tambahPenumpang() {
    setState(() {
      if (jumlahPenumpang < kapasitasMaksimal) {
        jumlahPenumpang++;
      }
    });
  }

  void _kurangPenumpang() {
    setState(() {
      if (jumlahPenumpang > 0) {
        jumlahPenumpang--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isPenuh = jumlahPenumpang >= kapasitasMaksimal;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kasus 2: Counter Okupansi Halte'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Jumlah Penumpang di Halte:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              '$jumlahPenumpang / $kapasitasMaksimal',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: isPenuh ? Colors.red : Colors.indigo,
              ),
            ),
            if (isPenuh)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'PERINGATAN: Halte Penuh!',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _kurangPenumpang,
                  icon: const Icon(Icons.remove),
                  label: const Text('Keluar'),
                ),
                const SizedBox(width: 15),
                ElevatedButton.icon(
                  onPressed: _tambahPenumpang,
                  icon: const Icon(Icons.add),
                  label: const Text('Masuk'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Kesimpulan: StatefulWidget dikombinasikan dengan fungsi setState() memungkinkan aplikasi memperbarui data numerik secara dinamis (seperti menambah atau mengurangi jumlah penumpang), di mana perubahan state tersebut secara otomatis memicu penyegaran (rebuild) tampilan di layar.

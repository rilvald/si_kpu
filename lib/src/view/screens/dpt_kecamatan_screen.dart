import 'package:flutter/material.dart';
import '../../models/kecamatan.dart';
import 'kecamatan_detail_screen.dart';

class DptKecamatanScreen extends StatefulWidget {
  const DptKecamatanScreen({super.key});

  @override
  State<DptKecamatanScreen> createState() => _DptKecamatanScreenState();
}

class _DptKecamatanScreenState extends State<DptKecamatanScreen> {
  final List<Kecamatan> kecamatanDetails = [
    Kecamatan(
      nama: 'Kecamatan Banjarwangi',
      imagePath: 'assets/images/banjarwangi.jpg',
      jumlahDesa: 5,
      jumlahTps: 4,
      banyakKk: 20,
      banyakLakiLaki: 50,
      banyakPerempuan: 40,
      lokasiUrl:
          'https://goo.gl/maps/5HPSd37dtzCcPxvH6', // Ganti dengan URL lokasi yang sesuai
    ),
    Kecamatan(
      nama: 'Kecamatan 2',
      imagePath: 'assets/images/kecamatan2.jpg',
      jumlahDesa: 7,
      jumlahTps: 6,
      banyakKk: 25,
      banyakLakiLaki: 60,
      banyakPerempuan: 55,
      lokasiUrl: 'https://lokasi-kecamatan2.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DPT Kecamatan'),
      ),
      body: ListView.builder(
        itemCount: kecamatanDetails.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              kecamatanDetails[index].nama,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  kecamatanDetails[index].imagePath,
                  width: double.infinity, // Ukuran foto ke samping
                  height: 200, // Ketinggian foto
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text('Jumlah Desa: ${kecamatanDetails[index].jumlahDesa}'),
                const Divider(),
                Text('Jumlah TPS: ${kecamatanDetails[index].jumlahTps}'),
                const Divider(), // Pemisah antar teks
                Text('Banyak KK: ${kecamatanDetails[index].banyakKk}'),
                const Divider(),
                Text(
                    'Banyak Laki-Laki: ${kecamatanDetails[index].banyakLakiLaki}'),
                const Divider(),
                Text(
                    'Banyak Perempuan: ${kecamatanDetails[index].banyakPerempuan}'),
                const Divider(),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Navigasi ke link lokasi
                  },
                  child: Text(
                    'Lokasi: ${kecamatanDetails[index].lokasiUrl}',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              _navigateToDetail(context, kecamatanDetails[index]);
            },
          );
        },
      ),
    );
  }

  void _navigateToDetail(BuildContext context, Kecamatan detail) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KecamatanDetailScreen(detail: detail),
      ),
    );
  }
}

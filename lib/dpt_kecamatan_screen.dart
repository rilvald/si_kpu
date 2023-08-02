import 'package:flutter/material.dart';
import 'kecamatan_detail_screen.dart';

class KecamatanDetail {
  final String nama;
  final String imagePath;
  final int jumlahDesa;
  final int jumlahTps;
  final int banyakKk;
  final int banyakLakiLaki;
  final int banyakPerempuan;
  final String lokasiUrl;

  KecamatanDetail({
    required this.nama,
    required this.imagePath,
    required this.jumlahDesa,
    required this.jumlahTps,
    required this.banyakKk,
    required this.banyakLakiLaki,
    required this.banyakPerempuan,
    required this.lokasiUrl,
  });
}

class DptKecamatanScreen extends StatelessWidget {
  final List<KecamatanDetail> kecamatanDetails = [
    KecamatanDetail(
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
    KecamatanDetail(
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
        title: Text('DPT Kecamatan'),
      ),
      body: ListView.builder(
        itemCount: kecamatanDetails.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              kecamatanDetails[index].nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                SizedBox(height: 10),
                Text('Jumlah Desa: ${kecamatanDetails[index].jumlahDesa}'),
                Divider(),
                Text('Jumlah TPS: ${kecamatanDetails[index].jumlahTps}'),
                Divider(), // Pemisah antar teks
                Text('Banyak KK: ${kecamatanDetails[index].banyakKk}'),
                Divider(),
                Text(
                    'Banyak Laki-Laki: ${kecamatanDetails[index].banyakLakiLaki}'),
                Divider(),
                Text(
                    'Banyak Perempuan: ${kecamatanDetails[index].banyakPerempuan}'),
                Divider(),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Navigasi ke link lokasi
                  },
                  child: Text(
                    'Lokasi: ${kecamatanDetails[index].lokasiUrl}',
                    style: TextStyle(
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

  void _navigateToDetail(BuildContext context, KecamatanDetail detail) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KecamatanDetailScreen(detail: detail),
      ),
    );
  }
}

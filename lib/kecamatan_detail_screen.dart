import 'package:flutter/material.dart';

import 'dpt_kecamatan_screen.dart';

class KecamatanDetailScreen extends StatelessWidget {
  final KecamatanDetail detail;

  KecamatanDetailScreen({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kecamatan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              detail.imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Nama Kecamatan: ${detail.nama}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text('Jumlah Desa: ${detail.jumlahDesa}'),
            Text('Jumlah TPS: ${detail.jumlahTps}'),
            Divider(),
            Text('Banyak KK: ${detail.banyakKk}'),
            Text('Banyak Laki-Laki: ${detail.banyakLakiLaki}'),
            Text('Banyak Perempuan: ${detail.banyakPerempuan}'),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Lokasi: ${detail.lokasiUrl}',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

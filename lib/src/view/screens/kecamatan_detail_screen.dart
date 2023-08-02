import 'package:flutter/material.dart';

import '../../models/kecamatan.dart';

class KecamatanDetailScreen extends StatelessWidget {
  final Kecamatan detail;

  const KecamatanDetailScreen({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Kecamatan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              detail.imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              'Nama Kecamatan: ${detail.nama}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Text('Jumlah Desa: ${detail.jumlahDesa}'),
            Text('Jumlah TPS: ${detail.jumlahTps}'),
            const Divider(),
            Text('Banyak KK: ${detail.banyakKk}'),
            Text('Banyak Laki-Laki: ${detail.banyakLakiLaki}'),
            Text('Banyak Perempuan: ${detail.banyakPerempuan}'),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Lokasi: ${detail.lokasiUrl}',
                style: const TextStyle(
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

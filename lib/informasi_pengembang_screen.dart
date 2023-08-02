import 'package:flutter/material.dart';

class InformasiPengembangScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Pengembang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              // Ganti sumber foto profil sesuai kebutuhan
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Moh Rival Dzulkhomzah',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'NPM: 2006114',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Jurusan: Teknik Informatika',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Angkatan: 2020',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

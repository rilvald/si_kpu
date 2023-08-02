import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import package url_launcher

class CekDptOnlineScreen extends StatelessWidget {
  final String cekDptUrl = 'https://cekdptonline.kpu.go.id/';

  const CekDptOnlineScreen({super.key});

  Future<void> _launchURL() async {
    if (await canLaunch(cekDptUrl)) {
      await launch(cekDptUrl);
    } else {
      throw 'Tidak dapat membuka URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek DPT Online'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Cek DPT Online',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Cek apakah Anda telah berhak menjadi pemilih tetap',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _launchURL,
              child: const Text('Cek DPT Online'),
            ),
          ],
        ),
      ),
    );
  }
}

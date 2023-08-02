import 'package:flutter/material.dart';

class OdpTeamScreen extends StatelessWidget {
  const OdpTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ODP Team'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tim Pengembang Aplikasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '1. Moh Rival Dzulkhomzah (NPM 2006114)',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '2. Nama Anggota 2 (NPM ...)',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '3. Nama Anggota 3 (NPM ...)',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

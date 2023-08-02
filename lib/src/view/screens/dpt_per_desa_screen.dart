import 'package:flutter/material.dart';

class DptDesaScreen extends StatelessWidget {
  const DptDesaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DPT Per Desa'),
      ),
      body: const Center(
        child: Text('Halaman DPT Per Desa'),
      ),
    );
  }
}

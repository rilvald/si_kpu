import 'package:flutter/material.dart';

class DptGenerasiScreen extends StatelessWidget {
  const DptGenerasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DPT Per Generasi'),
      ),
      body: const Center(
        child: Text('Halaman DPT Per Generasi'),
      ),
    );
  }
}

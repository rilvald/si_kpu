import 'package:flutter/material.dart';

class RegulasiScreen extends StatelessWidget {
  const RegulasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regulasi'),
      ),
      body: const Center(
        child: Text('Halaman Regulasi'),
      ),
    );
  }
}

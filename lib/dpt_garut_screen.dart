import 'package:flutter/material.dart';

class DptGarutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DPT Garut'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildSubMenu(context, 'Pemilih Aktif', Icons.check_circle_outline),
          _buildSubMenu(context, 'Pemilih TMS', Icons.highlight_off),
          _buildSubMenu(context, 'Pemilih Baru', Icons.person_add),
          _buildSubMenu(context, 'Pemilih Ubah', Icons.edit),
          _buildSubMenu(
              context, 'Pemilih Disabilitas', Icons.accessibility_new),
          _buildSubMenu(context, 'Infografik DPT', Icons.insert_chart),
        ],
      ),
    );
  }

  Widget _buildSubMenu(BuildContext context, String title, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Tambahkan logika untuk setiap sub-menu di sini
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 60),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

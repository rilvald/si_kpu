import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'regulasi_screen.dart';
import 'cek_dpt_online_screen.dart';
import 'dpt_dapil_screen.dart';
import 'dpt_garut_screen.dart';
import 'dpt_generasi_screen.dart';
import 'dpt_kecamatan_screen.dart';
import 'dpt_per_desa_screen.dart';
import 'dpt_tps_screen.dart';
import 'informasi_pengembang_screen.dart';
import 'odp_team_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SI KPU Dashboard'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Switch(
                value: Theme.of(context).brightness == Brightness.dark,
                onChanged: (value) async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool('darkMode', value);
                },
              ),
              Text('Mode Gelap'),
              SizedBox(width: 16),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                _buildMenuItem(
                    context, 'DPT Garut', Icons.people, DptGarutScreen()),
                _buildMenuItem(context, 'DPT Kecamatan', Icons.people_outline,
                    DptKecamatanScreen()),
                _buildMenuItem(context, 'DPT Per Desa', Icons.location_city,
                    DptDesaScreen()),
                _buildMenuItem(context, 'DPT Per Generasi', Icons.people_alt,
                    DptGenerasiScreen()),
                _buildMenuItem(context, 'DPT Per Dapil', Icons.location_on,
                    DptDapilScreen()),
                _buildMenuItem(context, 'Cek DPT Online', Icons.search,
                    CekDptOnlineScreen()),
                _buildMenuItem(
                    context, 'Regulasi', Icons.description, RegulasiScreen()),
                _buildMenuItem(
                    context, 'DPT Per TPS', Icons.location_pin, DptTpsScreen()),
                _buildMenuItem(context, 'Informasi Pengembang',
                    Icons.developer_board, InformasiPengembangScreen()),
                _buildMenuItem(
                    context, 'ODP Team', Icons.group, OdpTeamScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
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

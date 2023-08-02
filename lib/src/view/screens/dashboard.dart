import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:si_kpu/src/view/blocs/cubit/dark_mode_cubit.dart';

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
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SI KPU Dashboard'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<DarkModeCubit, bool>(
                builder: (context, state) {
                  return Switch(
                    value: state,
                    onChanged: (value) async {
                      context.read<DarkModeCubit>().changeMode(value);
                    },
                  );
                },
              ),
              const Text('Mode Gelap'),
              const SizedBox(width: 16),
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                _buildMenuItem(
                    context, 'DPT Garut', Icons.people, const DptGarutScreen()),
                _buildMenuItem(context, 'DPT Kecamatan', Icons.people_outline,
                    const DptKecamatanScreen()),
                _buildMenuItem(context, 'DPT Per Desa', Icons.location_city,
                    const DptDesaScreen()),
                _buildMenuItem(context, 'DPT Per Generasi', Icons.people_alt,
                    const DptGenerasiScreen()),
                _buildMenuItem(context, 'DPT Per Dapil', Icons.location_on,
                    const DptDapilScreen()),
                _buildMenuItem(context, 'Cek DPT Online', Icons.search,
                    const CekDptOnlineScreen()),
                _buildMenuItem(context, 'Regulasi', Icons.description,
                    const RegulasiScreen()),
                _buildMenuItem(context, 'DPT Per TPS', Icons.location_pin,
                    const DptTpsScreen()),
                _buildMenuItem(context, 'Informasi Pengembang',
                    Icons.developer_board, const InformasiPengembangScreen()),
                _buildMenuItem(
                    context, 'ODP Team', Icons.group, const OdpTeamScreen()),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 60),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

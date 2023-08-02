import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:si_kpu/src/view/blocs/cubit/dark_mode_cubit.dart';

import 'src/view/screens/dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeCubit, bool>(
      builder: (context, state) {
        return MaterialApp(
          title: 'SI KPU App',
          themeMode: state ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          darkTheme: ThemeData.dark(),
          home: const DashboardScreen(),
        );
      },
    );
  }
}

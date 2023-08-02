import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import shared_preferences

import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        final prefs = snapshot.data as SharedPreferences;

        bool isDarkMode = prefs.getBool('darkMode') ??
            false; // Jika null, gunakan false sebagai default

        return MaterialApp(
          title: 'SI KPU App',
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: DashboardScreen(),
        );
      },
    );
  }
}

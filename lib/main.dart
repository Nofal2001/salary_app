import 'package:flutter/material.dart';
import 'package:jsalary_manager/screens/home_screen.dart';
import 'package:jsalary_manager/services/settings_service.dart';
import 'package:jsalary_manager/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SettingsService.init(); // Ensure SharedPreferences is initialized
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Georgina Stone Salary App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const HomeScreen(), // 👈 Update check now handled in HomeScreen
    );
  }
}

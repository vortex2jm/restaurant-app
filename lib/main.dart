import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/app_theme.dart';
import 'package:tech_taste/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Taste',
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}

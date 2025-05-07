import 'package:flutter/material.dart';
import 'package:sebha/screens/home.dart';
import 'package:sebha/utils/theme/app_theme.dart';

void main() {
  runApp(const Sebha());
}
class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
import 'package:campus_complaint/pages/landing_page.dart';
import 'package:campus_complaint/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.customThemeData(),
      home: LandingPage(),
    );
  }
}

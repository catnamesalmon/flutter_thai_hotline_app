import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splash_screen_ui.dart';

void main() => runApp(const ThaiHotlineApp());

class ThaiHotlineApp extends StatelessWidget {
  const ThaiHotlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF244568)),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xFFE1E1E1),
        foregroundColor: Colors.black87,
        surfaceTintColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      title: 'สายด่วน THAILAND',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        textTheme: GoogleFonts.kanitTextTheme(theme.textTheme),
      ),
      home: const SplashScreenUI(),
    );
  }
}
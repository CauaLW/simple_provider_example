import 'package:flutter/material.dart';

class ThemeService {
  ThemeService._();

  static const Color _lightSeedColor = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _lightSeedColor, brightness: Brightness.light),
  );

  static const Color _darkSeedColor = Colors.black;

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _darkSeedColor, brightness: Brightness.dark),
  );
}

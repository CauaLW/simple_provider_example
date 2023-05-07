import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Starts the app in dark mode
  bool isDarkMode = true;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}

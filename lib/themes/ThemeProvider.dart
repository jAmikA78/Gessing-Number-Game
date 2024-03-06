import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';
import 'package:gessing_numbers_game/themes/dark/DarkMode.dart';
import 'package:gessing_numbers_game/themes/light/LightMode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = (themIdx == 1) ? lightMode : darkMode;
  ThemeData get themeData => _themeData;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

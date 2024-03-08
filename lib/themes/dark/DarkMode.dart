import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/themes/dark/widgets/AppBar.dart';
import 'package:gessing_numbers_game/themes/dark/widgets/ElevatedButton.dart';
import 'package:gessing_numbers_game/themes/dark/widgets/Text.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: appBarTheme,
  colorScheme: const ColorScheme.dark(
    background: Color.fromARGB(255, 91, 91, 91),
  ),
  elevatedButtonTheme: elevatedButtonThemeData,
  textTheme: textTheme,
);

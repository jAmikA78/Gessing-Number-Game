import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/themes/light/widgets/AppBar.dart';
import 'package:gessing_numbers_game/themes/light/widgets/ElevatedButton.dart';
import 'package:gessing_numbers_game/themes/light/widgets/Text.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: appBarTheme,
  colorScheme: ColorScheme.light(
    background: Colors.amber.shade100,
  ),
  elevatedButtonTheme: elevatedButtonThemeData,
  textTheme: textTheme,
);
